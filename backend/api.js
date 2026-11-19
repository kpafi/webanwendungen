const rezeptService = require("./rezeptService");
const schutzzielService = require("./schutzzielService");

function erstelleApiRouter(express) {
    const router = express.Router();

    router.get("/rezept", function (anfrage, antwort) {
        const filter = [].concat(anfrage.query.schutzziel ?? []);
        const kuerzel = filter.flatMap(function (wert) {
            return wert.split(",").map(function (teil) {
                return teil.trim();
            });
        });
        antwort.json(rezeptService.alleAbrufen(kuerzel));
    });

    router.get("/rezept/:id", function (anfrage, antwort) {
        const rezept = rezeptService.nachIdAbrufen(anfrage.params.id);
        if (!rezept) {
            return antwort.status(404).json({ fehler: "Rezept nicht gefunden." });
        }
        antwort.json(rezept);
    });

    router.get("/schutzziel", function (anfrage, antwort) {
        antwort.json(schutzzielService.alleAbrufen());
    });

    router.post("/rezept", express.json(), function (anfrage, antwort) {
        const rezept = rezeptService.speichern(anfrage.body);
        antwort.location("/api/rezept/" + rezept.id).status(201).json(rezept);
    });

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
