const formular = document.getElementById("filter-form");
const hinweis = document.getElementById("filter-hinweis");


formular.addEventListener("submit", function (event) {
    event.preventDefault();

    // die kuerzel (a, v, i) von allen angeklickten kaestchen sammeln
    const gewaehlt = [];
    for (const box of formular.querySelectorAll("input:checked")) {
        gewaehlt.push(box.value);
    }

    if (gewaehlt.length === 0) {
        hinweis.textContent = "Bitte wähle zuerst mindestens ein Kästchen aus.";
        return;
    }

    // die auswahl kommt hinten an die adresse, z.b. rezepte.html?schutzziel=a,v
    // die rezeptliste liest das dann wieder aus und filtert danach
    window.location.href = "rezepte.html?schutzziel=" + gewaehlt.join(",");
});

// Hinweis wieder ausblenden, sobald etwas angeklickt wird
formular.addEventListener("change", function () {
    hinweis.textContent = "";
});
