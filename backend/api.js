// bindet alle services unter /api ein, so wie im server.js vom prof
const erstelleSchutzzielRouter = require('./schutzzielService.js');
const erstelleRezeptRouter = require('./rezeptService.js');

function erstelleApiRouter(express, datenbank) {
    var router = express.Router();

    // json im request body lesen (beim prof macht das bodyParser.json())
    router.use(express.json());

    router.use(erstelleSchutzzielRouter(express, datenbank));
    router.use(erstelleRezeptRouter(express, datenbank));

    // send default error message if no matching endpoint found
    router.use(function (request, response) {
        console.log('Error occured, 404, resource not found');
        response.status(404).json({ 'fehler': true, 'nachricht': 'Resource nicht gefunden' });
    });

    return router;
}

module.exports = erstelleApiRouter;
