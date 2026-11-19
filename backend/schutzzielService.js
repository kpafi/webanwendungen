function erstelleSchutzzielRouter(express, schutzzielDao) {
    const router = express.Router();

    router.get("/schutzziel", function (anfrage, antwort) {
        antwort.json(schutzzielDao.alleAbrufen());
    });

    return router;
}

module.exports = erstelleSchutzzielRouter;
