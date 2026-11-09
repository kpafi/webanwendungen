
document.getElementById("skizze").addEventListener("change", function () {
    const datei = this.files[0];
    if (!datei) {
        return;     // auswahl wurde abgebrochen
    }
    document.getElementById("vorschau").src = URL.createObjectURL(datei);
});
