const punktarten = { zutat: "zutaten", schritt: "schritte", tipp: "tipps" };

class RezeptDao {
    constructor(datenbank) {
        this.datenbank = datenbank;

        this.alleRezepteAbfragen = datenbank.prepare("SELECT * FROM Rezept ORDER BY id");
        this.rezeptAbfragen = datenbank.prepare("SELECT * FROM Rezept WHERE id = ?");
        this.schutzzieleAbfragen = datenbank.prepare(`
            SELECT Schutzziel.kuerzel
            FROM RezeptSchutzziel
            JOIN Schutzziel ON Schutzziel.id = RezeptSchutzziel.schutzzielId
            WHERE RezeptSchutzziel.rezeptId = ?
            ORDER BY Schutzziel.id
        `);
        this.punkteAbfragen = datenbank.prepare(`
            SELECT art, text FROM Rezeptpunkt WHERE rezeptId = ? ORDER BY position, id
        `);
        this.linksAbfragen = datenbank.prepare(`
            SELECT titel, url FROM Link WHERE rezeptId = ? ORDER BY position, id
        `);

        this.rezeptEinfuegen = datenbank.prepare(`
            INSERT INTO Rezept (name, kurztext, slogan, definition, skizzePfad, skizzeAlt, skizzeText, erstelltAm)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)
        `);
        this.schutzzielZuordnen = datenbank.prepare(`
            INSERT INTO RezeptSchutzziel (rezeptId, schutzzielId) VALUES (?, ?)
        `);
        this.punktEinfuegen = datenbank.prepare(`
            INSERT INTO Rezeptpunkt (rezeptId, art, position, text) VALUES (?, ?, ?, ?)
        `);
        this.linkEinfuegen = datenbank.prepare(`
            INSERT INTO Link (rezeptId, position, titel, url) VALUES (?, ?, ?, ?)
        `);
    }

    alleAbrufen() {
        return this.alleRezepteAbfragen.all().map((rezept) => this.mitDetails(rezept));
    }

    nachIdAbrufen(id) {
        const rezept = this.rezeptAbfragen.get(id);
        return rezept ? this.mitDetails(rezept) : null;
    }

    nachSchutzzielenAbrufen(ids) {
        const platzhalter = ids.map(() => "?").join(", ");
        const abfrage = this.datenbank.prepare(`
            SELECT * FROM Rezept
            WHERE id IN (
                SELECT rezeptId FROM RezeptSchutzziel
                WHERE schutzzielId IN (${platzhalter})
                GROUP BY rezeptId
                HAVING COUNT(*) = ?
            )
            ORDER BY id
        `);
        return abfrage.all(...ids, ids.length).map((rezept) => this.mitDetails(rezept));
    }

    speichern(rezept) {
        // Rezept und zugehörige Einträge werden gemeinsam gespeichert.
        this.datenbank.exec("BEGIN IMMEDIATE");
        try {
            const { lastInsertRowid: id } = this.rezeptEinfuegen.run(
                rezept.name, rezept.kurztext, rezept.slogan, rezept.definition,
                rezept.skizzePfad, rezept.skizzeAlt, rezept.skizzeText, rezept.erstelltAm
            );

            for (const schutzzielId of rezept.schutzzielIds) {
                this.schutzzielZuordnen.run(id, schutzzielId);
            }

            for (const [art, feld] of Object.entries(punktarten)) {
                for (const [index, text] of rezept[feld].entries()) {
                    this.punktEinfuegen.run(id, art, index + 1, text);
                }
            }

            for (const [index, link] of rezept.links.entries()) {
                this.linkEinfuegen.run(id, index + 1, link.titel, link.url);
            }

            const ergebnis = this.nachIdAbrufen(id);
            this.datenbank.exec("COMMIT");
            return ergebnis;
        } catch (fehler) {
            this.datenbank.exec("ROLLBACK");
            throw fehler;
        }
    }

    mitDetails(rezept) {
        const ergebnis = {
            ...rezept,
            schutzziele: this.schutzzieleAbfragen.all(rezept.id).map(function (ziel) {
                return ziel.kuerzel;
            }),
            zutaten: [],
            schritte: [],
            tipps: [],
            links: this.linksAbfragen.all(rezept.id)
        };

        for (const punkt of this.punkteAbfragen.all(rezept.id)) {
            ergebnis[punktarten[punkt.art]].push(punkt.text);
        }

        return ergebnis;
    }
}

module.exports = RezeptDao;
