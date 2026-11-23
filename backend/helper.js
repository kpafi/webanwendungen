// Hilfsfunktionen aus der Vorlage vom Prof, nur die die wir wirklich brauchen

// check if value is undefined
module.exports.isUndefined = function(val) {
    return (val === undefined);
}

// checks if value is a array
module.exports.isArray = function(val) {
    if (val === null)
        return false;

    if (val === undefined)
        return false;

    return Array.isArray(val);
}

// checks if given value is an array and if its empty
module.exports.isArrayEmpty = function(val) {
    if (val === null)
        return true;

    if (val === undefined)
        return true;

    if (!Array.isArray(val))
        return true;

    return (val.length == 0);
}

// concats the elements in an array and returns as string
module.exports.concatArray = function(arr) {
    return arr.join(', ');
}

// liefert das heutige datum als text, z.b. "2026-11-23"
module.exports.getToday = function() {
    return new Date().toISOString().slice(0, 10);
}
