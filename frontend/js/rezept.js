// die rest-api laeuft im selben server wie das frontend, deshalb reicht "/api"
const API = "/api";

// die id vom rezept steht hinten in der adresse, z.b. rezept.html?id=4
const parameter = new URLSearchParams(window.location.search);
const id = parameter.get("id");

if (id === null || id === "") {
    fehlerZeigen("Kein Rezept ausgewählt");
} else {
    $.ajax({
        url: API + "/rezept/" + id,
        method: "GET",
        dataType: "json"
    }).done(function (rezept) {
        rezeptZeigen(rezept);
    }).fail(function () {
        fehlerZeigen("Rezept konnte nicht geladen werden");
    });
}


// traegt die daten vom rezept in die leeren stellen von rezept.html ein
function rezeptZeigen(rezept) {
    document.title = "Krypto-Küche – " + rezept.name;
    document.getElementById("rezept-name").textContent = rezept.name;
    document.getElementById("rezept-slogan").textContent = rezept.slogan;

    // in der definition stehen links zu anderen rezepten und sachen wie <em>,
    // deshalb innerHTML, mit textContent wuerde man die tags als text sehen
    document.getElementById("rezept-definition").innerHTML = rezept.definition;

    schutzzieleZeigen(rezept.schutzziele);

    listeFuellen("rezept-zutaten", rezept.zutaten);
    listeFuellen("rezept-schritte", rezept.schritte);
    listeFuellen("rezept-tipps", rezept.tipps);

    // weiterfuehrende links, gehen in einem neuen tab auf
    const linkListe = document.getElementById("rezept-links");
    for (const eintrag of rezept.links) {
        const link = document.createElement("a");
        link.href = eintrag.url;
        link.target = "_blank";
        link.textContent = eintrag.titel;

        const punkt = document.createElement("li");
        punkt.appendChild(link);
        linkListe.appendChild(punkt);
    }

    // nicht jedes rezept hat eine skizze (z.b. tls), dann die ganze box ausblenden
    if (rezept.skizzePfad) {
        const bild = document.getElementById("rezept-skizze");
        bild.src = rezept.skizzePfad;
        bild.alt = rezept.skizzeAlt;
        document.getElementById("rezept-skizze-text").innerHTML = rezept.skizzeText;
    } else {
        document.getElementById("skizze-box").hidden = true;
    }
}


// schutzziele als links, die fuehren zur rezeptliste mit passendem filter
// im rezept stehen nur die kuerzel (z.b. ["a", "i"]),
// den ausgeschriebenen namen holen wir uns aus der schutzziel-liste
function schutzzieleZeigen(kuerzelListe) {
    $.ajax({
        url: API + "/schutzziel",
        method: "GET",
        dataType: "json"
    }).done(function (schutzziele) {
        const ziele = document.getElementById("rezept-schutzziele");
        ziele.textContent = "Schutzziele: ";
        for (const ziel of schutzziele) {
            if (!kuerzelListe.includes(ziel.kuerzel)) {
                continue;
            }
            const link = document.createElement("a");
            link.href = "rezepte.html?schutzziel=" + ziel.kuerzel;
            link.className = "ziel";
            link.textContent = ziel.bezeichnung;
            ziele.appendChild(link);
            ziele.append(" ");      // leerzeichen zwischen den links
        }
    });
}


// macht aus jedem punkt (zutat, schritt oder tipp) einen eigenen listenpunkt
function listeFuellen(listenId, punkte) {
    const liste = document.getElementById(listenId);
    for (const punkt of punkte) {
        const li = document.createElement("li");
        li.innerHTML = punkt;       // auch hier koennen links drin sein
        liste.appendChild(li);
    }
}


// wenn es das rezept nicht gibt oder das backend nicht laeuft
function fehlerZeigen(meldung) {
    document.getElementById("rezept-name").textContent = meldung;
    document.getElementById("rezept-slogan").textContent = "Such dir am besten oben unter Rezepte eins aus.";
    document.getElementById("rezept-seite").hidden = true;     // die leeren kaesten ausblenden
}
