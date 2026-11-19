const RezeptDao = require("./rezeptDao");
const SchutzzielDao = require("./schutzzielDao");
const erstelleRezeptRouter = require("./rezeptService");
const erstelleSchutzzielRouter = require("./schutzzielService");

function erstelleApiRouter(express, datenbank) {
    const router = express.Router();
    const rezeptDao = new RezeptDao(datenbank);
    const schutzzielDao = new SchutzzielDao(datenbank);

    router.use(erstelleRezeptRouter(express, rezeptDao, schutzzielDao));
    router.use(erstelleSchutzzielRouter(express, schutzzielDao));

    router.use(function (fehler, anfrage, antwort, weiter) {
        if (antwort.headersSent) {
            return weiter(fehler);
        }

        const status = fehler.status || 500;
        if (status >= 500) {
            console.error(fehler);
            return antwort.status(500).json({ fehler: "Interner Serverfehler." });
        }

        const nachricht = fehler.type === "entity.parse.failed" ? "Ungültiges JSON." : fehler.message;
        antwort.status(status).json({ fehler: nachricht });
    });

    return router;
}

module.exports = erstelleApiRouter;
