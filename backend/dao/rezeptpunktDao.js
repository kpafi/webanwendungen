const helper = require('../helper.js');

// ein rezeptpunkt ist eine zutat, ein schritt oder ein tipp (spalte "art")
class RezeptpunktDao {

    constructor(dbConnection) {
        this._conn = dbConnection;
    }

    getConnection() {
        return this._conn;
    }

    // alle punkte einer art (zutat, schritt oder tipp) von einem rezept, in der richtigen reihenfolge
    loadAllByParent(id, art) {
        var sql = 'SELECT * FROM Rezeptpunkt WHERE rezeptId=? AND art=? ORDER BY position';
        var statement = this._conn.prepare(sql);
        var result = statement.all(id, art);

        if (helper.isArrayEmpty(result))
            return [];

        for (var i = 0; i < result.length; i++) {
            result[i].rezept = { 'id': result[i].rezeptId };
            delete result[i].rezeptId;
        }

        return result;
    }

    create(rezeptId = 1, art = 'zutat', position = 1, text = '') {
        var sql = 'INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES (?,?,?,?)';
        var statement = this._conn.prepare(sql);
        var params = [rezeptId, art, position, text];
        var result = statement.run(params);

        if (result.changes != 1)
            throw new Error('Could not insert new Record. Data: ' + params);

        return true;
    }

    deleteByParent(id) {
        try {
            var sql = 'DELETE FROM Rezeptpunkt WHERE rezeptId=?';
            var statement = this._conn.prepare(sql);
            statement.run(id);

            return true;
        } catch (ex) {
            throw new Error('Could not delete Records by parent id=' + id + '. Reason: ' + ex.message);
        }
    }

    toString() {
        console.log('RezeptpunktDao [_conn=' + this._conn + ']');
    }
}

module.exports = RezeptpunktDao;
