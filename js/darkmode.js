// Darkmode: Zustand wird im localStorage gemerkt, damit er auf allen Seiten gilt
if (localStorage.getItem("darkmode") === "an") {
    document.documentElement.classList.add("dark");
}

document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("darkmode").addEventListener("click", function () {
        var an = document.documentElement.classList.toggle("dark");
        localStorage.setItem("darkmode", an ? "an" : "aus");
    });
});

