# REST-API der Krypto-Küche

Die API und die vorhandenen Seiten laufen gemeinsam auf `http://localhost:3000`. Verwende eine Node.js-LTS-Version ab 22.13. Der SQLite-Treiber `node:sqlite` ist in Node.js enthalten. [Node.js-Dokumentation zu SQLite](https://nodejs.org/download/release/v22.13.0/docs/api/sqlite.html)

Führe im Projektordner diese Befehle aus.

```sh
cd frontend
npm ci
node server.js
```

## Endpunkte

| Methode | Pfad | Antwort |
| --- | --- | --- |
| `GET` | `/api/rezept` | `200` mit einer Liste aller Rezepte nach ID. |
| `GET` | `/api/rezept/:id` | `200` mit einem Rezept, z. B. unter `/api/rezept/1`. Eine unbekannte ID ergibt `404`. |
| `GET` | `/api/rezept?schutzziel=a,i` | `200` mit den Rezepten, die **alle** gewählten Schutzziele erfüllen. |
| `GET` | `/api/schutzziel` | `200` mit einer Liste von Objekten mit `id`, `kuerzel`, `bezeichnung` und `beschreibung`. |
| `POST` | `/api/rezept` | `201` mit dem gespeicherten Rezept und dem `Location`-Header `/api/rezept/<id>`. |

Der Filter akzeptiert ein einzelnes Kürzel (`?schutzziel=a`), eine kommagetrennte Liste (`?schutzziel=a,i`) und wiederholte Parameter (`?schutzziel=a&schutzziel=i`). Die vorhandenen Kürzel sind `a` (Authentizität), `v` (Vertraulichkeit) und `i` (Integrität). Doppelte Kürzel zählen einmal. Ein gültiger Filter ohne Treffer liefert `[]`.

## Rezept speichern

Sende ein JSON-Objekt mit dem Header `Content-Type: application/json`. `name`, `kurztext`, `slogan` und `definition` sind Pflichtfelder und müssen Text enthalten.

```json
{
  "name": "Beispielrezept",
  "kurztext": "Eine kurze Beschreibung für die Rezeptübersicht.",
  "slogan": "Ein Satz für die Rezeptseite.",
  "definition": "Eine Beschreibung des Verfahrens.",
  "schutzziele": ["a", "i"],
  "zutaten": ["Eine Nachricht", "Ein Schlüssel"],
  "schritte": ["Nachricht vorbereiten.", "Schlüssel anwenden."],
  "tipps": ["Schlüssel sicher aufbewahren."],
  "links": [{ "titel": "Weiterlesen", "url": "https://example.org/rezept" }]
}
```

`schutzziele`, `zutaten`, `schritte`, `tipps` und `links` sind optionale Listen und standardmäßig leer. `schutzziele` enthält Kürzel. `zutaten`, `schritte` und `tipps` enthalten je einen Text pro Listenpunkt. Jeder Link hat einen `titel` und eine absolute `url` mit `http` oder `https`. Die API speichert Rezeptpunkte und Links in der übermittelten Reihenfolge.

`skizzePfad`, `skizzeAlt` und `skizzeText` sind optionale Textfelder und standardmäßig `null`. `skizzePfad` nimmt einen vorhandenen Pfad wie `bilder/skizze-hmac.svg` auf. Der Endpunkt verarbeitet JSON und speichert den Pfad als Text.

Alle Rezeptantworten enthalten die oben genannten Felder sowie `id` und `erstelltAm`. Der Server erzeugt die numerische ID und setzt das Erstellungsdatum im Format `YYYY-MM-DD` in UTC. Ungültige Eingaben wie fehlerhaftes JSON, fehlende Pflichtfelder, ungültige IDs oder unbekannte Kürzel ergeben `400` mit einem JSON-Objekt der Form `{"fehler":"…"}`.

## In Postman testen

1. Starte den Server wie oben beschrieben.
2. Importiere [Krypto-Kueche.postman_collection.json](Krypto-Kueche.postman_collection.json) über **Import** in der Postman-Desktop-App. Die Sammlung verwendet `http://localhost:3000`.
3. Wähle den Ordner **Lesen und Eingaben prüfen** und starte ihn über **Run**. Für eine einzelne Anfrage kannst du **Send** wählen. Unter **Test Results** siehst du, welche Prüfungen bestanden wurden.

### Rezept mit einer Datenbankkopie anlegen

Beende den laufenden Server zuerst mit `Strg+C`. Führe die folgenden Befehle im Projektordner in PowerShell aus. Sie kopieren das Backend mit der SQLite-Datei und das Frontend mit den bereits installierten Abhängigkeiten in einen temporären Ordner.

```powershell
$testordner = Join-Path ([IO.Path]::GetTempPath()) ("krypto-kueche-postman-" + [guid]::NewGuid())
New-Item -ItemType Directory -Path $testordner | Out-Null
Copy-Item -LiteralPath backend, frontend -Destination $testordner -Recurse
node (Join-Path $testordner "frontend/server.js")
```

Setze in der Sammlung unter **Variables** den Wert von `schreibtests` auf `true`. Starte den Ordner **Schreibtest mit Datenbankkopie** über **Run**. Die erste Anfrage legt ein Testrezept an und prüft `201 Created` sowie den Header `Location`. Die zweite Anfrage ruft das Rezept über diesen Pfad ab und vergleicht die gespeicherten Daten. Setze `schreibtests` anschließend wieder auf `false`.
