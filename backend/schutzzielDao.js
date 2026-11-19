class SchutzzielDao {
    constructor(datenbank) {
        this.schutzzieleAbfragen = datenbank.prepare(`
            SELECT id, kuerzel, bezeichnung, beschreibung
            FROM Schutzziel
            ORDER BY id
        `);
    }

    alleAbrufen() {
        return this.schutzzieleAbfragen.all();
    }
}

module.exports = SchutzzielDao;
