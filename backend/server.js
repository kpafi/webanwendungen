/////////////////
// Krypto-Kueche Backend
// Main Server / Controller
/////////////////

console.log('Starting server...');

try {
    // connect database
    console.log('Connect database...');
    const Database = require('better-sqlite3');
    const dbOptions = { verbose: console.log };
    const dbFile = __dirname + '/db/database.sqlite';
    const dbConnection = new Database(dbFile, dbOptions);

    // create server
    const HTTP_PORT = 8000;
    const express = require('express');
    const cors = require('cors');
    const bodyParser = require('body-parser');
    const morgan = require('morgan');

    console.log('Creating and configuring Web Server...');
    const app = express();

    // provide service router with database connection / store the database connection in global server environment
    app.locals.dbConnection = dbConnection;

    console.log('Binding middleware...');
    // unsere html seiten liegen im ordner frontend, so laufen seiten und api auf dem gleichen server
    app.use(express.static(__dirname + '/../frontend'));
    app.use(cors());
    app.use(bodyParser.urlencoded({ extended: true }));
    app.use(bodyParser.json());
    app.use(morgan('dev'));

    // binding endpoints
    const TOPLEVELPATH = '/api';
    console.log('Binding enpoints, top level Path at ' + TOPLEVELPATH);

    var serviceRouter = require('./services/schutzziel.js');
    app.use(TOPLEVELPATH, serviceRouter);

    serviceRouter = require('./services/rezept.js');
    app.use(TOPLEVELPATH, serviceRouter);

    // send default error message if no matching endpoint found
    app.use(function (request, response) {
        console.log('Error occured, 404, resource not found');
        response.status(404).json({ 'fehler': true, 'nachricht': 'Resource nicht gefunden' });
    });

    // starting the Web Server
    console.log('\nBinding Port and starting Webserver...');

    app.listen(HTTP_PORT, () => {
        console.log('Listening at localhost, port ' + HTTP_PORT);
        console.log('\nStartseite: http://localhost:' + HTTP_PORT + '/index.html');
        console.log('Usage: http://localhost:' + HTTP_PORT + TOPLEVELPATH + '/SERVICENAME/SERVICEMETHOD/....');
        console.log('\n\n-----------------------------------------');
        console.log('exit / stop Server by pressing 2 x CTRL-C');
        console.log('-----------------------------------------\n\n');
    });

} catch (ex) {
    console.error(ex);
}
