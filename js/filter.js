const formular = document.getElementById("filter-form");

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
    }
});