// adresse vom backend (rest-api), falls sich der port aendert nur hier anpassen
const API = "http://localhost:8000/api";

// hier merken wir uns alle rezepte aus der datenbank,
// dann muss beim filtern nicht jedes mal neu geladen werden
let alleRezepte = [];

// die gewaehlten schutzziele stehen in der adresse, z.b. rezepte.html?schutzziel=a,v
// so kommt man von der startseite oder von den links oben im header hier an
const parameter = new URLSearchParams(window.location.search);
let gewaehlt = [];
if (parameter.get("schutzziel")) {
    gewaehlt = parameter.get("schutzziel").split(",");     // aus "a,v" wird ["a", "v"]
}


// schutzziele aus der datenbank holen und fuer jedes ein kaestchen in den kleinen filter bauen
$.ajax({
    url: API + "/schutzziel/alle",
    method: "GET",
    dataType: "json"
}).done(function (schutzziele) {
    const raster = document.getElementById("filter-raster");
    const hinweis = document.getElementById("filter-hinweis");

    for (const ziel of schutzziele) {
        const box = document.createElement("input");
        box.type = "checkbox";
        box.name = "schutzziel";
        box.value = ziel.kuerzel;
        box.checked = gewaehlt.includes(ziel.kuerzel);      // haken setzen wenn es in der adresse stand
        box.addEventListener("change", filterGeaendert);

        const titel = document.createElement("span");
        titel.className = "kachel-titelklein";
        titel.textContent = ziel.bezeichnung;

        const kaestchen = document.createElement("label");
        kaestchen.className = "kachelklein";
        kaestchen.appendChild(box);
        kaestchen.appendChild(titel);
        raster.insertBefore(kaestchen, hinweis);            // vor den hinweistext, der soll unten bleiben
    }
}).fail(fehlerZeigen);


// alle rezepte aus der datenbank holen und anzeigen
$.ajax({
    url: API + "/rezept/alle",
    method: "GET",
    dataType: "json"
}).done(function (rezepte) {
    alleRezepte = rezepte;
    kachelnZeigen();
}).fail(fehlerZeigen);


// wird aufgerufen sobald ein kaestchen im kleinen filter angeklickt wird
function filterGeaendert() {
    gewaehlt = [];
    for (const box of document.querySelectorAll("#filter-raster input:checked")) {
        gewaehlt.push(box.value);
    }

    // die adresse oben im browser anpassen ohne die seite neu zu laden,
    // sonst ist der filter weg wenn man von einem rezept wieder zurueck geht
    if (gewaehlt.length > 0) {
        history.replaceState(null, "", "rezepte.html?schutzziel=" + gewaehlt.join(","));
    } else {
        history.replaceState(null, "", "rezepte.html");
    }

    kachelnZeigen();
}


// baut fuer jedes rezept das zum filter passt eine kachel
function kachelnZeigen() {
    const kacheln = document.getElementById("kacheln");
    kacheln.innerHTML = "";     // erst die alten kacheln wegmachen

    let anzahl = 0;
    for (const rezept of alleRezepte) {
        if (!passtZumFilter(rezept)) {
            continue;
        }

        const titel = document.createElement("span");
        titel.className = "kachel-titel";
        titel.textContent = rezept.name;

        const text = document.createElement("span");
        text.className = "kachel-text";
        text.textContent = rezept.kurztext;

        const kachel = document.createElement("a");
        kachel.className = "kachel";
        kachel.href = "rezept.html?id=" + rezept.id;
        kachel.appendChild(titel);
        kachel.appendChild(text);
        kacheln.appendChild(kachel);
        anzahl++;
    }

    // rezept-anzahl oben rechts
    document.getElementById("rezept-anzahl").textContent = anzahl + " / " + alleRezepte.length + " Rezepte";

    // "Alle Rezepte" stimmt nur wenn kein filter an ist
    if (gewaehlt.length === 0) {
        document.getElementById("ueberschrift").textContent = "Alle Rezepte";
    } else {
        document.getElementById("ueberschrift").textContent = "Rezepte";
    }

    if (anzahl === 0) {
        document.getElementById("meldung").textContent = "Zu diesem Filter gibt es noch kein Rezept.";
    } else {
        document.getElementById("meldung").textContent = "";
    }
}


// ein rezept passt nur, wenn es ALLE gewaehlten schutzziele hat
// ist nichts gewaehlt, passt jedes rezept
function passtZumFilter(rezept) {
    for (const kuerzel of gewaehlt) {
        let gefunden = false;
        for (const ziel of rezept.schutzziele) {
            if (ziel.kuerzel === kuerzel) {
                gefunden = true;
            }
        }
        if (!gefunden) {
            return false;
        }
    }
    return true;
}


// wenn das backend nicht laeuft oder einen fehler meldet
function fehlerZeigen() {
    document.getElementById("meldung").textContent = "Die Rezepte konnten nicht geladen werden. Läuft das Backend?";
}
