const formular = document.getElementById("filter-form");
const hinweis = document.getElementById("filter-hinweis");


formular.addEventListener("submit", function (event) {
    event.preventDefault();

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
    } else {
    hinweis.textContent = "Bitte wähle zuerst mindestens ein Kästchen aus.";
    }
});

// Hinweis wieder ausblenden, sobald etwas angeklickt wird
formular.addEventListener("change", function () {
    hinweis.textContent = "";
});