const schutzzielDao = require("./schutzzielDao");

function alleAbrufen() {
    return schutzzielDao.alleAbrufen();
}

module.exports = { alleAbrufen };
