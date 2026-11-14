-- ------------------------------
-- DB Modell zu Web-Anwendungen Praktikum API
-- V 4.8.0 14.09.2026
-- Insert Statements (with disables foreign key constraints)

-- DISABLE FOREIGN KEYS
PRAGMA foreign_keys = 0;


-- ------------------------------
-- Adresse
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (1, 'Pfeifferweg', '1', '', '72336', 'Balingen', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (2, 'Am Wasserturm', '12', '', '72458', 'Albstadt', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (3, 'Mardertal', '4', 'Rückseite', '72070', 'Tübingen', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (4, 'Holunderstraße', '211', '', '70000', 'Stuttgart', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (5, 'Kurzer Weg', '9', '', '72070', 'Tübingen', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (6, 'Hohensteigstr.', '34', '', '72458', 'Albstadt-Ebingen', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (7, 'Heisenbergstraße', '7', '1. Stock', '70000', 'Stuttgart', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (8, 'Dettenseestraße', '99', '', '72488', 'Sigmaringen', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (9, 'Lange Straße', '48', '', '72336', 'Balingen', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (10, 'Arztplatz', '4', '', '72116', 'Mössingen', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (11, 'Alte Brücke', '2a', '', '66119', 'Saarbrücken', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (12, 'Fressgasse', '19', '', '60320', 'Frankfurt', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (13, 'Stoppelweg', '87', '', '01594', 'Stauchitz', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (14, 'Prachtstraße', '1A', '', '27404', 'Heeslingen', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (15, 'Johannesstraße', '3', '', '72458', 'Albstadt-Ebingen', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (16, 'Schloss Hohenheim', '1', '', '70599', 'Stuttgart', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (17, 'Wilhelm-Kraut-Straße', '65', 'Stammwerk', '72336', 'Balingen', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (18, 'Parkweg', '2', '', '72458', 'Albstadt', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (19, 'Mercedesstraße', '120', '', '70372', 'Stuttgart', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (20, 'Frankfurter Ring', '35', '', '80807', 'München', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (21, 'Arabellastraße', '4', '', '81925', 'München', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (22, 'Carl-Bosch-Straße', '38', '', '67056', 'Ludwigshafen', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (23, 'Rauhmühle', '2', '', '71111', 'Waldenbuch', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (24, 'Alte Kaserne', '6', '', '72186', 'Empfingen', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (25, 'Fuhrmannstraße', '7', '', '72351', 'Geislingen - Binsdorf', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (26, 'Madertal', '11', '', '72401', 'Haigerloch', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (27, 'Finkenstraße', '9', '', '72181', 'Starzach', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (28, 'Lange Straße', '9', '', '72336', 'Balingen', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (29, 'Berliner Straße', '94', '', '72458', 'Albstadt', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (30, 'Rosenthaler Straße', '31', '', '10178', 'Berlin', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (31, 'Bramfelder Straße', '140', '', '22305', 'Hamburg', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (32, 'Schmiechastraße', '50', '', '72458', 'Albstadt', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (33, 'Schnarrenbergstraße', '95', '', '72076', 'Tübingen', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (34, 'Klaus-Conrad-Straße', '1', '', '92240', 'Hirschau', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (35, 'Hindenburgstraße', '8', '', '71106', 'Magstadt', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (36, 'Meta Way', '1', '', '94025', 'Menlo Park, CA', 222);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (37, 'Amphitheatre Parkway', '1600', '', '94043', 'Mountain View, CA', 222);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (38, 'Neue Brücke', '17b', '', '66119', 'Saarbrücken', 44);
INSERT INTO Adresse (id, strasse, hausnummer, adresszusatz, plz, ort, landId) VALUES (39, 'Hasenschanze', '69', '', '01594', 'Stauchitz', 44);

-- ------------------------------
-- Benutzer
-- Hinweis: Passworte wurden von Hand in JavaScript md5 gehashed
-- Administrativer Benutzer, Username: master, Passwort: blaster
INSERT INTO Benutzer (id, benutzername, passwort, benutzerrolleId) VALUES (1, 'master', '1e0ad2ec7e8c3cc595a9ec2e3762b117', 1);
-- Moderator Benutzer, Username: petra, Passwort: kopf-4
INSERT INTO Benutzer (id, benutzername, passwort, benutzerrolleId) VALUES (2, 'petra', 'ebcc2dab05dadfbf8706e23ba43ceb44', 2);
-- Normaler Benutzer, Username: little, Passwort: child123
INSERT INTO Benutzer (id, benutzername, passwort, benutzerrolleId) VALUES (3, 'little', '32c0dde2bdb8ef39947256fca8b4a0fc', 3);
-- Normaler Benutzer für Login Beispiel, Username: max, Passwort: blaster1234
INSERT INTO Benutzer (id, benutzername, passwort, benutzerrolleId) VALUES (4, 'max', '538ad13966664ed10334ff1a2ec8961f', 3);

-- ------------------------------
-- Benutzerrolle
INSERT INTO Benutzerrolle (id, bezeichnung) VALUES (1, 'Administrator');
INSERT INTO Benutzerrolle (id, bezeichnung) VALUES (2, 'Moderator');
INSERT INTO Benutzerrolle (id, bezeichnung) VALUES (3, 'Benutzer');

-- ------------------------------
-- Bestellposition
INSERT INTO Bestellposition (id, bestellungId, produktId, menge) VALUES (1, 1, 5, 1);
INSERT INTO Bestellposition (id, bestellungId, produktId, menge) VALUES (2, 1, 11, 1);
INSERT INTO Bestellposition (id, bestellungId, produktId, menge) VALUES (3, 2, 18, 3);
INSERT INTO Bestellposition (id, bestellungId, produktId, menge) VALUES (4, 2, 23, 1);
INSERT INTO Bestellposition (id, bestellungId, produktId, menge) VALUES (5, 2, 30, 5);
INSERT INTO Bestellposition (id, bestellungId, produktId, menge) VALUES (6, 3, 6, 1);
INSERT INTO Bestellposition (id, bestellungId, produktId, menge) VALUES (7, 3, 13, 1);
INSERT INTO Bestellposition (id, bestellungId, produktId, menge) VALUES (8, 3, 21, 1);
INSERT INTO Bestellposition (id, bestellungId, produktId, menge) VALUES (9, 3, 32, 2);
INSERT INTO Bestellposition (id, bestellungId, produktId, menge) VALUES (10, 3, 14, 1);
INSERT INTO Bestellposition (id, bestellungId, produktId, menge) VALUES (11, 4, 8, 1);
INSERT INTO Bestellposition (id, bestellungId, produktId, menge) VALUES (12, 4, 16, 10);
INSERT INTO Bestellposition (id, bestellungId, produktId, menge) VALUES (13, 5, 4, 1);
INSERT INTO Bestellposition (id, bestellungId, produktId, menge) VALUES (14, 5, 16, 1);

-- ------------------------------
-- Bestellung
INSERT INTO Bestellung (id, bestellzeitpunkt, bestellerId, zahlungsartId) VALUES (1, '2025-08-17 19:08:02', 2, 1);
INSERT INTO Bestellung (id, bestellzeitpunkt, bestellerId, zahlungsartId) VALUES (2, '2025-08-25 11:44:45', 7, 2);
INSERT INTO Bestellung (id, bestellzeitpunkt, bestellerId, zahlungsartId) VALUES (3, '2025-09-08 02:05:04', 14, 2);
INSERT INTO Bestellung (id, bestellzeitpunkt, bestellerId, zahlungsartId) VALUES (4, '2025-09-26 08:33:34', 10, 3);
INSERT INTO Bestellung (id, bestellzeitpunkt, bestellerId, zahlungsartId) VALUES (5, '2025-09-28 16:34:21', 1, 1);

-- ------------------------------
-- Bewertung
INSERT INTO Bewertung (id, gerichtId, punkte, zeitpunkt, bemerkung, ersteller) VALUES (1, 5, 4, '2025-09-18 17:16:15', 'Fast perfekt', 'Mr. NoName');
INSERT INTO Bewertung (id, gerichtId, punkte, zeitpunkt, bemerkung, ersteller) VALUES (2, 5, 2, '2025-10-02 10:22:33', 'Ich mag es einfach nicht', 'Stinki');
INSERT INTO Bewertung (id, gerichtId, punkte, zeitpunkt, bemerkung, ersteller) VALUES (3, 1, 5, '2025-10-03 08:05:12', 'Ab zur Arbeit', 'Frau Fleißig');

-- ------------------------------
-- Branche
INSERT INTO Branche (id, bezeichnung) VALUES (1, 'Industrie');
INSERT INTO Branche (id, bezeichnung) VALUES (2, 'Landwirtschaft');
INSERT INTO Branche (id, bezeichnung) VALUES (3, 'Dienstleistung');
INSERT INTO Branche (id, bezeichnung) VALUES (4, 'Handwerk');
INSERT INTO Branche (id, bezeichnung) VALUES (5, 'Gesundheit');
INSERT INTO Branche (id, bezeichnung) VALUES (6, 'Bildung');

-- ------------------------------
-- Download
INSERT INTO Download (id, bezeichnung, beschreibung, dateipfad) VALUES (1, 'Datenblatt Trident RAM', 'PDF Datei', 'download/F5-6000J3038F16GX2-TZ5NR.pdf');
INSERT INTO Download (id, bezeichnung, beschreibung, dateipfad) VALUES (2, 'Samsung Monitor', 'PDF Datei', 'download/C43J890DKU.pdf');
INSERT INTO Download (id, bezeichnung, beschreibung, dateipfad) VALUES (3, 'AMD Ryzen 7 Datasheet', 'PDF Datei', 'download/kiebel.de-amd-ryzen-7-9800x3d-8-kerne-4.7-bis-5.2-ghz-3033665.pdf');
INSERT INTO Download (id, bezeichnung, beschreibung, dateipfad) VALUES (4, 'Intel Core i9 Datasheet', 'PDF Datei', 'download/datasheet-2497563-intel-core-i9-i9-12900k-16-x-32-ghz-16-core-procesor-socket-intel-1700-241-w.pdf');
INSERT INTO Download (id, bezeichnung, beschreibung, dateipfad) VALUES (5, 'ASUS Zenscreen Datasheet', 'PDF Datei', 'download/12087170.pdf');
INSERT INTO Download (id, bezeichnung, beschreibung, dateipfad) VALUES (6, 'Seagate IronWolf Specs', 'PDF Datei', 'download/ironwolf-specs.pdf');
INSERT INTO Download (id, bezeichnung, beschreibung, dateipfad) VALUES (7, 'WD RED Family', 'PDF Datei', 'download/data-sheet-wd-red.pdf');
INSERT INTO Download (id, bezeichnung, beschreibung, dateipfad) VALUES (8, 'Palit GeForce 3060 Manual', 'PDF Datei', 'download/Manual_M-PA13C.pdf');
INSERT INTO Download (id, bezeichnung, beschreibung, dateipfad) VALUES (9, 'ASUS Rog Strix B550-A', 'PDF Datei', 'download/849c995c-16c0-57c8-a8e2-d369a010d395.pdf');
INSERT INTO Download (id, bezeichnung, beschreibung, dateipfad) VALUES (10, 'Logitech MX Master Maus', 'PDF Datei', 'download/mx-master.pdf');

-- ------------------------------
-- Einheit
INSERT INTO Einheit (id, bezeichnung) VALUES (1, 'kg');
INSERT INTO Einheit (id, bezeichnung) VALUES (2, 'g');
INSERT INTO Einheit (id, bezeichnung) VALUES (3, 'EL');
INSERT INTO Einheit (id, bezeichnung) VALUES (4, 'TL');
INSERT INTO Einheit (id, bezeichnung) VALUES (5, 'Liter');
INSERT INTO Einheit (id, bezeichnung) VALUES (6, 'dl');
INSERT INTO Einheit (id, bezeichnung) VALUES (7, 'ml');
INSERT INTO Einheit (id, bezeichnung) VALUES (8, 'Prise');
INSERT INTO Einheit (id, bezeichnung) VALUES (9, 'Stück');
INSERT INTO Einheit (id, bezeichnung) VALUES (10, 'Kopf');
INSERT INTO Einheit (id, bezeichnung) VALUES (11, 'Zehe');

-- ------------------------------
-- Film
INSERT INTO Film (id, bezeichnung, beschreibung, genreId, fsk, dauer, regie, darsteller, preis, coverpfad, videopfad, imdb) VALUES (1, 'Star Wars - Episode IV - Eine neue Hoffnung', 'Luke Skywalker verbündet sich mit einem Jedi-Ritter, einem großspurigen Piloten, einem Wookie und zwei Droiden, um die Galaxie vor der Welt zerstörenden Raumstation des Imperiums zu bewahren, während er gleichzeitig Prinzessin Leia aus den Händen des bösen Darth Vader zu retten versucht.', 9, 12, 121, 'George Lucas', 'Mark Hamil, Harrison Ford, Carrie Fischer', 8.5, 'filmcover/MV5BN2Q5OGZkODktYjkxNy00MzZlLTg5MmEtY2Q1M2YzNzg4ODllXkEyXkFqcGc@._V1_FMjpg_UY2684_.jpg', '1434659607842-pgv4ql-1616202535791.mp4', 'https://www.imdb.com/de/title/tt0076759/');
INSERT INTO Film (id, bezeichnung, beschreibung, genreId, fsk, dauer, regie, darsteller, preis, coverpfad, videopfad, imdb) VALUES (2, 'Die Verurteilten', 'Zwei Gefängnisinsassen freunden sich im Lauf der Jahre an und finden Trost und schließlich Erlösung, indem sie anständig bleiben und Gutes tun.', 2, 12, 142, 'Frank Darabont', 'Tim Robbins, Morgan Freeman', 10.0, 'filmcover/MV5BOTcxMDAzNTcwM15BMl5BanBnXkFtZTgwNjQ2MjEyMDE@._V1_FMjpg_UX350_.jpg', NULL, 'https://www.imdb.com/de/title/tt0111161/');
INSERT INTO Film (id, bezeichnung, beschreibung, genreId, fsk, dauer, regie, darsteller, preis, coverpfad, videopfad, imdb) VALUES (3, 'Der Pate', 'Der alternde Patriarch einer Verbrecherdynastie will die Herrschaft über sein geheimes Reich auf seinen widerwilligen Sohn übertragen.', 8, 16, 175, 'Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan', 8.5, 'filmcover/MV5BZmNiNzM4MTctODI5YS00MzczLWE2MzktNzY4YmNjYjA5YmY1XkEyXkFqcGc@._V1_FMjpg_UX800_.jpg', NULL, 'https://www.imdb.com/de/title/tt0068646/');
INSERT INTO Film (id, bezeichnung, beschreibung, genreId, fsk, dauer, regie, darsteller, preis, coverpfad, videopfad, imdb) VALUES (4, 'The Dark Knight', 'Als der fiese Joker Verwüstung und Chaos über die Menschen in Gotham bringt, muss sich der "dunkle Ritter" einer der härtesten psychologischen Prüfungen seiner Fähigkeit, Unrecht zu bekämpfen, unterziehen.', 1, 16, 152, 'Christopher Nolan', 'Christian Bale, Heath Ledger, Aaron Eckhart', 8.5, 'filmcover/MV5BNjgyM2JlNmQtN2NkNC00MTZhLTkxMTgtYTNiNzBiNzAzN2VlXkEyXkFqcGc@._V1_FMjpg_UY3771_.jpg', NULL, 'https://www.imdb.com/de/title/tt0468569/');
INSERT INTO Film (id, bezeichnung, beschreibung, genreId, fsk, dauer, regie, darsteller, preis, coverpfad, videopfad, imdb) VALUES (5, 'Der Herr der Ringe - Die Rückkehr des Königs', 'Gandalf und Aragorn führen die Männer der Mittelerde in den Kampf gegen Saurons Armee, um ihn von Frodo und Sam abzulenken, die sich gerade dem Schicksalsberg mit dem Einen Ring nähern.', 4, 12, 201, 'Peter Jackson', 'Elijah Wood, Viggo Mortensen, Ian McKellen', 9.0, 'filmcover/MV5BOWRmOTdkNjctY2YxMC00Y2E4LWFkMjktMzVmNjAxN2RmODJhXkEyXkFqcGc@._V1_FMjpg_UY3752_.jpg', NULL, 'https://www.imdb.com/de/title/tt0167260/');
INSERT INTO Film (id, bezeichnung, beschreibung, genreId, fsk, dauer, regie, darsteller, preis, coverpfad, videopfad, imdb) VALUES (6, 'Schindlers Liste', 'Im Zweiten Weltkrieg macht sich Oskar Schindler in dem von den Deutschen besetzten Polen zunehmend Sorgen um seine jüdischen Mitarbeiter, nachdem er Zeuge von deren Verfolgung durch die Nazis geworden ist.', 6, 12, 195, 'Steven Spielberg', 'Liam Neeson, Ralph Fiennes, Ben Kingsley', 7.5, 'filmcover/MV5BMjAzNTg4MzUtNzBjNC00OGE1LWE3YmQtYWNiY2UwYWJlY2YxXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', NULL, 'https://www.imdb.com/de/title/tt0108052/');
INSERT INTO Film (id, bezeichnung, beschreibung, genreId, fsk, dauer, regie, darsteller, preis, coverpfad, videopfad, imdb) VALUES (7, 'Der Soldat James Ryan', 'Im Anschluss an die Landung in der Normandie begibt sich eine Gruppe von US-Soldaten hinter die feindlichen Linien, um einen Fallschirmjäger herauszuholen, dessen Bruder im Kampf gefallen ist.', 6, 16, 169, 'Steven Spielberg', 'Tom Hanks, Matt Damon, Tom Sizemore', 11.5, 'filmcover/MV5BODhhNmFhMWMtYmUxOC00NzNmLWE5NzUtY2Q0ZDVhMjg5MWEwXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', NULL, 'https://www.imdb.com/de/title/tt0120815/');
INSERT INTO Film (id, bezeichnung, beschreibung, genreId, fsk, dauer, regie, darsteller, preis, coverpfad, videopfad, imdb) VALUES (8, 'Das Ding aus einer anderen Welt', 'Es ist die erste Woche im Winter des Jahres 1982. Eine amerikanische Forschungsstation bekommt Besuch von einer außerirdischen Kraft, die alles assimilieren kann, was sie berührt. Das Überleben der Forscher hängt nun ganz davon ab, zu wissen, wer noch Mensch ist oder wer schon ein Ding aus der anderen Welt geworden ist.', 5, 16, 109, 'John Carpenter', 'Kurt Russel, Wilford Brimley, Keith David', 12.0, 'filmcover/MV5BZmI0ODI5ZjEtYzFjNi00MTdkLWEzZDYtYTc2ZjJmNTgxMzNhXkEyXkFqcGc@._V1_FMjpg_UX319_.jpg', NULL, 'https://www.imdb.com/de/title/tt0084787/');
INSERT INTO Film (id, bezeichnung, beschreibung, genreId, fsk, dauer, regie, darsteller, preis, coverpfad, videopfad, imdb) VALUES (9, 'Das Schweigen der Lämmer', 'Eine junge FBI-Agentenanwärterin muss sich einem inhaftierten und manipulativen Mörder anvertrauen, um von ihm die notwendige Hilfe zu erhalten, einen anderen Serienmörder fassen zu können, der seinen Opfern die Haut abzieht.', 8, 16, 118, 'Jonathan Demme', 'Jodie Foster, Anthony Hopkins', 9.5, 'filmcover/MV5BMTM5N2JiN2YtNmVmZS00YTA4LWI0NDgtMzFiMjRmZDU2YmUzXkEyXkFqcGc@._V1_FMjpg_UX527_.jpg', NULL, 'https://www.imdb.com/de/title/tt0102926/');
INSERT INTO Film (id, bezeichnung, beschreibung, genreId, fsk, dauer, regie, darsteller, preis, coverpfad, videopfad, imdb) VALUES (10, 'Interstellar', 'Ein Forscherteam reist auf der Suche nach neuen Welten durch ein Wurmloch im Universum, um das Überleben der Menschheit sicherzustellen.', 9, 12, 169, 'Christopher Nolan', 'Matthew McConaughey, Anne Hathaway, Jessica Chastain', 10.5, 'filmcover/MV5BNmIwM2E3YjMtYWUxYi00M2ZkLWFmMzktZWFiYTU4MGM2YTk2XkEyXkFqcGc@._V1_FMjpg_UY3508_.jpg', NULL, 'https://www.imdb.com/de/title/tt0816692/');
INSERT INTO Film (id, bezeichnung, beschreibung, genreId, fsk, dauer, regie, darsteller, preis, coverpfad, videopfad, imdb) VALUES (11, 'Zwei glorreiche Halunken', 'Eine betrügerische Kopfgeldjagd lässt zwei Männer ein wackeliges Bündnis gegen einen dritten eingehen, um einen Goldschatz zu finden, der in einem abgelegenen Friedhof vergraben ist.', 11, 18, 161, 'Sergio Leone', 'Clint Eastwood, Eli Wallach, Lee van Cleef', 11, 'filmcover/MV5BNjgyOWViNjYtZDFjOC00NDg1LWFmZDYtNmVmYjdiYWE5YTljXkEyXkFqcGc@._V1_FMjpg_UY2935_.jpg', NULL, 'https://www.imdb.com/de/title/tt0060196/');
INSERT INTO Film (id, bezeichnung, beschreibung, genreId, fsk, dauer, regie, darsteller, preis, coverpfad, videopfad, imdb) VALUES (12, 'Forrest Gump', 'Forrest Gump, obgleich nicht sonderlich mit Intelligenz gesegnet, war doch durch Zufall bei vielen historischen Augenblicken zugegen; Jenny Curran, seine große Liebe, entzieht sich ihm jedoch.', 2, 12, 142, 'Robert Zemeckis', 'Tom Hanks, Robin Wright, Gary Sinise', 8, 'filmcover/MV5BYmM4MDY3NWUtMmI1YS00NTZjLTgwYWQtYzA1MGNkMTIxYjA4XkEyXkFqcGc@._V1_FMjpg_UX220_.jpg', NULL, 'https://www.imdb.com/de/title/tt0109830/');
INSERT INTO Film (id, bezeichnung, beschreibung, genreId, fsk, dauer, regie, darsteller, preis, coverpfad, videopfad, imdb) VALUES (13, 'Einer flog über das Kuckucksnest', 'Ein Krimineller täuscht, nachdem er wieder einmal in Schwierigkeiten geraten ist, eine Geisteskrankheit vor und wird in eine psychiatrische Anstalt eingewiesen, wo er gegen eine repressive Krankenschwester rebelliert und die verängstigten Patienten um sich schart.', 3, 12, 133, 'Milos Forman', 'Jack Nicholson, Louise Fletcher, Michael Berryman', 10, 'filmcover/MV5BMWNjNTMxODQtNThlNy00ZDdkLWIxNGYtZWMyMGQzZjZiZGJmXkEyXkFqcGc@._V1_FMjpg_UY2867_.jpg', NULL, 'https://www.imdb.com/de/title/tt0073486/');

-- ------------------------------
-- Filmgenre
INSERT INTO Filmgenre (id, bezeichnung) VALUES (1, 'Action');
INSERT INTO Filmgenre (id, bezeichnung) VALUES (2, 'Drama');
INSERT INTO Filmgenre (id, bezeichnung) VALUES (3, 'Komödie');
INSERT INTO Filmgenre (id, bezeichnung) VALUES (4, 'Fantasy');
INSERT INTO Filmgenre (id, bezeichnung) VALUES (5, 'Horror');
INSERT INTO Filmgenre (id, bezeichnung) VALUES (6, 'Krieg');
INSERT INTO Filmgenre (id, bezeichnung) VALUES (7, 'Musik');
INSERT INTO Filmgenre (id, bezeichnung) VALUES (8, 'Thriller');
INSERT INTO Filmgenre (id, bezeichnung) VALUES (9, 'Science Fiction');
INSERT INTO Filmgenre (id, bezeichnung) VALUES (10, 'Sport');
INSERT INTO Filmgenre (id, bezeichnung) VALUES (11, 'Western');
INSERT INTO Filmgenre (id, bezeichnung) VALUES (12, 'Dokumentation');

-- ------------------------------
-- Firma
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (1, 'Autohaus Ulrich', 'Michael Ulrich', 'Top Autowerkstatt', 3, 3, 3);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (2, 'Maier Immobilien', 'Justus Maier', '', 6, 6, 3);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (3, 'Hochschule Albstadt-Sigmaringen', 'Frau Mühldorfer', 'Ja genau hier sind Sie richtig', 15, NULL, 6);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (4, 'Universität Hohenheim', 'Max Mustermann', '', 16, NULL, 6);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (5, 'Bizerba SE & Co. KG', 'Herr Kraut', '', 17, NULL, 1);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (6, 'Groz-Beckert KG', 'Konsortium', '', 18, NULL, 1);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (7, 'Mercedes Benz AG', '', '', 19, NULL, 1);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (8, 'BMW', '', 'Hauptniederlassung', 20, NULL, 1);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (9, 'BayWa AG', 'Dr. Frank Hiller', '', 21, NULL, 2);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (10, 'BASF SE Agriculture', 'Markus Kamieth', '', 22, NULL, 2);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (11, 'Everclear GmbH', '', 'Tip Top Sauber', 23, NULL, 3);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (12, 'Putzteufel', 'Herr Diabolo', '', 24, NULL, 3);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (13, 'Solera GmbH', '', 'Hier scheint immer die Sonne', 25, NULL, 4);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (14, 'Hemmer GmbH Haustechnik', 'Dieter Hemmer', '', 26, NULL, 4);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (15, 'Faiss Elektrotechnik KG', 'Armin Faiss', '', 27, NULL, 4);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (16, 'Bauhaus Balingen', '', '', 28, NULL, 4);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (17, 'Toom Albstadt', '', '', 29, NULL, 4);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (18, 'AOK - Die Gesundheitskasse', '', 'Hauptzentrale', 30, NULL, 5);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (19, 'Techniker Krankenkasse', 'Dr. Jens Baas', '', 31, NULL, 5);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (20, 'Herzdoktor', 'Frau Doktor', 'Hier wird Ihnen geholfen', 32, NULL, 5);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (21, 'BG Klinik', '', 'Knochen und Brüche sind unser Ding', 33, NULL, 5);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (22, 'Conrad Elektronic SE', 'Herr Conrad', '', 34, NULL, 3);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (23, 'ARLT Computer GmbH', '', '', 35, NULL, 3);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (24, 'Whatsapp LLC', 'Herr Zucker Berg', '', 36, NULL, 3);
INSERT INTO Firma (id, name, inhaber, beschreibung, adresseId, ansprechpartnerId, brancheId) VALUES (25, 'Google', 'Sundar Pichai', 'Sie haben uns in der Hand', 37, NULL, 3);

-- ------------------------------
-- Forumsbenutzer
INSERT INTO Forumsbenutzer (id, benutzername, geschlecht, geburtstag, beitritt, rolleId) VALUES (1, 'Modi', 0, '1969-11-02', '2020-01-02', 2);
INSERT INTO Forumsbenutzer (id, benutzername, geschlecht, geburtstag, beitritt, rolleId) VALUES (2, 'Hacke', 0, '2001-10-21', '2020-04-23', 3);
INSERT INTO Forumsbenutzer (id, benutzername, geschlecht, geburtstag, beitritt, rolleId) VALUES (3, 'Lisl', 1, '1985-09-21', '2020-07-08', 3);
INSERT INTO Forumsbenutzer (id, benutzername, geschlecht, geburtstag, beitritt, rolleId) VALUES (4, 'Jenni04', 1, '2000-04-01', '2020-02-22', 3);
INSERT INTO Forumsbenutzer (id, benutzername, geschlecht, geburtstag, beitritt, rolleId) VALUES (5, 'TMaN', 0, '1996-01-24', '2020-11-05', 3);
INSERT INTO Forumsbenutzer (id, benutzername, geschlecht, geburtstag, beitritt, rolleId) VALUES (6, 'Madison', 1, '1996-01-25', '2020-11-30', 1);

-- ------------------------------
-- Forumsbereich
INSERT INTO Forumsbereich (id, thema, beschreibung, administratorId) VALUES (1, 'Allgemeines', 'Hier gehts um ganz allgemeines', 1);
INSERT INTO Forumsbereich (id, thema, beschreibung, administratorId) VALUES (2, 'Prüfungen', 'Rund um Prüfungen und Abschlüsse', 6);
INSERT INTO Forumsbereich (id, thema, beschreibung, administratorId) VALUES (3, 'Studieren im Ausland', 'Sie möchten ins Ausland, dann sind Sie hier genau richtig', 6);
INSERT INTO Forumsbereich (id, thema, beschreibung, administratorId) VALUES (4, 'Vorlesungen', 'Wer macht was, kann man bei irgend was helfen', 1);

-- ------------------------------
-- Forumseintrag
INSERT INTO Forumseintrag (id, beitrag, erstellerId, erstellzeitpunkt, bereichsId, vaterId, entfernt) VALUES (1, 'Ein erster Eintrag', 6, '2025-07-12 19:22:35', 1, NULL, 0);
INSERT INTO Forumseintrag (id, beitrag, erstellerId, erstellzeitpunkt, bereichsId, vaterId, entfernt) VALUES (2, 'Und was ist hier das Thema?', 1, '2025-07-14 21:22:55', 2, NULL, 0);
INSERT INTO Forumseintrag (id, beitrag, erstellerId, erstellzeitpunkt, bereichsId, vaterId, entfernt) VALUES (3, 'Keine Ahnung, aber hört sich interessant an', 4, '2025-07-14 23:04:01', 2, NULL, 0);
INSERT INTO Forumseintrag (id, beitrag, erstellerId, erstellzeitpunkt, bereichsId, vaterId, entfernt) VALUES (4, 'Bist du sicher?', 5, '2025-07-14 23:23:23', NULL, 3, 0);
INSERT INTO Forumseintrag (id, beitrag, erstellerId, erstellzeitpunkt, bereichsId, vaterId, entfernt) VALUES (5, 'Naja, ich weiß nicht', 3, '2025-07-15 02:03:04', NULL, 3, 0);
INSERT INTO Forumseintrag (id, beitrag, erstellerId, erstellzeitpunkt, bereichsId, vaterId, entfernt) VALUES (6, 'Aber sicher dat', 4, '2025-07-15 04:05:06', NULL, 4, 0);
INSERT INTO Forumseintrag (id, beitrag, erstellerId, erstellzeitpunkt, bereichsId, vaterId, entfernt) VALUES (7, 'Ich schreib hier mal was rein', 2, '2025-07-17 11:09:28', 4, NULL, 0);
INSERT INTO Forumseintrag (id, beitrag, erstellerId, erstellzeitpunkt, bereichsId, vaterId, entfernt) VALUES (8, 'Ok, alles klar', 3, '2025-07-12 22:01:15', NULL, 7, 1);
INSERT INTO Forumseintrag (id, beitrag, erstellerId, erstellzeitpunkt, bereichsId, vaterId, entfernt) VALUES (9, 'Ok, natürlich', 3, '2025-07-12 22:02:10', NULL, 7, 0);
INSERT INTO Forumseintrag (id, beitrag, erstellerId, erstellzeitpunkt, bereichsId, vaterId, entfernt) VALUES (10, 'Tülletü', 5, '2025-07-20 15:21:19', NULL, 4, 0);

-- ------------------------------
-- Galerie
INSERT INTO Galerie (id, name, dateigroesse, mimeType, bildpfad, erstellzeitpunkt) VALUES (1, '11350', 1787483, 'image/jpeg', 'galerie/11350.jpg', '2025-09-23 17:03:21');
INSERT INTO Galerie (id, name, dateigroesse, mimeType, bildpfad, erstellzeitpunkt) VALUES (2, '1153', 884648, 'image/jpeg', 'galerie/1153.jpg', '2025-09-23 17:03:22');
INSERT INTO Galerie (id, name, dateigroesse, mimeType, bildpfad, erstellzeitpunkt) VALUES (3, '17120', 2186337, 'image/jpeg', 'galerie/17120.jpg', '2025-09-23 17:03:23');
INSERT INTO Galerie (id, name, dateigroesse, mimeType, bildpfad, erstellzeitpunkt) VALUES (4, '2150724895', 2016690, 'image/jpeg', 'galerie/2150724895.jpg', '2025-09-23 17:03:24');
INSERT INTO Galerie (id, name, dateigroesse, mimeType, bildpfad, erstellzeitpunkt) VALUES (5, '2151839181', 1681822, 'image/jpeg', 'galerie/2151839181.jpg', '2025-09-23 17:03:25');
INSERT INTO Galerie (id, name, dateigroesse, mimeType, bildpfad, erstellzeitpunkt) VALUES (6, '22273', 1320582, 'image/jpeg', 'galerie/22273.jpg', '2025-09-23 17:03:26');
INSERT INTO Galerie (id, name, dateigroesse, mimeType, bildpfad, erstellzeitpunkt) VALUES (7, '22918', 2035836, 'image/jpeg', 'galerie/22918.jpg', '2025-09-23 17:03:27');
INSERT INTO Galerie (id, name, dateigroesse, mimeType, bildpfad, erstellzeitpunkt) VALUES (8, '27136', 2097772, 'image/jpeg', 'galerie/27136.jpg', '2025-09-23 17:03:28');
INSERT INTO Galerie (id, name, dateigroesse, mimeType, bildpfad, erstellzeitpunkt) VALUES (9, '29198', 2654079, 'image/jpeg', 'galerie/29198.jpg', '2025-09-23 17:03:29');
INSERT INTO Galerie (id, name, dateigroesse, mimeType, bildpfad, erstellzeitpunkt) VALUES (10, '29267', 2104482, 'image/jpeg', 'galerie/29267.jpg', '2025-09-23 17:03:30');
INSERT INTO Galerie (id, name, dateigroesse, mimeType, bildpfad, erstellzeitpunkt) VALUES (11, '4777', 2010072, 'image/jpeg', 'galerie/4777.jpg', '2025-09-23 17:03:31');
INSERT INTO Galerie (id, name, dateigroesse, mimeType, bildpfad, erstellzeitpunkt) VALUES (12, '508', 1811978, 'image/jpeg', 'galerie/508.jpg', '2025-09-23 17:03:32');
INSERT INTO Galerie (id, name, dateigroesse, mimeType, bildpfad, erstellzeitpunkt) VALUES (13, '6431', 1213621, 'image/jpeg', 'galerie/6431.jpg', '2025-09-23 17:03:33');

-- ------------------------------
-- Gericht
INSERT INTO Gericht (id, bezeichnung, speisenartId, zubereitung, bildpfad) VALUES (1, 'Bircher Müsli', 1, '20 Minuten Arbeitszeit\n\n12 Stunden Ruhezeit\n\n- Am Vorabend Dinkel und Buchweizen in Wasser einweichen. Am anderen Morgen im feinen Sieb gründlich abspülen\n\n- Am Morgen dann alle übrigen Zutaten in eine Schüssel geben und verrühren. Körner zufügen und untermischen.', 'gericht/bircher-muesli-luxusausfuehrung-mit-suchtgefahr.jpg');
INSERT INTO Gericht (id, bezeichnung, speisenartId, zubereitung, bildpfad) VALUES (2, 'SchniPoSa', 2, '45 Minuten Arbeitszeit\n\n30 Minuten Kochzeit\n\n15 Minuten Ruhezeit\n\n- Die Schnitzel abbrausen und trocken tupfen, leicht klopfen, salzen und pfeffern. Das Ei mit Salz und Pfeffer würzen. Eine Panierstraße herrichten, das heißt in je einen Teller Mehl, Semmelbrösel und Ei geben.\n\n- Die gewürzten Schnitzel in Mehl wenden, durch das verquirlte Ei ziehen und zuletzt mit den Bröseln panieren. Die Schnitzel in sehr heißem Fett von jeder Seite ca. 4 Minuten braten. Das Fett immer wieder mit einem Löffel über die Schnitzel schöpfen. Zum Schluss die Butter dazugeben. Die Schnitzel im Backofen bei geringer Temperatur warm halten.\n\n- Für die Pommes die Kartoffeln waschen und gründlich trocknen. Der Länge nach erst in ca. 1 - 2 cm dicke Scheiben, dann jede Scheibe in ca. 1 - 2 cm breite Stäbe schneiden oder wie man möchte. Kartoffelstäbchen in eiskaltes Wasser geben und nach 15 Minuten das Wasser abgießen und die Kartoffelstäbchen sehr gut trocknen.\n\n- Das Öl in einem großen Topf erhitzen. Die Kartoffelstäbchen ins heiße Öl gleiten lassen und frittieren, bis sie goldbraun sind. Dies dauert ca. 15 - 16 Minuten, die ersten zwei Minuten volle Power, dann runter schalten auf Stufe 7 (bei mir Induktion), die letzten zwei Minuten wieder auf Stufe 9 schalten. Die Pommes frites aus dem Öl heben, auf Küchenpapier abtropfen lassen und würzen. \n\n- Den Kopfsalat putzen und waschen. In eine Salatschüssel geben.\n\n- Für das Dressing die Zitrone auspressen, 2 EL abmessen, in eine kleine Schüssel geben. Mit den restlichen Zutaten verrühren und abschmecken, Salatsauce über den Salat gießen. Den Schnittlauch in Röllchen schneiden und darüber streuen.\n\n- Eventuell mit Zitronenspalten anrichten.', 'gericht/schniposa.jpg');
INSERT INTO Gericht (id, bezeichnung, speisenartId, zubereitung, bildpfad) VALUES (3, 'Kürbissuppe mit Kokosmilch', 3, '15 Minuten Arbeitszeit\n\n- Kürbis waschen und in grobe Würfel schneiden. Hokkaido-Kürbisse braucht man nicht zu schälen.\n\n- Karotten in Scheiben und Zwiebel in feine Würfel schneiden. Gemüse kurz andünsten. Currypulver und Currypaste dazugeben. Mit Gemüsebrühe aufgießen und bei schwacher Hitze ca. 20 Minuten köcheln lassen.\n\n- Kokosmilch dazugeben und die Suppe pürieren. Mit Petersilie bestreuen.\n\n- Passt gut in die Herbstzeit.', 'gericht/kuerbissuppe-mit-kokosmilch.jpg');
INSERT INTO Gericht (id, bezeichnung, speisenartId, zubereitung, bildpfad) VALUES (4, 'Tortellinisalat', 3, '15 Minuten Arbeitszeit\n\n10 Minuten Koch-/Backzeit\n\n- Tortellini in Brühe bissfest kochen und auskühlen lassen.\n\n- Paprika, Gurke und Zwiebeln in kleine Würfel schneiden. Zusammen mit der Salatcreme, 1/2 TL Salz, etwas Pfeffer, Essig und Öl vermengen. Zum Schluss die Tortellini zugeben.\n\n- Schmeckt echt klasse zu Gegrilltem und ist auf fast jeder Party der Salat, der als erstes weg ist.', 'gericht/tortellinisalat.jpg');
INSERT INTO Gericht (id, bezeichnung, speisenartId, zubereitung, bildpfad) VALUES (5, 'Spaghetti Bolognese', 2, '20 Minuten Arbeitszeit\n\n45 Minuten Koch-/Backzeit\n\n- Zwiebel, Knoblauch und Möhre schälen und in feine Würfel schneiden. \n\n- Hackfleisch in die Pfanne geben, langsam erhitzen und im eigenen Fett unter Rühren anbraten. Salzen und pfeffern. Zwiebeln, Knoblauch und Möhren dazugeben und kurz mitbraten. Mit der Brühe ablöschen. Dann Tomatenmark, Oregano, die stückigen Tomaten und Tomatenketchup unterrühren. Etwa 40 Minuten einkochen lassen.\n\n- Spaghetti in Salzwasser bissfest kochen. Durch ein Sieb abgießen, mit kaltem Wasser abschrecken und zusammen mit der Sauce servieren.\n\n- Tipp: Die Sauce Bolognese schmeckt auch lecker zu Reis.\n\n- 19 g Fett, 22,5 %, 102 KH', 'gericht/spaghetti-bolognese.jpg');

-- ------------------------------
-- Kinosaal
INSERT INTO Kinosaal (id, bezeichnung, leinwand, tonsystem, projektion, projektionsart, sitzreihen, sitzeProReihe, geschoss) VALUES (1, 'Saal 1', 67, 'Dolby SRD', 'Digitale Projektion', 0, 10, 22, 'Erdgeschoss');
INSERT INTO Kinosaal (id, bezeichnung, leinwand, tonsystem, projektion, projektionsart, sitzreihen, sitzeProReihe, geschoss) VALUES (2, 'Saal 2', 74, 'Dolby SRD', 'Digitale Projektion', 0, 12, 25, 'Erdgeschoss');
INSERT INTO Kinosaal (id, bezeichnung, leinwand, tonsystem, projektion, projektionsart, sitzreihen, sitzeProReihe, geschoss) VALUES (3, 'Saal 3', 122, 'Dolby Digital 7.1', 'Digitale 3D Projektion', 1, 15, 25, '1. Stock');
INSERT INTO Kinosaal (id, bezeichnung, leinwand, tonsystem, projektion, projektionsart, sitzreihen, sitzeProReihe, geschoss) VALUES (4, 'Saal 4', 108, 'Dolby SRD / DTS', 'Digitale 3D Projektion', 1, 13, 23, '2. Stock');

-- ------------------------------
-- Land
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (1,'Afghanistan','AF');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (2,'Ägypten','EG');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (3,'Albanien','AL');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (4,'Albanien','AL');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (5,'Algerien','DZ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (6,'Andorra','AD');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (7,'Angola','AO');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (8,'Anguilla','AI');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (9,'Antarktis','AQ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (10,'Antigua','AG');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (11,'Äquatorial Guinea','GQ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (12,'Argentinien','AR');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (13,'Armenien','AM');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (14,'Aruba','AW');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (15,'Aserbaidjan','AZ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (16,'Äthiopien','ET');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (17,'Australien','AU');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (18,'Bahamas','BS');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (19,'Bahrain','BH');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (20,'Bangladesch','BD');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (21,'Barbados','BB');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (22,'Belgien','BE');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (23,'Belize','BZ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (24,'Benin','BJ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (25,'Bermuda','BM');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (26,'Bhutan','BT');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (27,'Bolivien','BO');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (28,'Bosnien-Herzegowina','BA');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (29,'Botswana','BW');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (30,'Bouvet Inseln','BV');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (31,'Brazilien','BR');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (32,'British Indien','IO');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (33,'Brunei Darussalam','BN');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (34,'Bulgarien','BG');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (35,'Burkina Faso','BF');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (36,'Burundi','BI');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (37,'Cayman Inseln','KY');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (38,'Central Afrikanische Republik','CF');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (39,'Chile','CL');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (40,'China','CN');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (41,'Cook Inseln - Elfenbeinküste','CI');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (42,'Costa Rica','CR');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (43,'Dänemark','DK');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (44,'Deutschland','DE');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (45,'Djibouti','DJ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (46,'Dominikanische Republik','DO');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (47,'Ekuador','EC');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (48,'El Salvador','SV');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (49,'Eritrea','ER');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (50,'Estland','EE');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (51,'Falkland Inseln','FK');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (52,'Faröer Inseln (zu Dänemark)','FO');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (53,'Fiji Inseln','FJ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (54,'Finnland','FI');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (55,'Frankreich','FR');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (56,'Gabun','GA');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (57,'Gambia','GM');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (58,'Georgien','GE');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (59,'Ghana','GH');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (60,'Gibraltar','GI');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (61,'Grenada','GD');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (62,'Griechenland','GR');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (63,'Grönland','GL');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (64,'Guadeloupe','GP');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (65,'Guam','GU');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (66,'Guatemala','GT');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (67,'Guinea','GN');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (68,'Guinea Bissau','GW');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (69,'Guyana','GF');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (70,'Guyana','GY');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (71,'Haiti','HT');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (72,'Heard & McDonald Inseln','HM');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (73,'Honduras','HN');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (74,'Hongkong','HK');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (75,'Indien','IN');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (76,'Indonesien','ID');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (77,'Irak','IQ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (78,'Iran','IR');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (79,'Irland','IE');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (80,'Island','IS');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (81,'Israel','IL');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (82,'Italien','IT');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (83,'Jamaika','JM');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (84,'Japan','JP');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (85,'Jordanien','JO');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (86,'Jugoslawien','YU');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (87,'Kambodscha','KH');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (88,'Kamerun','CM');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (89,'Kanada','CA');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (90,'Kapverdische Inseln','CV');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (91,'Kasachstan','KZ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (92,'Kenya','KE');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (93,'Kirgisische Republik','KG');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (94,'Kiribati','KI');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (95,'Kokos Inseln','CC');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (96,'Kolumbien','CO');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (97,'Komoroen','KM');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (98,'Kongo','CG');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (99,'Kroatien','HR');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (100,'Kuba','CU');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (101,'Kuwait','KW');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (102,'Laos','LA');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (103,'Latvia','LV');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (104,'Lesotho','LS');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (105,'Lettland','LV');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (106,'Libanon','LB');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (107,'Liberia','LR');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (108,'Libyen','LY');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (109,'Liechtenstein','LI');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (110,'Litauen','LT');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (111,'Lithuania','LT');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (112,'Luxemburg','LU');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (113,'Macao','MO');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (114,'Madagascar','MG');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (115,'Malawi','MW');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (116,'Malaysia','MY');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (117,'Maldiven','MV');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (118,'Mali','ML');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (119,'Malta','MT');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (120,'Marokko','MA');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (121,'Marshall Inseln','MH');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (122,'Martinique','MQ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (123,'Mauritanien','MR');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (124,'Mauritius','MU');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (125,'Mayotte','YT');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (126,'Mazedonien','MK');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (127,'Mexico','MX');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (128,'Mikronesien','FM');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (129,'Moldavien','MD');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (130,'Monaco','MC');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (131,'Mongolei','MN');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (132,'Montserrat','MS');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (133,'Mozambique','MZ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (134,'Myanmar','MM');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (135,'Namibia','NA');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (136,'Nauru','NR');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (137,'Nepal','NP');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (138,'Neu Kaledonien','NC');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (139,'Neuseeland','NZ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (140,'Nicaragua','NI');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (141,'Niederlande','NL');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (142,'Niederländische Antillen','AN');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (143,'Niger','NE');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (144,'Nigeria','NG');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (145,'Niue','NU');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (146,'Nord-Korea','KP');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (147,'Nördliche Marianen Inseln','MP');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (148,'Norfolk Inseln','NF');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (149,'Norwegen','NO');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (150,'Oman','OM');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (151,'Ost Timor','TP');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (152,'Österreich','AT');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (153,'Pakistan','PK');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (154,'Palau','PW');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (155,'Panama','PA');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (156,'Papua Neuguinea','PG');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (157,'Paraguay','PY');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (158,'Peru','PE');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (159,'Philippinen','PH');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (160,'Pitcairn','PN');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (161,'Polen','PL');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (162,'Polynesien','PF');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (163,'Portugal','PT');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (164,'Puerto Rico','PR');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (165,'Qatar','QA');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (166,'Reunion','RE');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (167,'Ruanda','RW');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (168,'Rumänien','RO');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (169,'Russische Förderation','RU');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (170,'Samoa','AS');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (171,'Samoa','WS');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (172,'San Marino','SM');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (173,'Saudi Arabien','SA');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (174,'Schweden','SE');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (175,'Schweiz','CH');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (176,'Senegal','SN');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (177,'Serbien','RS');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (178,'Seychellen','SC');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (179,'Sierra Leone','SL');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (180,'Singapur','SG');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (181,'Slowakei','SK');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (182,'Slowenien','SI');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (183,'Solomonen Inseln','SB');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (184,'Somalia','SO');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (185,'Sowjetunion','SU');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (186,'Spanien','ES');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (187,'Sri Lanka','LK');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (188,'St. Helena','SH');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (189,'St. Kitts Nevis Anguill','KN');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (190,'St. Lucia','LC');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (191,'St. Pierre & Miquelon','PM');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (192,'St. Tome and Principe','ST');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (193,'St.Vincent & Grenadine','VC');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (194,'Süd Afrika','ZA');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (195,'Süd Georgia und Sandwich Inseln','GS');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (196,'Sudan','SD');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (197,'Süd-Korea','KR');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (198,'Surinam','SR');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (199,'Svalbard & Jan Mayen','SJ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (200,'Swaziland','SZ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (201,'Syrien','SY');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (202,'Tadjikistan','TJ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (203,'Taiwan','TW');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (204,'Tansania','TZ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (205,'Thailand','TH');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (206,'Togo','TG');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (207,'Tokelau','TK');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (208,'Tonga','TO');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (209,'Trinidad & Tobago','TT');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (210,'Tschad','TD');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (211,'Tschechische Republik','CZ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (212,'Tschechoslovakei','CS');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (213,'Tunesien','TN');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (214,'Türkei','TR');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (215,'Turkmenistan','TM');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (216,'Turks & Caicos Inseln','TC');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (217,'Tuvalu','TV');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (218,'Uganda','UG');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (219,'Ukraine','UA');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (220,'Ungarn','HU');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (221,'United Kingdom (England)','UK');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (222,'United States (USA)','US');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (223,'Uruguay','UY');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (224,'Uzbekistan','UZ');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (225,'Vanuatu','VU');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (226,'Vatikanstadt','VA');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (227,'Venezuela','VE');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (228,'Vereinigte Arabische Emirate','AE');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (229,'Vereintes Königreich','GB');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (230,'Vietnam','VN');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (231,'Virgin Islands (britisch)','VG');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (232,'Virgin Islands (US)','VI');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (233,'Wallis & Futuna Inseln','WF');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (234,'Weihnachts Inseln','CX');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (235,'Weißrussland','BY');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (236,'West Sahara','EH');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (237,'Yemen','YE');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (238,'Zaire','ZR');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (239,'Zambia','ZM');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (240,'Zimbabwe','ZW');
INSERT INTO Land (id, bezeichnung, kennzeichnung) VALUES (241,'Zypern','CY');

-- ------------------------------
-- Mehrwertsteuer
INSERT INTO Mehrwertsteuer (id, bezeichnung, steuerSatz) VALUES (1, 'Standard', 19.0);
INSERT INTO Mehrwertsteuer (id, bezeichnung, steuerSatz) VALUES (2, 'Reduziert', 7.0);
INSERT INTO Mehrwertsteuer (id, bezeichnung, steuerSatz) VALUES (3, 'Steuerfrei', 0.0);

-- ------------------------------
-- Person
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (1, 0, 'Hans', 'Müller', 1, '01724623894', 'h.mueller@web.de', '1984-09-12');
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (2, 1, 'Petra', 'Flieg', 2, '045831285', 'pf2004@googlemail.com', '2004-01-24');
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (3, 0, 'Michael', 'Ulrich', 3, '07112007001', 'chef@autohaus-ulrich.de', '1969-11-02');
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (4, 1, 'Anna', 'Burger', 4, '01556872485', 'anna@ausgeflippt.com', '1988-08-08');
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (5, 1, 'Mira', 'Lick', 5, '017699650865', 'miralick@yahoo.com', '2003-10-04');
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (6, 0, 'Toni', 'Maier', 6, '073579469890', 'toni@maier-immobilien.de', '1958-01-24');
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (7, 0, 'Edelhard', 'Von Meißen', 7, '03444918874', 'evm@web.de', '1966-04-07');
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (8, 1, 'Nathalia', 'Schneider', 8, '01625638300', 'nathi@blub.de', '2004-09-14');
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (9, 0, 'Andreas', 'Bieger', 9, '01709337547', 'bieger@maier-immobilien.de', '1999-09-28');
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (10, 0, 'Udo', 'Lange', 10, '01711801778', 'udo@lange-werkstatt.de', '1960-07-01');
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (11, 0, 'Zalan', 'Santos', 11, '0162546915', 'zalansan@hs-albsig.de', '2001-10-12');
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (12, 1, 'Jenni', 'Dalkic', 12, '075717328001', 'dalkic@hs-albsig.de', '2000-04-01');
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (13, 0, 'Klaus', 'Drescher', 13, '07114841402', 'drescher@web.de', '1978-10-21');
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (14, 0, 'Hartwig', 'Neumann', 14, '0152431876821', 'neumanni@holladio.com', '1958-09-20');
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (15, 0, 'Norbert', 'Hecht', 38, '017243487821', 'hecht@schnell.de', '1974-11-07');
INSERT INTO Person (id, anrede, vorname, nachname, adresseId, telefonnummer, email, geburtstag) VALUES (16, 0, 'Friedrich', 'Frick', 39, '0169447915', 'FrickFri@masterblaster.com', '1979-12-24');

-- ------------------------------
-- Produkt
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (1, 1, 'Intel Core i9-12900KF', 'Sockel 1700, 16 Kerne, 3.20GHz', 1, 'TDP 125 - 241 Watt', 241.46, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (2, 1, 'Intel Core i9-12900K', 'Sockel 1700, 16 Kerne, 3.20GHz', 1, 'TDP 125 - 241 Watt', 264.45, 0, 4);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (3, 1, 'Intel Core i7-13700', 'Sockel 1700, 16 Kerne, 2.10GHz', 1, 'TDP 65 Watt', 255.4, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (4, 1, 'Intel Core i5-12400', 'Sockel 1700, 6 Kerne, 2.50GHz', 2, 'TDP 65 Watt', 142.64, 5, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (5, 1, 'AMD Ryzen 7 9800X3D', 'Sockel AM5, 8 Kerne, 4.70GHz', 1, 'TDP 120 Watt', 377.31, 0, 3);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (6, 1, 'AMD Ryzen 5 7600X', 'Sockel AM5, 6 Kerne, 4.70GHz', 2, 'TDP 105 Watt', 158.79, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (7, 1, 'AMD Ryzen 9 9950X', 'Sockel AM5, 16 Kerne, 4.30GHz', 2, 'TDP 170 Watt', 482.24, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (8, 2, 'ASUS Zenscreen MB16AMTR', '15,6 Zoll, 1920 x 1080 Full HD', 1, 'Akkubetrieben', 294.03, 0, 5);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (9, 2, 'Iiyama ProLite XU2491H-B1', '24 Zoll, 1920 x 1080 Full HD', 1, 'Office Monitor', 58.74, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (10, 2, 'Acer Nitro VG0', '23,8 Zoll, 1920 x 1080 Full HD', 1, 'Gaming Monitor', 83.19, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (11, 2, 'LG 27UP650K-W', '27 Zoll, 3840 x 2160 UHD', 2, '', 298.13, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (12, 2, 'Samsung S32D700EAU', '32 Zoll, 3840 x 2160 UHD', 2, '5 ms Reaktionszeit', 372.89, 0, 2);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (13, 2, 'Samsung Odyssey OLED G9 S49DG954SU', '49 Zoll, 3440 x 1440 WQHD', 1, 'Ein Monster-Brummer', 1553.78, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (14, 3, 'Kingston FURY Beast', 'Schwarz, 64GB Kit (2 x 32GB) DDR5-6000', 1, '', 210.77, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (15, 3, 'Kingston ValueRAM DDR5', '16GB SODIMM, DDR5-5600', 1, '', 64.07, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (16, 3, 'Crucial Pro OC', 'Weiß, 32GB Kit (2 x 16GB) DDR5-6000', 1, 'CL36', 150.45, 7.5, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (17, 3, 'G.Skill Trident Z5 Neo', 'RGB, 32GB Kit (2 x 16GB) DDR5-6000', 1, 'CL30', 128.24, 0, 1);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (18, 4, 'Seagate IronWolf 6TB', '3,5 Zoll SATA HDD', 1, '', 151.25, 0, 6);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (19, 4, 'Seagate BarraCuda 4TB', '3,5 Zoll SATA HDD', 1, '', 126.88, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (20, 4, 'Western Digital WD Red Plus 4TB 2x', 'doppelpack, 3,5 Zoll SATA HDD', 2, '', 214.77, 0, 7);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (21, 4, 'Western Digital WD Red Plus 12TB', '3,5 Zoll SATA HDD', 1, '', 234.45, 0, 7);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (22, 5, 'MSI GeForce GT 710', '2GB DDR3, VGA/DVI/HDMI', 1, '', 34.44, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (23, 5, 'Gigabyte GeForce GT 1030', '2GB DDR4, DVI/HDMI', 1, 'Low Profile', 60.1, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (24, 5, 'ASUS Dual GeForce RTX 5060 Ti', '16GB OC DDR7, HDMI, 3xDP', 2, '', 400.93, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (25, 5, 'MSI GeForce RTX 5070 Ti 16G VENTUS 3X OC', '16GB DDR7, HDMI, 3xDP', 1, '', 654.62, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (26, 5, 'Palit GeForce RTX 3060 12GB Dual', '12GB DDR7, HDMI, 3xDP', 1, '', 3619.32, 0, 8);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (27, 5, 'ASUS ROG Astral LC GeForce RTX 5090', '32GB DDR7, 2xHDMI, 3xDP', 1, '', 2520.17, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (28, 5, 'Gainward GeForce RTX 5090 Phantom', '32GB DDR7, HDMI, 3xDP', 2, '', 2727.32, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (29, 6, 'GIGABYTE B760 AORUS Elite AX', 'DDR4', 1, '', 4453.66, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (30, 6, 'ASUS ROG Strix B550-A Gaming Mainboard', 'Sockel AM4', 1, '', 108.32, 0, 9);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (31, 6, 'ASUS ROG CROSSHAIR X870E Extreme', 'Sockel AM4', 1, '', 835.21, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (32, 7, 'Logitech MK120 Desktopset', 'Kabelgebunden', 1, '', 22.99, 0, NULL);
INSERT INTO Produkt (id, kategorieId, bezeichnung, beschreibung, mehrwertsteuerId, details, preis, prozente, datenblattId) VALUES (33, 7, 'Logitech MX Master 3S Maus', 'Wireless', 1, 'mit Bolt Receiver', 64.99, 0, 10);

-- ------------------------------
-- Produktbild
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (1, 'produktbild/Intel_i9_12900k_2ec7.jpg', 1);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (2, 'produktbild/12900K_Box_82f4.jpg', 2);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (3, 'produktbild/2871117-l0_2c8f.jpg', 3);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (4, 'produktbild/Intel_i5_nonK_2_c4a9.jpg', 4);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (5, 'produktbild/Ryzen_7_9800X3D_6e8f.jpg', 5);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (6, 'produktbild/Ryzen_5_9000_a364.jpg', 6);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (7, 'produktbild/Ryzen_9_9000_1_2638.jpg', 7);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (8, 'produktbild/MB16AMTR_5_1_8770.jpg', 8);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (9, 'produktbild/MB16AMTR_3_2ef2.png', 8);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (10, 'produktbild/Label_1891625_2_0238.png', 8);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (11, 'produktbild/XU2491H-B110_5fe2.jpg', 9);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (12, 'produktbild/XU2491H-B130_bb24.jpg', 9);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (13, 'produktbild/XU2491H-B171_8cfc.jpg', 9);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (14, 'produktbild/XU2491H-B1-cables_bbfa.jpg', 9);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (15, 'produktbild/VG0_VG270U_wp_03_tif_custom_573a_5.jpg', 10);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (16, 'produktbild/VG0_VG270U_06_tif_custom_7bfa_5.jpg', 10);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (17, 'produktbild/VG0_VG270U_07_tif_custom_5bda_1_5.jpg', 10);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (18, 'produktbild/27UP650_1_1_d051.jpg', 11);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (19, 'produktbild/27UP650_4_1_2ef3.jpg', 11);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (20, 'produktbild/163535df4fa2e03affbf36f4ec7ac834cb29695c_1747600_LS27D700EAUXEN_image1_9480.jpg', 12);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (21, 'produktbild/0e4a9077f737425ab024d538dd6ccaff5ba0eec2_1747600_LS27D700EAUXEN_image3_db01.jpg', 12);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (22, 'produktbild/4e659246929ca48fcb6bdcf8577a471e9868e97e_1747600_LS27D700EAUXEN_image6_1_6b27.jpg', 12);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (23, 'produktbild/397ab53e5999efccc1a9a559faf446a4e0c075cc_1747600_LS27D700EAUXEN_image5_7363.jpg', 12);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (24, 'produktbild/8ec313cbdb3b8166aba986d6b58af35acbf82aaf_1747600_LS27D700EAUXEN_image9_1cf2.jpg', 12);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (25, 'produktbild/ch-odyssey-oled-g9-g95sd-ls49dg954suxen-544154260_1a64.jpg', 13);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (26, 'produktbild/ch-odyssey-oled-g9-g95sd-ls49dg954suxen-544154216_e817.jpg', 13);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (27, 'produktbild/ch-odyssey-oled-g9-g95sd-ls49dg954suxen-544154253_1527.jpg', 13);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (28, 'produktbild/Kingston_Fury-Beast-DDR5-K2_Front_1_ec02.jpg', 14);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (29, 'produktbild/Kingston-ValueRAM-DDR5-SODIMM-16GB_4136.jpg', 15);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (30, 'produktbild/Crucial-DDR5-Pro-Overclocking-White-2-Kit-Hero_8840.jpg', 16);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (31, 'produktbild/G-SKILL_Trident-Z5-Neo-RGB_Black_2x_96a7.jpg', 17);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (32, 'produktbild/G-SKILL_Trident-Z5-Neo-RGB_Black_2xFront-Right_152e.jpg', 17);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (33, 'produktbild/G-SKILL_Trident-Z5-Neo-RGB_Black_2xFront-Left_c23c.jpg', 17);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (34, 'produktbild/Seagate_IronWolf_2022_6TB_Front-Left_4121.jpg', 18);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (35, 'produktbild/SEAGATE_BarraCuda-3.5_4TB_Front-Left_65e5.jpg', 19);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (36, 'produktbild/WD-Red-Plus_4TB_Front-Right_2_831f.jpg', 20);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (37, 'produktbild/WD-Red-Plus_12TB_Front-Right_1_e605.jpg', 21);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (38, 'produktbild/blue_desktop_SATA_2_11_670f.jpg', 21);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (39, 'produktbild/MSI_GeForce_GT_710_2GD3H_LP_01_598f.jpg', 22);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (40, 'produktbild/Gigabyte_GeForce_GT_1030_Low_Profile_D4_2G_01_f521.jpg', 23);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (41, 'produktbild/Gigabyte_GeForce_GT_1030_Low_Profile_D4_2G_03_cb13.jpg', 23);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (42, 'produktbild/Gigabyte_GeForce_GT_1030_Low_Profile_D4_2G_04_2c5d.jpg', 23);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (43, 'produktbild/09_DUAL-RTX5060TI-O16G_box-VGA-ACG_6446.jpg', 24);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (44, 'produktbild/01_DUAL-RTX5060Ti_2D-logo-ACG_d157.jpg', 24);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (45, 'produktbild/04_DUAL-RTX5060Ti_3D-ACG_2e79.jpg', 24);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (46, 'produktbild/GeForce_RTX_5070_Ti_16G_VENTUS_3X_Series_box-card_9498.jpg', 25);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (47, 'produktbild/Palit_RTX3060_Dual_1_bbdf.png', 26);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (48, 'produktbild/Palit_RTX3060_Dual_3_6772.png', 26);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (49, 'produktbild/Palit_RTX3060_Dual_6_ab33.png', 26);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (50, 'produktbild/ROG-ASTRAL-LC-RTX5090-32G-GAMING_box_with_card_d4a8.jpg', 27);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (51, 'produktbild/Gainward_GeForce_RTX_5090_Phantom_10_310d.jpg', 28);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (52, 'produktbild/2872210-l4_c32c_1.jpg', 29);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (53, 'produktbild/ROG_STRIX_B550-A-with-box-1_4534.png', 30);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (54, 'produktbild/ROG_STRIX_B550-A-2D-1_f7de.png', 30);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (55, 'produktbild/ROG_STRIX_B550-A-3D-2_0b56.png', 30);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (56, 'produktbild/ROG_MAXIMUS_Z890_HERO-with-box_f2fb.png', 31);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (57, 'produktbild/ROG_Crosshair_X870E_Extreme_01_2594.png', 31);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (58, 'produktbild/ROG_Crosshair_X870E_Extreme_03_99fa.png', 31);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (59, 'produktbild/ROG_Crosshair_X870E_Extreme_05_a2d4.png', 31);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (60, 'produktbild/MK-120-1_1200_pixel_c08c.jpg', 32);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (61, 'produktbild/LogiMXMaster3-grau-1_3e9f.jpg', 33);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (62, 'produktbild/4_176_49a9.jpg', 33);
INSERT INTO Produktbild (id, bildpfad, produktId) VALUES (63, 'produktbild/5_135_a3eb.jpg', 33);

-- ------------------------------
-- Produktkategorie
INSERT INTO Produktkategorie (id, bezeichnung) VALUES (1, 'CPU');
INSERT INTO Produktkategorie (id, bezeichnung) VALUES (2, 'Monitore');
INSERT INTO Produktkategorie (id, bezeichnung) VALUES (3, 'RAM');
INSERT INTO Produktkategorie (id, bezeichnung) VALUES (4, 'Festplatten');
INSERT INTO Produktkategorie (id, bezeichnung) VALUES (5, 'Grafikkarten');
INSERT INTO Produktkategorie (id, bezeichnung) VALUES (6, 'Motherboards');
INSERT INTO Produktkategorie (id, bezeichnung) VALUES (7, 'Zubehör');

-- ------------------------------
-- Reservierer
INSERT INTO Reservierer (id, vorname, nachname, email) VALUES (1, 'Max', 'Müller', 'maxi@mueller.de');
INSERT INTO Reservierer (id, vorname, nachname, email) VALUES (2, 'Tina', 'Lick', 'miralick@yahoo.com');

-- ------------------------------
-- ReservierterSitz
INSERT INTO ReservierterSitz (id, reservierungId, reihe, sitzplatz) VALUES (1, 1, 2, 4);
INSERT INTO ReservierterSitz (id, reservierungId, reihe, sitzplatz) VALUES (2, 1, 2, 5);
INSERT INTO ReservierterSitz (id, reservierungId, reihe, sitzplatz) VALUES (3, 1, 2, 6);
INSERT INTO ReservierterSitz (id, reservierungId, reihe, sitzplatz) VALUES (4, 2, 10, 11);
INSERT INTO ReservierterSitz (id, reservierungId, reihe, sitzplatz) VALUES (5, 2, 10, 12);

-- ------------------------------
-- Reservierung
INSERT INTO Reservierung (id, zeitpunkt, reserviererId, zahlungsartId, vorstellungId) VALUES (1, '2025-10-02 18:25:03', 1, 2, 60);
INSERT INTO Reservierung (id, zeitpunkt, reserviererId, zahlungsartId, vorstellungId) VALUES (2, '2025-10-05 09:33:28', 2, 2, 76);

-- ------------------------------
-- Speisenart
INSERT INTO Speisenart (id, bezeichnung, beschreibung, bildpfad) VALUES (1, 'Frühstück', 'So fängt der Tag an', 'speisenart/2149141363.jpg');
INSERT INTO Speisenart (id, bezeichnung, beschreibung, bildpfad) VALUES (2, 'Mittagessen', 'Auch nicht zu verachten', 'speisenart/2149141352.jpg');
INSERT INTO Speisenart (id, bezeichnung, beschreibung, bildpfad) VALUES (3, 'Abendessen', 'Darf auf keinen Fall fehlen', 'speisenart/2149141374.jpg');

-- ------------------------------
-- Termin
INSERT INTO Termin (id, bezeichnung, beschreibung, zeitpunkt, dauer, dienstleisterId, kundeId) VALUES (1, 'Räderwechsel', 'Sommer zu Winter', '2025-10-02 09:00:00', 45, 1, 1);
INSERT INTO Termin (id, bezeichnung, beschreibung, zeitpunkt, dauer, dienstleisterId, kundeId) VALUES (2, 'Tanken', 'Hochoktanig', '2025-10-02 10:30:00', 30, 1, 3);
INSERT INTO Termin (id, bezeichnung, beschreibung, zeitpunkt, dauer, dienstleisterId, kundeId) VALUES (3, 'Motortausch', 'die Krücke muss raus', '2025-10-05 14:00:00', 120, 1, 15);
INSERT INTO Termin (id, bezeichnung, beschreibung, zeitpunkt, dauer, dienstleisterId, kundeId) VALUES (4, 'Räderwechsel', 'mit Einlagerung', '2025-10-07 16:15:00', 30, 1, 14);
INSERT INTO Termin (id, bezeichnung, beschreibung, zeitpunkt, dauer, dienstleisterId, kundeId) VALUES (5, 'Autowäsche', 'innen und außen', '2025-10-07 08:30:00', 60, 1, 3);
INSERT INTO Termin (id, bezeichnung, beschreibung, zeitpunkt, dauer, dienstleisterId, kundeId) VALUES (6, 'Service A', 'Neukunde', '2025-10-22 09:00:00', 240, 1, 16);
INSERT INTO Termin (id, bezeichnung, beschreibung, zeitpunkt, dauer, dienstleisterId, kundeId) VALUES (7, 'Räderwechsel', '', '2025-10-28 15:45:00', 30, 1, 16);
INSERT INTO Termin (id, bezeichnung, beschreibung, zeitpunkt, dauer, dienstleisterId, kundeId) VALUES (8, 'Service B', 'mit Bremsencheck', '2025-11-06 11:00:00', 60, 1, 3);
INSERT INTO Termin (id, bezeichnung, beschreibung, zeitpunkt, dauer, dienstleisterId, kundeId) VALUES (9, 'Erster TÜV', 'GLC', '2025-11-10 15:00:00', 60, 1, 7);
INSERT INTO Termin (id, bezeichnung, beschreibung, zeitpunkt, dauer, dienstleisterId, kundeId) VALUES (10, 'Autowäsche', 'außen', '2025-11-22 10:50:00', 10, 1, NULL);
INSERT INTO Termin (id, bezeichnung, beschreibung, zeitpunkt, dauer, dienstleisterId, kundeId) VALUES (11, 'Service A', '', '2025-11-15 16:30:00', 240, 1, 9);
INSERT INTO Termin (id, bezeichnung, beschreibung, zeitpunkt, dauer, dienstleisterId, kundeId) VALUES (12, 'Räderwechsel', 'mit Einlagerung', '2025-11-18 15:00:00', 30, 1, 9);

-- ------------------------------
-- Vorstellung
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (1, 1, 1, '2025-10-13 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (2, 1, 1, '2025-10-13 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (3, 1, 1, '2025-10-15 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (4, 1, 1, '2025-10-15 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (5, 1, 1, '2025-10-17 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (6, 1, 1, '2025-10-17 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (7, 1, 1, '2025-10-19 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (8, 1, 1, '2025-10-19 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (9, 2, 2, '2025-10-13 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (10, 2, 2, '2025-10-13 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (11, 2, 2, '2025-10-15 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (12, 2, 2, '2025-10-15 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (13, 2, 2, '2025-10-17 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (14, 2, 2, '2025-10-17 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (15, 2, 2, '2025-10-19 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (16, 2, 2, '2025-10-19 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (17, 3, 3, '2025-10-13 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (18, 3, 3, '2025-10-13 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (19, 3, 3, '2025-10-15 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (20, 3, 3, '2025-10-15 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (21, 3, 3, '2025-10-17 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (22, 3, 3, '2025-10-17 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (23, 3, 3, '2025-10-19 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (24, 3, 3, '2025-10-19 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (25, 4, 4, '2025-10-13 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (26, 4, 4, '2025-10-13 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (27, 4, 4, '2025-10-15 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (28, 4, 4, '2025-10-15 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (29, 4, 4, '2025-10-17 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (30, 4, 4, '2025-10-17 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (31, 4, 4, '2025-10-19 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (32, 4, 4, '2025-10-19 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (33, 5, 1, '2025-10-14 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (34, 5, 1, '2025-10-14 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (35, 5, 1, '2025-10-16 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (36, 5, 1, '2025-10-16 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (37, 5, 1, '2025-10-18 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (38, 5, 1, '2025-10-18 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (39, 6, 2, '2025-10-14 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (40, 6, 2, '2025-10-14 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (41, 6, 2, '2025-10-16 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (42, 6, 2, '2025-10-16 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (43, 6, 2, '2025-10-18 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (44, 6, 2, '2025-10-18 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (45, 7, 3, '2025-10-14 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (46, 7, 3, '2025-10-14 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (47, 7, 3, '2025-10-16 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (48, 7, 3, '2025-10-16 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (49, 7, 3, '2025-10-18 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (50, 7, 3, '2025-10-18 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (51, 8, 4, '2025-10-14 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (52, 8, 4, '2025-10-14 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (53, 8, 4, '2025-10-16 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (54, 8, 4, '2025-10-16 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (55, 8, 4, '2025-10-18 17:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (56, 8, 4, '2025-10-18 20:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (57, 9, 1, '2025-10-13 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (58, 9, 1, '2025-10-13 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (59, 9, 1, '2025-10-15 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (60, 9, 1, '2025-10-15 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (61, 9, 1, '2025-10-17 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (62, 9, 1, '2025-10-17 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (63, 9, 1, '2025-10-19 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (64, 9, 1, '2025-10-19 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (65, 10, 2, '2025-10-13 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (66, 10, 2, '2025-10-13 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (67, 10, 2, '2025-10-15 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (68, 10, 2, '2025-10-15 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (69, 10, 2, '2025-10-17 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (70, 10, 2, '2025-10-17 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (71, 10, 2, '2025-10-19 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (72, 10, 2, '2025-10-19 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (73, 11, 3, '2025-10-13 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (74, 11, 3, '2025-10-13 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (75, 11, 3, '2025-10-15 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (76, 11, 3, '2025-10-15 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (77, 11, 3, '2025-10-17 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (78, 11, 3, '2025-10-17 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (79, 11, 3, '2025-10-19 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (80, 11, 3, '2025-10-19 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (81, 12, 4, '2025-10-13 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (82, 12, 4, '2025-10-13 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (83, 12, 4, '2025-10-15 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (84, 12, 4, '2025-10-15 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (85, 12, 4, '2025-10-17 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (86, 12, 4, '2025-10-17 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (87, 12, 4, '2025-10-19 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (88, 12, 4, '2025-10-19 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (89, 13, 1, '2025-10-14 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (90, 13, 1, '2025-10-14 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (91, 13, 1, '2025-10-16 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (92, 13, 1, '2025-10-16 14:30:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (93, 13, 1, '2025-10-18 10:00:00');
INSERT INTO Vorstellung (id, filmId, kinosaalId, zeitpunkt) VALUES (94, 13, 1, '2025-10-18 14:30:00');

-- ------------------------------
-- Zahlungsart
INSERT INTO Zahlungsart (id, bezeichnung) VALUES (1, 'Nachnahme');
INSERT INTO Zahlungsart (id, bezeichnung) VALUES (2, 'PayPal');
INSERT INTO Zahlungsart (id, bezeichnung) VALUES (3, 'Überweisung');
INSERT INTO Zahlungsart (id, bezeichnung) VALUES (4, 'Rechnung');
INSERT INTO Zahlungsart (id, bezeichnung) VALUES (5, 'Barzahlung');

-- ------------------------------
-- Zutat
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (1, 'Buchweizen', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (2, 'Sahne', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (3, 'Milch', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (4, 'Joghurt', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (5, 'Zucker', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (6, 'Zitrone(saft)', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (7, 'Schweineschitzel', 'ca. 120g');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (8, 'Mehl', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (9, 'Eier', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (10, 'Rapsöl', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (11, 'Butter', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (12, 'Kartoffeln', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (13, 'Olivenöl', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (14, 'Blattsalat', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (15, 'Hokkaido Kürbis', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (16, 'Zwiebel', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (17, 'Salz und Pfeffer', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (18, 'Tortellini', 'frisch oder getrocknet');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (19, 'Gemüsebrühe', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (20, 'Paprikaschote gelb', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (21, 'Paprikaschote rot', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (22, 'Paprikaschote grün', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (23, 'Essig', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (24, 'Öl', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (25, 'Knoblauch', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (26, 'Möhre', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (27, 'Rinderhackfleisch', '');
INSERT INTO Zutat (id, bezeichnung, beschreibung) VALUES (28, 'Spaghetti', 'Die Guten!');

-- ------------------------------
-- Zutatenliste
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (1, 1, 1, 2, 3);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (2, 1, 2, 200, 2);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (3, 1, 3, 300, 7);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (4, 1, 4, 100, 2);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (5, 1, 5, 3, 3);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (6, 1, 6, 1, 9);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (7, 2, 7, 2, 9);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (8, 2, 8, 40, 2);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (9, 2, 9, 1, 9);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (10, 2, 10, 3, 3);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (11, 2, 11, 1, 3);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (12, 2, 12, 500, 2);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (13, 2, 13, 1, 3);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (14, 2, 14, 0.5, 10);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (15, 3, 15, 2, 9);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (16, 3, 16, 1, 9);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (17, 3, 17, 1, 8);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (18, 3, 24, 1, 3);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (19, 4, 18, 500, 2);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (20, 4, 19, 1, 5);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (21, 4, 20, 1, 9);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (22, 4, 21, 1, 9);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (23, 4, 16, 1, 9);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (24, 4, 23, 2, 3);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (25, 4, 24, 3, 3);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (26, 5, 16, 1, 9);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (27, 5, 25, 1, 11);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (28, 5, 26, 1, 9);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (29, 5, 27, 500, 2);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (30, 5, 17, 1, 8);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (31, 5, 19, 200, 7);
INSERT INTO Zutatenliste (id, gerichtId, zutatId, menge, einheitId) VALUES (32, 5, 28, 500, 2);

-- DISABLE FOREIGN KEYS
PRAGMA foreign_keys = 0;