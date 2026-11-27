// eigener server nur fuer die html seiten, bilder, css und js
// die rest-api laeuft getrennt davon im backend auf port 8000
const express = require("express");

const app = express();
const PORT = 3000;

app.use(express.static(__dirname));

app.listen(PORT, function () {
    console.log("Frontend läuft auf http://localhost:" + PORT);
});
