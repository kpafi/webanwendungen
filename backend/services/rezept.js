const helper = require('../helper.js');
const RezeptDao = require('../dao/rezeptDao.js');
const express = require('express');
var serviceRouter = express.Router();

console.log('- Service Rezept');

serviceRouter.get('/rezept/gib/:id', function(request, response) {
    console.log('Service Rezept: Client requested one record, id=' + request.params.id);

    const rezeptDao = new RezeptDao(request.app.locals.dbConnection);
    try {
        var obj = rezeptDao.loadById(request.params.id);
        console.log('Service Rezept: Record loaded');
        response.status(200).json(obj);
    } catch (ex) {
        console.error('Service Rezept: Error loading record by id. Exception occured: ' + ex.message);
        response.status(400).json({ 'fehler': true, 'nachricht': ex.message });
    }
});

serviceRouter.get('/rezept/alle', function(request, response) {
    console.log('Service Rezept: Client requested all records');

    const rezeptDao = new RezeptDao(request.app.locals.dbConnection);
    try {
        var arr = rezeptDao.loadAll();
        console.log('Service Rezept: Records loaded, count=' + arr.length);
        response.status(200).json(arr);
    } catch (ex) {
        console.error('Service Rezept: Error loading all records. Exception occured: ' + ex.message);
        response.status(400).json({ 'fehler': true, 'nachricht': ex.message });
    }
});

serviceRouter.get('/rezept/existiert/:id', function(request, response) {
    console.log('Service Rezept: Client requested check, if record exists, id=' + request.params.id);

    const rezeptDao = new RezeptDao(request.app.locals.dbConnection);
    try {
        var exists = rezeptDao.exists(request.params.id);
        console.log('Service Rezept: Check if record exists by id=' + request.params.id + ', exists=' + exists);
        response.status(200).json({ 'id': request.params.id, 'existiert': exists });
    } catch (ex) {
        console.error('Service Rezept: Error checking if record exists. Exception occured: ' + ex.message);
        response.status(400).json({ 'fehler': true, 'nachricht': ex.message });
    }
});

serviceRouter.post('/rezept', function(request, response) {
    console.log('Service Rezept: Client requested creation of new record');

    var errorMsgs = checkRezept(request.body);

    if (errorMsgs.length > 0) {
        console.log('Service Rezept: Creation not possible, data missing');
        response.status(400).json({ 'fehler': true, 'nachricht': 'Funktion nicht möglich. Fehlende Daten: ' + helper.concatArray(errorMsgs) });
        return;
    }

    const rezeptDao = new RezeptDao(request.app.locals.dbConnection);
    try {
        var b = request.body;
        var obj = rezeptDao.create(b.name, b.kurztext, b.slogan, b.definition, b.skizzePfad, b.skizzeAlt, b.skizzeText, b.schutzziele, b.zutaten, b.schritte, b.tipps, b.links);
        console.log('Service Rezept: Record inserted');
        response.status(200).json(obj);
    } catch (ex) {
        console.error('Service Rezept: Error creating new record. Exception occured: ' + ex.message);
        response.status(400).json({ 'fehler': true, 'nachricht': ex.message });
    }
});

serviceRouter.put('/rezept', function(request, response) {
    console.log('Service Rezept: Client requested update of existing record');

    var errorMsgs = checkRezept(request.body);
    if (helper.isUndefined(request.body.id))
        errorMsgs.push('id fehlt');

    if (errorMsgs.length > 0) {
        console.log('Service Rezept: Update not possible, data missing');
        response.status(400).json({ 'fehler': true, 'nachricht': 'Funktion nicht möglich. Fehlende Daten: ' + helper.concatArray(errorMsgs) });
        return;
    }

    const rezeptDao = new RezeptDao(request.app.locals.dbConnection);
    try {
        var b = request.body;
        var obj = rezeptDao.update(b.id, b.name, b.kurztext, b.slogan, b.definition, b.skizzePfad, b.skizzeAlt, b.skizzeText, b.schutzziele, b.zutaten, b.schritte, b.tipps, b.links);
        console.log('Service Rezept: Record updated, id=' + request.body.id);
        response.status(200).json(obj);
    } catch (ex) {
        console.error('Service Rezept: Error updating record by id. Exception occured: ' + ex.message);
        response.status(400).json({ 'fehler': true, 'nachricht': ex.message });
    }
});

serviceRouter.delete('/rezept/:id', function(request, response) {
    console.log('Service Rezept: Client requested deletion of record, id=' + request.params.id);

    const rezeptDao = new RezeptDao(request.app.locals.dbConnection);
    try {
        var obj = rezeptDao.loadById(request.params.id);
        rezeptDao.delete(request.params.id);
        console.log('Service Rezept: Deletion of record successfull, id=' + request.params.id);
        response.status(200).json({ 'gelöscht': true, 'eintrag': obj });
    } catch (ex) {
        console.error('Service Rezept: Error deleting record. Exception occured: ' + ex.message);
        response.status(400).json({ 'fehler': true, 'nachricht': ex.message });
    }
});


// prueft die daten fuer post und put, damit das nicht doppelt da steht
// gibt eine liste mit fehlermeldungen zurueck, fehlende optionale felder werden auf null oder [] gesetzt
function checkRezept(body) {
    var errorMsgs = [];

    if (helper.isUndefined(body.name))
        errorMsgs.push('name fehlt');
    if (helper.isUndefined(body.kurztext))
        errorMsgs.push('kurztext fehlt');
    if (helper.isUndefined(body.slogan))
        errorMsgs.push('slogan fehlt');
    if (helper.isUndefined(body.definition))
        errorMsgs.push('definition fehlt');

    if (helper.isUndefined(body.skizzePfad))
        body.skizzePfad = null;
    if (helper.isUndefined(body.skizzeAlt))
        body.skizzeAlt = null;
    if (helper.isUndefined(body.skizzeText))
        body.skizzeText = null;

    if (!helper.isArray(body.schutzziele))
        body.schutzziele = [];
    if (!helper.isArray(body.zutaten))
        body.zutaten = [];
    if (!helper.isArray(body.schritte))
        body.schritte = [];
    if (!helper.isArray(body.tipps))
        body.tipps = [];
    if (!helper.isArray(body.links))
        body.links = [];

    for (var element of body.schutzziele) {
        if (helper.isUndefined(element.id))
            errorMsgs.push('schutzziel gesetzt, aber id fehlt');
    }

    // nur echte webadressen erlauben, sonst koennte jemand z.b. "javascript:..." als link speichern
    for (var element of body.links) {
        if (helper.isUndefined(element.titel))
            errorMsgs.push('link gesetzt, aber titel fehlt');
        if (typeof element.url !== 'string' || !(element.url.startsWith('http://') || element.url.startsWith('https://')))
            errorMsgs.push('link braucht eine url mit http:// oder https://');
    }

    return errorMsgs;
}

module.exports = serviceRouter;
