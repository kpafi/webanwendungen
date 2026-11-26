const helper = require('../helper.js');
const SchutzzielDao = require('./schutzzielDao.js');

// verbindet rezepte und schutzziele (ein rezept kann mehrere schutzziele haben)
class RezeptschutzzielDao {

    constructor(dbConnection) {
        this._conn = dbConnection;
    }

    getConnection() {
        return this._conn;
    }

    // liefert direkt die schutzziele von einem rezept
    loadAllByParent(id) {
        const schutzzielDao = new SchutzzielDao(this._conn);

        var sql = 'SELECT * FROM RezeptSchutzziel WHERE rezeptId=? ORDER BY schutzzielId';
        var statement = this._conn.prepare(sql);
        var result = statement.all(id);

        if (helper.isArrayEmpty(result))
            return [];

        var schutzziele = [];
        for (var i = 0; i < result.length; i++) {
            schutzziele.push(schutzzielDao.loadById(result[i].schutzzielId));
        }

        return schutzziele;
    }

    create(rezeptId = 1, schutzzielId = 1) {
        var sql = 'INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (?,?)';
        var statement = this._conn.prepare(sql);
        var params = [rezeptId, schutzzielId];
        var result = statement.run(params);

        if (result.changes != 1)
            throw new Error('Could not insert new Record. Data: ' + params);

        return true;
    }

    deleteByParent(id) {
        try {
            var sql = 'DELETE FROM RezeptSchutzziel WHERE rezeptId=?';
            var statement = this._conn.prepare(sql);
            statement.run(id);

            return true;
        } catch (ex) {
            throw new Error('Could not delete Records by parent id=' + id + '. Reason: ' + ex.message);
        }
    }

    toString() {
        console.log('RezeptschutzzielDao [_conn=' + this._conn + ']');
    }
}

module.exports = RezeptschutzzielDao;
