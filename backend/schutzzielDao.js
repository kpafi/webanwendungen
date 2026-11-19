const datenbank = require("./db/datenbank");

const schutzzieleAbfragen = datenbank.prepare(`
    SELECT id, kuerzel, bezeichnung, beschreibung
    FROM Schutzziel
    ORDER BY id
`);

function alleAbrufen() {
    return schutzzieleAbfragen.all();
}

module.exports = { alleAbrufen };
