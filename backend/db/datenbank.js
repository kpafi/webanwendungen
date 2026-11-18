const { existsSync } = require("node:fs");
const path = require("node:path");
const { DatabaseSync } = require("node:sqlite");

const dateipfad = path.join(__dirname, "database.sqlite");

if (!existsSync(dateipfad)) {
    throw new Error("Die SQLite-Datenbank fehlt unter " + dateipfad);
}

const datenbank = new DatabaseSync(dateipfad);
datenbank.exec("PRAGMA busy_timeout = 5000");

module.exports = datenbank;
