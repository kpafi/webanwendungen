const rezeptDao = require("./rezeptDao");
const schutzzielService = require("./schutzzielService");

function ungueltigeEingabe(nachricht) {
    const fehler = new Error(nachricht);
    fehler.status = 400;
    return fehler;
}

function istText(wert) {
    return typeof wert === "string" && wert.trim() !== "";
}

function istGueltigerLink(link) {
    if (!link || !istText(link.titel) || !istText(link.url)) {
        return false;
    }

    const url = URL.parse(link.url);
    return url !== null && (url.protocol === "http:" || url.protocol === "https:");
}

function schutzzielIdsErmitteln(kuerzelListe) {
    if (!Array.isArray(kuerzelListe)) {
        throw ungueltigeEingabe("Schutzziele müssen als Liste von Kürzeln angegeben werden.");
    }

    const schutzziele = schutzzielService.alleAbrufen();
    const ids = [];
    for (const kuerzel of new Set(kuerzelListe)) {
        const ziel = schutzziele.find(function (schutzziel) {
            return schutzziel.kuerzel === kuerzel;
        });
        if (!ziel) {
            throw ungueltigeEingabe("Ein Schutzziel-Kürzel ist ungültig. Gültige Kürzel liefert GET /api/schutzziel.");
        }
        ids.push(ziel.id);
    }
    return ids;
}

function alleAbrufen(schutzziele) {
    if (schutzziele.length === 0) {
        return rezeptDao.alleAbrufen();
    }
    return rezeptDao.nachSchutzzielenAbrufen(schutzzielIdsErmitteln(schutzziele));
}

function nachIdAbrufen(wert) {
    const id = Number(wert);
    if (!/^\d+$/.test(wert) || !Number.isSafeInteger(id) || id < 1) {
        throw ungueltigeEingabe("Die Rezept-ID muss eine positive ganze Zahl sein.");
    }
    return rezeptDao.nachIdAbrufen(id);
}

function speichern(daten) {
    if (!daten || typeof daten !== "object" || Array.isArray(daten)) {
        throw ungueltigeEingabe("Der Request-Body muss ein JSON-Objekt sein.");
    }

    const rezept = {};
    for (const feld of ["name", "kurztext", "slogan", "definition"]) {
        if (!istText(daten[feld])) {
            throw ungueltigeEingabe(feld + " ist ein Pflichtfeld und muss Text enthalten.");
        }
        rezept[feld] = daten[feld].trim();
    }

    for (const feld of ["skizzePfad", "skizzeAlt", "skizzeText"]) {
        const wert = daten[feld] ?? null;
        if (wert !== null && typeof wert !== "string") {
            throw ungueltigeEingabe(feld + " muss ein Text oder null sein.");
        }
        rezept[feld] = wert;
    }

    for (const feld of ["zutaten", "schritte", "tipps"]) {
        const liste = daten[feld] === undefined ? [] : daten[feld];
        if (!Array.isArray(liste) || !liste.every(istText)) {
            throw ungueltigeEingabe(feld + " muss eine Liste von nicht leeren Texten sein.");
        }
        rezept[feld] = liste;
    }

    const { links = [], schutzziele = [] } = daten;
    if (!Array.isArray(links) || !links.every(istGueltigerLink)) {
        throw ungueltigeEingabe("Jeder Link benötigt einen Titel und eine HTTP- oder HTTPS-Adresse.");
    }
    rezept.links = links;
    rezept.schutzzielIds = schutzzielIdsErmitteln(schutzziele);
    rezept.erstelltAm = new Date().toISOString().slice(0, 10);

    return rezeptDao.speichern(rezept);
}

module.exports = { alleAbrufen, nachIdAbrufen, speichern };
