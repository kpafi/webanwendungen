const helper = require('../helper.js');

class LinkDao {

    constructor(dbConnection) {
        this._conn = dbConnection;
    }

    getConnection() {
        return this._conn;
    }

    // alle links von einem rezept, in der richtigen reihenfolge
    loadAllByParent(id) {
        var sql = 'SELECT * FROM Link WHERE rezeptId=? ORDER BY position';
        var statement = this._conn.prepare(sql);
        var result = statement.all(id);

        if (helper.isArrayEmpty(result))
            return [];

        for (var i = 0; i < result.length; i++) {
            result[i].rezept = { 'id': result[i].rezeptId };
            delete result[i].rezeptId;
        }

        return result;
    }

    create(rezeptId = 1, position = 1, titel = '', url = '') {
        var sql = 'INSERT INTO Link (rezeptId,position,titel,url) VALUES (?,?,?,?)';
        var statement = this._conn.prepare(sql);
        var params = [rezeptId, position, titel, url];
        var result = statement.run(params);

        if (result.changes != 1)
            throw new Error('Could not insert new Record. Data: ' + params);

        return true;
    }

    deleteByParent(id) {
        try {
            var sql = 'DELETE FROM Link WHERE rezeptId=?';
            var statement = this._conn.prepare(sql);
            statement.run(id);

            return true;
        } catch (ex) {
            throw new Error('Could not delete Records by parent id=' + id + '. Reason: ' + ex.message);
        }
    }

    toString() {
        console.log('LinkDao [_conn=' + this._conn + ']');
    }
}

module.exports = LinkDao;
