const datenbank = require("./db/datenbank");

const punktarten = { zutat: "zutaten", schritt: "schritte", tipp: "tipps" };

const alleRezepteAbfragen = datenbank.prepare("SELECT * FROM Rezept ORDER BY id");
const rezeptAbfragen = datenbank.prepare("SELECT * FROM Rezept WHERE id = ?");
const schutzzieleAbfragen = datenbank.prepare(`
    SELECT Schutzziel.kuerzel
    FROM RezeptSchutzziel
    JOIN Schutzziel ON Schutzziel.id = RezeptSchutzziel.schutzzielId
    WHERE RezeptSchutzziel.rezeptId = ?
    ORDER BY Schutzziel.id
`);
const punkteAbfragen = datenbank.prepare(`
    SELECT art, text FROM Rezeptpunkt WHERE rezeptId = ? ORDER BY position, id
`);
const linksAbfragen = datenbank.prepare(`
    SELECT titel, url FROM Link WHERE rezeptId = ? ORDER BY position, id
`);

const rezeptEinfuegen = datenbank.prepare(`
    INSERT INTO Rezept (name, kurztext, slogan, definition, skizzePfad, skizzeAlt, skizzeText, erstelltAm)
    VALUES (?, ?, ?, ?, ?, ?, ?, ?)
`);
const schutzzielZuordnen = datenbank.prepare(`
    INSERT INTO RezeptSchutzziel (rezeptId, schutzzielId) VALUES (?, ?)
`);
const punktEinfuegen = datenbank.prepare(`
    INSERT INTO Rezeptpunkt (rezeptId, art, position, text) VALUES (?, ?, ?, ?)
`);
const linkEinfuegen = datenbank.prepare(`
    INSERT INTO Link (rezeptId, position, titel, url) VALUES (?, ?, ?, ?)
`);

function mitDetails(rezept) {
    const ergebnis = {
        ...rezept,
        schutzziele: schutzzieleAbfragen.all(rezept.id).map(function (ziel) {
            return ziel.kuerzel;
        }),
        zutaten: [],
        schritte: [],
        tipps: [],
        links: linksAbfragen.all(rezept.id)
    };

    for (const punkt of punkteAbfragen.all(rezept.id)) {
        ergebnis[punktarten[punkt.art]].push(punkt.text);
    }

    return ergebnis;
}

function alleAbrufen() {
    return alleRezepteAbfragen.all().map(mitDetails);
}

function nachIdAbrufen(id) {
    const rezept = rezeptAbfragen.get(id);
    return rezept ? mitDetails(rezept) : null;
}

function nachSchutzzielenAbrufen(ids) {
    const platzhalter = ids.map(() => "?").join(", ");
    const abfrage = datenbank.prepare(`
        SELECT * FROM Rezept
        WHERE id IN (
            SELECT rezeptId FROM RezeptSchutzziel
            WHERE schutzzielId IN (${platzhalter})
            GROUP BY rezeptId
            HAVING COUNT(*) = ?
        )
        ORDER BY id
    `);
    return abfrage.all(...ids, ids.length).map(mitDetails);
}

function speichern(rezept) {
    datenbank.exec("BEGIN IMMEDIATE");
    try {
        const { lastInsertRowid: id } = rezeptEinfuegen.run(
            rezept.name, rezept.kurztext, rezept.slogan, rezept.definition,
            rezept.skizzePfad, rezept.skizzeAlt, rezept.skizzeText, rezept.erstelltAm
        );

        for (const schutzzielId of rezept.schutzzielIds) {
            schutzzielZuordnen.run(id, schutzzielId);
        }

        for (const [art, feld] of Object.entries(punktarten)) {
            for (const [index, text] of rezept[feld].entries()) {
                punktEinfuegen.run(id, art, index + 1, text);
            }
        }

        for (const [index, link] of rezept.links.entries()) {
            linkEinfuegen.run(id, index + 1, link.titel, link.url);
        }

        const ergebnis = nachIdAbrufen(id);
        datenbank.exec("COMMIT");
        return ergebnis;
    } catch (fehler) {
        datenbank.exec("ROLLBACK");
        throw fehler;
    }
}

module.exports = { alleAbrufen, nachIdAbrufen, nachSchutzzielenAbrufen, speichern };
