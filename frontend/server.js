const express = require("express");
const path = require("path");
const erstelleApiRouter = require("../backend/api");
const datenbank = require("../backend/db/datenbank");

const app = express();
const PORT = 3000;

app.use("/api", erstelleApiRouter(express, datenbank));
app.use(express.static(path.join(__dirname)));

app.listen(PORT, function () {
    console.log("Frontend läuft auf http://localhost:" + PORT);
});
