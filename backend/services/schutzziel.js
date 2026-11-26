const helper = require('../helper.js');
const SchutzzielDao = require('../dao/schutzzielDao.js');
const express = require('express');
var serviceRouter = express.Router();

console.log('- Service Schutzziel');

serviceRouter.get('/schutzziel/gib/:id', function(request, response) {
    console.log('Service Schutzziel: Client requested one record, id=' + request.params.id);

    const schutzzielDao = new SchutzzielDao(request.app.locals.dbConnection);
    try {
        var obj = schutzzielDao.loadById(request.params.id);
        console.log('Service Schutzziel: Record loaded');
        response.status(200).json(obj);
    } catch (ex) {
        console.error('Service Schutzziel: Error loading record by id. Exception occured: ' + ex.message);
        response.status(400).json({ 'fehler': true, 'nachricht': ex.message });
    }
});

serviceRouter.get('/schutzziel/alle', function(request, response) {
    console.log('Service Schutzziel: Client requested all records');

    const schutzzielDao = new SchutzzielDao(request.app.locals.dbConnection);
    try {
        var arr = schutzzielDao.loadAll();
        console.log('Service Schutzziel: Records loaded, count=' + arr.length);
        response.status(200).json(arr);
    } catch (ex) {
        console.error('Service Schutzziel: Error loading all records. Exception occured: ' + ex.message);
        response.status(400).json({ 'fehler': true, 'nachricht': ex.message });
    }
});

serviceRouter.get('/schutzziel/existiert/:id', function(request, response) {
    console.log('Service Schutzziel: Client requested check, if record exists, id=' + request.params.id);

    const schutzzielDao = new SchutzzielDao(request.app.locals.dbConnection);
    try {
        var exists = schutzzielDao.exists(request.params.id);
        console.log('Service Schutzziel: Check if record exists by id=' + request.params.id + ', exists=' + exists);
        response.status(200).json({ 'id': request.params.id, 'existiert': exists });
    } catch (ex) {
        console.error('Service Schutzziel: Error checking if record exists. Exception occured: ' + ex.message);
        response.status(400).json({ 'fehler': true, 'nachricht': ex.message });
    }
});

serviceRouter.post('/schutzziel', function(request, response) {
    console.log('Service Schutzziel: Client requested creation of new record');

    var errorMsgs=[];
    if (helper.isUndefined(request.body.kuerzel))
        errorMsgs.push('kuerzel fehlt');
    if (helper.isUndefined(request.body.bezeichnung))
        errorMsgs.push('bezeichnung fehlt');
    if (helper.isUndefined(request.body.beschreibung))
        request.body.beschreibung = '';

    if (errorMsgs.length > 0) {
        console.log('Service Schutzziel: Creation not possible, data missing');
        response.status(400).json({ 'fehler': true, 'nachricht': 'Funktion nicht möglich. Fehlende Daten: ' + helper.concatArray(errorMsgs) });
        return;
    }

    const schutzzielDao = new SchutzzielDao(request.app.locals.dbConnection);
    try {
        var obj = schutzzielDao.create(request.body.kuerzel, request.body.bezeichnung, request.body.beschreibung);
        console.log('Service Schutzziel: Record inserted');
        response.status(200).json(obj);
    } catch (ex) {
        console.error('Service Schutzziel: Error creating new record. Exception occured: ' + ex.message);
        response.status(400).json({ 'fehler': true, 'nachricht': ex.message });
    }
});

serviceRouter.put('/schutzziel', function(request, response) {
    console.log('Service Schutzziel: Client requested update of existing record');

    var errorMsgs=[];
    if (helper.isUndefined(request.body.id))
        errorMsgs.push('id fehlt');
    if (helper.isUndefined(request.body.kuerzel))
        errorMsgs.push('kuerzel fehlt');
    if (helper.isUndefined(request.body.bezeichnung))
        errorMsgs.push('bezeichnung fehlt');
    if (helper.isUndefined(request.body.beschreibung))
        request.body.beschreibung = '';

    if (errorMsgs.length > 0) {
        console.log('Service Schutzziel: Update not possible, data missing');
        response.status(400).json({ 'fehler': true, 'nachricht': 'Funktion nicht möglich. Fehlende Daten: ' + helper.concatArray(errorMsgs) });
        return;
    }

    const schutzzielDao = new SchutzzielDao(request.app.locals.dbConnection);
    try {
        var obj = schutzzielDao.update(request.body.id, request.body.kuerzel, request.body.bezeichnung, request.body.beschreibung);
        console.log('Service Schutzziel: Record updated, id=' + request.body.id);
        response.status(200).json(obj);
    } catch (ex) {
        console.error('Service Schutzziel: Error updating record by id. Exception occured: ' + ex.message);
        response.status(400).json({ 'fehler': true, 'nachricht': ex.message });
    }
});

serviceRouter.delete('/schutzziel/:id', function(request, response) {
    console.log('Service Schutzziel: Client requested deletion of record, id=' + request.params.id);

    const schutzzielDao = new SchutzzielDao(request.app.locals.dbConnection);
    try {
        var obj = schutzzielDao.loadById(request.params.id);
        schutzzielDao.delete(request.params.id);
        console.log('Service Schutzziel: Deletion of record successfull, id=' + request.params.id);
        response.status(200).json({ 'gelöscht': true, 'eintrag': obj });
    } catch (ex) {
        console.error('Service Schutzziel: Error deleting record. Exception occured: ' + ex.message);
        response.status(400).json({ 'fehler': true, 'nachricht': ex.message });
    }
});

module.exports = serviceRouter;
