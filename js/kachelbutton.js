const formular = document.getElementById("filter-form");

document.querySelectorAll('button.kachel').forEach(kachel => {
    kachel.addEventListener('click', () => {
        window.location.href = "beispielrezept.html";
    });
});

function filterAnwenden() {
    const auth = document.getElementById("check-a").checked;
    const vertr = document.getElementById("check-v").checked;
    const integr = document.getElementById("check-i").checked;

    if (auth && vertr && integr) {
        window.location.href = "avi.html";
    } else if (auth && vertr) {
        window.location.href = "av.html";
    } else if (auth && integr) {
        window.location.href = "ai.html";
    } else if (vertr && integr) {
        window.location.href = "vi.html";
    } else if (auth) {
        window.location.href = "a.html";
    } else if (vertr) {
        window.location.href = "v.html";
    } else if (integr) {
        window.location.href = "i.html";
    }
}

formular.addEventListener("submit", function (event) {  //die default funktion ausschalten muss man immer machen wenn man mit events arbeitet
    event.preventDefault();
    filterAnwenden();
});

document.addEventListener("keydown", function (event) {   //hab das hinzugefügt weil der naziegen button bei mir schlecht aussah, wenn jetzt enter gedrückt wird dann ist das wie der anzeigen button 
    if (event.key === "Enter") {
        event.preventDefault();
        filterAnwenden();
    }
});

// Rezept-Anzahl oben rechts dynamisch zaehlen
const anzahlEl = document.querySelector(".rezept-anzahl");
if (anzahlEl) {
    const aktuell = document.querySelectorAll(".kachel").length;
    if (location.pathname.endsWith("rezepte.html")) {
        localStorage.setItem("gesamtRezepte", aktuell);
    }
    const gesamt = localStorage.getItem("gesamtRezepte") || 26;
    anzahlEl.textContent = aktuell + " / " + gesamt + " Rezepte";
    fetch("rezepte.html")
        .then(r => r.text())
        .then(html => {
            const alle = (html.match(/class="kachel"/g) || []).length;
            if (alle) {
                localStorage.setItem("gesamtRezepte", alle);
                anzahlEl.textContent = aktuell + " / " + alle + " Rezepte";
            }
        })
        .catch(() => {});
}
