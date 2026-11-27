
document.getElementById("skizze").addEventListener("change", function () {
    const datei = this.files[0];
    if (!datei) {
        return;     // auswahl wurde abgebrochen
    }
    document.getElementById("vorschau").src = URL.createObjectURL(datei);
});


// links zu anderen rezepten, erstmal nur mit den beispielen aus der auswahl
// wenn man auf den knopf drueckt ist man nicht mehr im textfeld, deshalb merken wo man zuletzt war
let letztesFeld = null;

for (const feld of document.querySelectorAll(".rezept-seite textarea")) {
    feld.addEventListener("focus", function () {
        letztesFeld = feld;
    });
    feld.addEventListener("input", function () {
        vorschauZeigen(feld);
    });
}

// macht aus dem eingegebenen text html, so wie es spaeter im rezept angezeigt wird
// das wird fuer die vorschau und beim abschicken benutzt, damit beides gleich aussieht
function textUmwandeln(wert) {
    // erst alle html zeichen unschaedlich machen, damit niemand irgendwas anderes einschleusen kann
    let text = wert.replaceAll("&", "&amp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;");

    // und dann nur die links zu unseren rezepten wieder zu echten links machen
    // target="_blank" damit der link in einem neuen tab aufgeht und das formular nicht weg ist
    text = text.replace(/&lt;a href="(rezept\.html\?id=\d+)"&gt;(.*?)&lt;\/a&gt;/g, '<a href="$1" target="_blank">$2</a>');
    // normale links von anderen webseiten (alles was mit http:// oder https:// anfaengt) werden auch anklickbar
    // der link hoert beim leerzeichen oder anfuehrungszeichen auf, sonst koennte man damit wieder was einschleusen
    text = text.replace(/(https?:\/\/[^\s"']+)/g, '<a href="$1" target="_blank">$1</a>');

    return text;
}

// vorschau unter dem textfeld, da sieht man die links so wie spaeter im rezept
function vorschauZeigen(feld) {
    const text = textUmwandeln(feld.value);

    const vorschau = feld.nextElementSibling;
    if (vorschau.tagName === "P" || text === "") {
        vorschau.innerHTML = text;
        return;
    }

    // bei zutaten, zubereitung und tipps ist die vorschau eine liste (ul oder ol im html)
    // jede zeile wird ein eigener punkt, mit enter faengt man also einen neuen punkt an
    let punkte = "";
    for (const zeile of text.split("\n")) {
        punkte += "<li>" + zeile + "</li>";
    }
    vorschau.innerHTML = punkte;
}

// buchstaben, zahlen und bindestrich gehoeren zum wort, leerzeichen und satzzeichen nicht
function istWortzeichen(zeichen) {
    return /[a-zA-Z0-9äöüÄÖÜß-]/.test(zeichen);
}

document.getElementById("verweis-knopf").addEventListener("click", function () {
    const hinweis = document.getElementById("verweis-hinweis");
    if (!letztesFeld) {
        hinweis.textContent = "Klick zuerst in das Textfeld, in das der Link rein soll.";
        return;
    }

    const auswahl = document.getElementById("verweis-rezept");
    const inhalt = letztesFeld.value;
    const cursor = letztesFeld.selectionStart;
    let anfang = cursor;
    let ende = letztesFeld.selectionEnd;

    // wenn nichts markiert ist, das wort nehmen in dem der cursor steht
    // dafuer vom cursor aus nach links und rechts gehen bis das wort aufhoert
    if (anfang === ende) {
        // leerzeichen vor dem cursor ignorieren, sonst findet er das letzte wort nicht mehr
        // wenn man danach schon ein leerzeichen getippt hat
        // (ausser der cursor steht direkt vor dem naechsten wort, dann ist das gemeint)
        if (ende === inhalt.length || !istWortzeichen(inhalt[ende])) {
            while (anfang > 0 && inhalt[anfang - 1] === " ") {
                anfang--;
            }
            ende = anfang;
        }
        while (anfang > 0 && istWortzeichen(inhalt[anfang - 1])) {
            anfang--;
        }
        while (ende < inhalt.length && istWortzeichen(inhalt[ende])) {
            ende++;
        }
    }

    // gibt es gar kein wort (z.b. leeres feld), kommt der name vom rezept an die stelle vom cursor
    let wort = inhalt.substring(anfang, ende);
    if (wort === "") {
        wort = auswahl.options[auswahl.selectedIndex].text;
        anfang = cursor;
        ende = cursor;
    }

    const link = '<a href="' + auswahl.value + '">' + wort + '</a>';
    letztesFeld.setRangeText(link, anfang, ende, "end");    // "end" = cursor steht danach hinter dem link
    letztesFeld.focus();
    vorschauZeigen(letztesFeld);
    hinweis.textContent = "Link eingefügt.";
});

// rezeptauswahl zum verlinken mit allen rezepten aus der datenbank fuellen
// die rest-api laeuft auf einem eigenen server (backend, port 8000)
$.ajax({
    url: "http://localhost:8000/api/rezept/alle",
    method: "GET",
    dataType: "json"
}).done(function (rezepte) {
    const auswahl = $("#verweis-rezept");
    for (const rezept of rezepte) {
        const option = $("<option>");
        option.val("rezept.html?id=" + rezept.id);
        option.text(rezept.name);
        auswahl.append(option);
    }
}).fail(function () {
    $("#verweis-hinweis").text("Die Rezepte konnten nicht geladen werden.");
});


// rezept an den server schicken, aufgebaut wie die beispiele von kuti (ajaxCalls.html, fileUploadSingle.html)
// der knopf ist type="submit", dadurch prueft der browser vorher selbst ob alle pflichtfelder ausgefuellt sind
$("#rezept-formular").submit(function (event) {
    console.log("formular abgeschickt");

    // sonst laedt der browser die seite neu
    event.preventDefault();

    // die angehakten schutzziele, der value von jedem kaestchen ist die id aus der datenbank
    const schutzziele = [];
    for (const box of document.querySelectorAll('input[name="ziel"]:checked')) {
        schutzziele.push({ "id": Number(box.value) });
    }

    // bei den links ist die adresse gleichzeitig der titel
    const links = [];
    for (const zeile of zeilenLesen("rezept-links")) {
        links.push({ "titel": zeile, "url": zeile });
    }

    const obj = {
        "name": $("#rezept-name").val(),
        "slogan": $("#rezept-slogan").val(),
        "kurztext": $("#rezept-kurztext").val(),
        "definition": textUmwandeln($("#rezept-definition").val()),
        "schutzziele": schutzziele,
        "zutaten": punkteLesen("rezept-zutaten"),
        "schritte": punkteLesen("rezept-schritte"),
        "tipps": punkteLesen("rezept-tipps"),
        "links": links
    };

    $.ajax({
        url: "http://localhost:8000/api/rezept",
        method: "post",
        contentType: "application/json; charset=utf-8",
        cache: false,
        data: JSON.stringify(obj)
    }).done(function (response) {
        console.log(response);
        // gleich das neue rezept anzeigen
        window.location.href = "rezept.html?id=" + response.id;
    }).fail(function (jqXHR, statusText, error) {
        console.log("Response Code: " + jqXHR.status + " - Fehlermeldung: " + jqXHR.responseText);
        $("#hinzufuegen-hinweis").text("Das Rezept konnte nicht gespeichert werden.");
    });
});

// alle zeilen aus einem textfeld, leere zeilen fallen weg
function zeilenLesen(id) {
    const zeilen = [];
    for (const zeile of document.getElementById(id).value.split("\n")) {
        if (zeile.trim() !== "") {
            zeilen.push(zeile.trim());
        }
    }
    return zeilen;
}

// zutaten, schritte und tipps: jede zeile wird ein punkt, so wie in der vorschau
function punkteLesen(id) {
    const punkte = [];
    for (const zeile of zeilenLesen(id)) {
        punkte.push({ "text": textUmwandeln(zeile) });
    }
    return punkte;
}
