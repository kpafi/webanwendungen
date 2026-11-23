const helper = require('./helper.js');
const RezeptschutzzielDao = require('./rezeptschutzzielDao.js');
const RezeptpunktDao = require('./rezeptpunktDao.js');
const LinkDao = require('./linkDao.js');

class RezeptDao {

    constructor(dbConnection) {
        this._conn = dbConnection;
    }

    getConnection() {
        return this._conn;
    }

    loadById(id) {
        const rezeptschutzzielDao = new RezeptschutzzielDao(this._conn);
        const rezeptpunktDao = new RezeptpunktDao(this._conn);
        const linkDao = new LinkDao(this._conn);

        var sql = 'SELECT * FROM Rezept WHERE id=?';
        var statement = this._conn.prepare(sql);
        var result = statement.get(id);

        if (helper.isUndefined(result))
            throw new Error('No Record found by id=' + id);

        result.schutzziele = rezeptschutzzielDao.loadAllByParent(result.id);
        result.zutaten = rezeptpunktDao.loadAllByParent(result.id, 'zutat');
        result.schritte = rezeptpunktDao.loadAllByParent(result.id, 'schritt');
        result.tipps = rezeptpunktDao.loadAllByParent(result.id, 'tipp');
        result.links = linkDao.loadAllByParent(result.id);

        return result;
    }

    loadAll() {
        var sql = 'SELECT id FROM Rezept';
        var statement = this._conn.prepare(sql);
        var result = statement.all();

        if (helper.isArrayEmpty(result))
            return [];

        // jedes rezept mit loadById laden, dann sind auch zutaten, links usw. dabei
        var rezepte = [];
        for (var i = 0; i < result.length; i++) {
            rezepte.push(this.loadById(result[i].id));
        }

        return rezepte;
    }

    exists(id) {
        var sql = 'SELECT COUNT(id) AS cnt FROM Rezept WHERE id=?';
        var statement = this._conn.prepare(sql);
        var result = statement.get(id);

        if (result.cnt == 1)
            return true;

        return false;
    }

    create(name = '', kurztext = '', slogan = '', definition = '', skizzePfad = null, skizzeAlt = null, skizzeText = null, schutzziele = [], zutaten = [], schritte = [], tipps = [], links = []) {
        var sql = 'INSERT INTO Rezept (name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (?,?,?,?,?,?,?,?)';
        var statement = this._conn.prepare(sql);
        var result = statement.run(name, kurztext, slogan, definition, skizzePfad, skizzeAlt, skizzeText, helper.getToday());

        if (result.changes != 1)
            throw new Error('Could not insert new Record. Data: ' + name);

        this.createDetails(result.lastInsertRowid, schutzziele, zutaten, schritte, tipps, links);

        return this.loadById(result.lastInsertRowid);
    }

    update(id, name = '', kurztext = '', slogan = '', definition = '', skizzePfad = null, skizzeAlt = null, skizzeText = null, schutzziele = [], zutaten = [], schritte = [], tipps = [], links = []) {
        // erst alle alten zuordnungen loeschen, danach werden sie neu angelegt
        this.deleteDetails(id);

        var sql = 'UPDATE Rezept SET name=?,kurztext=?,slogan=?,definition=?,skizzePfad=?,skizzeAlt=?,skizzeText=? WHERE id=?';
        var statement = this._conn.prepare(sql);
        var result = statement.run(name, kurztext, slogan, definition, skizzePfad, skizzeAlt, skizzeText, id);

        if (result.changes != 1)
            throw new Error('Could not update existing Record. Data: ' + id + ', ' + name);

        this.createDetails(id, schutzziele, zutaten, schritte, tipps, links);

        return this.loadById(id);
    }

    delete(id) {
        try {
            this.deleteDetails(id);

            var sql = 'DELETE FROM Rezept WHERE id=?';
            var statement = this._conn.prepare(sql);
            var result = statement.run(id);

            if (result.changes != 1)
                throw new Error('Could not delete Record by id=' + id);

            return true;
        } catch (ex) {
            throw new Error('Could not delete Record by id=' + id + '. Reason: ' + ex.message);
        }
    }

    // legt schutzziele, zutaten, schritte, tipps und links zu einem rezept an
    // die position ist einfach die stelle in der liste (1, 2, 3, ...)
    createDetails(id, schutzziele, zutaten, schritte, tipps, links) {
        const rezeptschutzzielDao = new RezeptschutzzielDao(this._conn);
        const rezeptpunktDao = new RezeptpunktDao(this._conn);
        const linkDao = new LinkDao(this._conn);

        for (var element of schutzziele) {
            rezeptschutzzielDao.create(id, element.id);
        }

        for (var i = 0; i < zutaten.length; i++) {
            rezeptpunktDao.create(id, 'zutat', i + 1, zutaten[i].text);
        }

        for (var i = 0; i < schritte.length; i++) {
            rezeptpunktDao.create(id, 'schritt', i + 1, schritte[i].text);
        }

        for (var i = 0; i < tipps.length; i++) {
            rezeptpunktDao.create(id, 'tipp', i + 1, tipps[i].text);
        }

        for (var i = 0; i < links.length; i++) {
            linkDao.create(id, i + 1, links[i].titel, links[i].url);
        }
    }

    // loescht alles was zu einem rezept gehoert, das rezept selbst bleibt
    deleteDetails(id) {
        const rezeptschutzzielDao = new RezeptschutzzielDao(this._conn);
        const rezeptpunktDao = new RezeptpunktDao(this._conn);
        const linkDao = new LinkDao(this._conn);

        rezeptschutzzielDao.deleteByParent(id);
        rezeptpunktDao.deleteByParent(id);
        linkDao.deleteByParent(id);
    }

    toString() {
        console.log('RezeptDao [_conn=' + this._conn + ']');
    }
}

module.exports = RezeptDao;
