const formular = document.getElementById("filter-form");

document.querySelectorAll('.kachel').forEach(kachel => {
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
