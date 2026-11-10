
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

// vorschau unter dem textfeld, da sieht man die links so wie spaeter im rezept
// im textfeld selber geht das nicht, ein textarea kann nur einfachen text ohne farben
function vorschauZeigen(feld) {
    // erst alle html zeichen unschaedlich machen, damit niemand irgendwas anderes einschleusen kann
    let text = feld.value.replaceAll("&", "&amp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;");

    // und dann nur die links zu unseren rezepten wieder zu echten links machen
    // target="_blank" damit der link in einem neuen tab aufgeht und das formular nicht weg ist
    text = text.replace(/&lt;a href="(rezept-[a-z0-9-]+\.html)"&gt;(.*?)&lt;\/a&gt;/g, '<a href="$1" target="_blank">$2</a>');

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
