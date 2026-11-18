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
