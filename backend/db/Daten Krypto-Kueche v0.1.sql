-- Krypto-Kueche: Daten v0.1 (3 Testrezepte fuer die API-Entwicklung)
-- Inhalt von KI aus den HTML Dateien erzeugt

BEGIN TRANSACTION;

INSERT INTO Schutzziel (id,kuerzel,bezeichnung,beschreibung) VALUES
(1,'a','Authentizität','Die Nachricht stammt wirklich von dem, der behauptet, sie geschickt zu haben.'),
(2,'v','Vertraulichkeit','Nur Berechtigte können die Daten lesen.'),
(3,'i','Integrität','Die Daten wurden nicht unbemerkt verändert.');

-- 4: AES-Verschlüsselung
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (4,'AES-Verschlüsselung','Der weltweite Standard für symmetrische Verschlüsselung: ein geheimer Schlüssel zum Ver- und Entschlüsseln.','Das Grundnahrungsmittel jeder modernen Krypto-Küche.','Der <em>Advanced Encryption Standard</em> (AES) ist ein symmetrisches Blockverschlüsselungsverfahren: Sender und Empfänger benutzen denselben geheimen Schlüssel mit 128, 192 oder 256 Bit. AES verschlüsselt Blöcke von 16 Byte in mehreren Runden. Das Verfahren wurde von Joan Daemen und Vincent Rijmen als „Rijndael“ entwickelt und ist seit 2001 der Standard der US-Behörde NIST.','bilder/skizze-aes.svg','AES im CBC-Modus: drei Klartextblöcke, jeweils XOR mit IV bzw. vorherigem Geheimtextblock, dann AES mit Schlüssel K','AES im CBC-Modus: Jeder Klartextblock wird vor der Verschlüsselung mit dem vorherigen Geheimtextblock XOR-verknüpft (⊕), der erste mit dem IV. Alle Blöcke nutzen denselben geheimen Schlüssel K (blau).','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (4,2);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(4,'zutat',1,'Klartext'),
(4,'zutat',2,'Geheimer Schlüssel mit 128, 192 oder 256 Bit aus einem sicheren Zufallsgenerator'),
(4,'zutat',3,'Ein Betriebsmodus, z. B. CBC, CTR oder GCM'),
(4,'zutat',4,'Ein Initialisierungsvektor (IV), für jede Nachricht neu'),
(4,'schritt',1,'Schlüssel zufällig erzeugen und sicher mit dem Empfänger teilen – zum Beispiel per <a href="rezept.html?id=6">Diffie-Hellman</a>.'),
(4,'schritt',2,'Für jede Nachricht einen neuen IV erzeugen (bei CBC zufällig, bei CTR und GCM ein einmaliger Zähler- bzw. Nonce-Wert).'),
(4,'schritt',3,'Den Klartext in 16-Byte-Blöcke aufteilen. Bei CBC wird der letzte Block aufgefüllt (Padding); CTR und GCM brauchen das nicht.'),
(4,'schritt',4,'Jeden Block in 10 bzw. 14 Runden aus <em>SubBytes</em>, <em>ShiftRows</em>, <em>MixColumns</em> und <em>AddRoundKey</em> verschlüsseln. Der Betriebsmodus verkettet die Blöcke miteinander.'),
(4,'schritt',5,'IV und Geheimtext verschicken. Der IV ist nicht geheim.'),
(4,'schritt',6,'Der Empfänger entschlüsselt mit demselben Schlüssel und dem IV.'),
(4,'tipp',1,'Niemals den ECB-Modus verwenden: Gleiche Klartextblöcke ergeben dort gleiche Geheimtextblöcke (berühmtes Beispiel: der verschlüsselte Linux-Pinguin bleibt erkennbar).'),
(4,'tipp',2,'AES allein schützt nur die Vertraulichkeit. Wer auch Integrität will, nimmt <a href="rezept.html?id=17">AES-GCM</a>.'),
(4,'tipp',3,'Ein Passwort ist kein Schlüssel – erst mit einer Schlüsselableitung (PBKDF2, Argon2) daraus einen machen.'),
(4,'tipp',4,'Nie selbst implementieren, sondern geprüfte Bibliotheken nutzen (z. B. die Web Crypto API im Browser).');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(4,1,'Wikipedia: Advanced Encryption Standard','https://de.wikipedia.org/wiki/Advanced_Encryption_Standard'),
(4,2,'YouTube: Kryptographie #27 – Der AES (The Morpheus Tutorials)','https://www.youtube.com/watch?v=23H_kaE8DMk');

-- 9: HMAC
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (9,'HMAC','Eine Prüfsumme mit geheimem Schlüssel: zeigt, dass die Nachricht unverändert ist und vom Schlüsselinhaber stammt.','Ein Hash mit Geheimzutat – nur wer sie kennt, kann ihn nachkochen.','Ein HMAC (<em>Hash-based Message Authentication Code</em>) ist eine Prüfsumme mit Schlüssel: Nur wer den gemeinsamen geheimen Schlüssel kennt, kann den richtigen Code („Tag“) berechnen. Der Empfänger rechnet nach und weiß dann, dass die Nachricht unterwegs nicht verändert wurde und von jemandem stammt, der den Schlüssel kennt.','bilder/skizze-hmac.svg','Sender und Empfänger berechnen beide den HMAC mit Schlüssel K und vergleichen die Tags','Beide berechnen den HMAC mit demselben geheimen Schlüssel K (blau). Stimmen die Tags überein, ist die Nachricht echt und unverändert.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (9,1),(9,3);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(9,'zutat',1,'Nachricht'),
(9,'zutat',2,'Gemeinsamer geheimer Schlüssel K'),
(9,'zutat',3,'Eine Hashfunktion, z. B. <a href="rezept.html?id=7">SHA-256</a>'),
(9,'schritt',1,'Sender und Empfänger teilen vorab einen geheimen Schlüssel.'),
(9,'schritt',2,'Der Sender berechnet <code>tag = H((K ⊕ opad) ‖ H((K ⊕ ipad) ‖ m))</code> – also zweimal hashen mit dem Schlüssel.'),
(9,'schritt',3,'Nachricht und Tag werden verschickt.'),
(9,'schritt',4,'Der Empfänger berechnet den HMAC über die empfangene Nachricht selbst.'),
(9,'schritt',5,'Stimmen beide Tags überein, ist die Nachricht echt und unverändert. Sonst: wegwerfen!'),
(9,'tipp',1,'Tags immer in konstanter Zeit vergleichen, sonst verrät die Antwortzeit, wie viele Zeichen schon stimmen (Timing-Angriff).'),
(9,'tipp',2,'Kein Ersatz für eine <a href="rezept.html?id=10">Signatur</a>: Beide Seiten kennen den Schlüssel, also könnte auch der Empfänger den Tag erzeugt haben.'),
(9,'tipp',3,'Nicht einfach <code>SHA-256(K ‖ m)</code> bauen – das ist anfällig für Length-Extension-Angriffe. Genau dafür wurde HMAC erfunden.'),
(9,'tipp',4,'Steckt z. B. in JSON Web Tokens (HS256), in <a href="rezept.html?id=13">TOTP</a>-Codes und in vielen API-Signaturen.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(9,1,'Wikipedia: HMAC','https://de.wikipedia.org/wiki/HMAC'),
(9,2,'YouTube: Securing Stream Ciphers (HMAC) (Computerphile, englisch)','https://www.youtube.com/watch?v=wlSG3pEiQdc');

-- 18: TLS 1.3 (HTTPS)
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (18,'TLS 1.3 (HTTPS)','Das „S“ in HTTPS: Schlüsselaustausch, Zertifikate und authentisierte Verschlüsselung kombiniert.','Das Drei-Gänge-Menü, das du jeden Tag isst, ohne es zu merken.','<em>Transport Layer Security</em> sichert die Verbindung zwischen Browser und Webserver. TLS ist kein einzelnes Verfahren, sondern ein ganzes Menü: <a href="rezept.html?id=6">Diffie-Hellman</a> liefert den gemeinsamen Schlüssel, <a href="rezept.html?id=16">Zertifikate</a> und <a href="rezept.html?id=10">Signaturen</a> beweisen die Echtheit des Servers, und <a href="rezept.html?id=17">AES-GCM</a> schützt die Daten vor Mitlesen und Verändern.',NULL,NULL,NULL,'2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (18,1),(18,2),(18,3);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(18,'zutat',1,'ECDH-Schlüsselaustausch (z. B. X25519)'),
(18,'zutat',2,'Server-<a href="rezept.html?id=16">Zertifikat</a> von einer vertrauenswürdigen CA'),
(18,'zutat',3,'<a href="rezept.html?id=10">Digitale Signatur</a>'),
(18,'zutat',4,'HKDF zur Schlüsselableitung'),
(18,'zutat',5,'<a href="rezept.html?id=17">AES-GCM</a> oder ChaCha20-Poly1305'),
(18,'schritt',1,'<strong>ClientHello:</strong> Der Browser schickt unterstützte Verfahren, eine Zufallszahl und seinen Diffie-Hellman-Anteil (Key Share).'),
(18,'schritt',2,'<strong>ServerHello:</strong> Der Server wählt die Verfahren und schickt seinen eigenen Key Share.'),
(18,'schritt',3,'Beide berechnen das gemeinsame Geheimnis und leiten daraus mit HKDF die Sitzungsschlüssel ab. Ab jetzt ist alles verschlüsselt.'),
(18,'schritt',4,'Der Server schickt sein Zertifikat und signiert den bisherigen Handshake (<em>CertificateVerify</em>).'),
(18,'schritt',5,'Der Browser prüft Zertifikatskette, Domainnamen und Signatur.'),
(18,'schritt',6,'Beide schicken eine <em>Finished</em>-Nachricht mit einem MAC über den ganzen Handshake.'),
(18,'schritt',7,'Die eigentlichen HTTP-Daten fließen mit AES-GCM geschützt.'),
(18,'tipp',1,'Auf Servern nur TLS 1.2 und 1.3 erlauben, ältere Versionen sind unsicher.'),
(18,'tipp',2,'Das Schloss bedeutet nur, dass die Verbindung zu dieser Domain sicher ist – nicht, dass die Seite vertrauenswürdig ist. Auch Phishing-Seiten haben ein Schloss.'),
(18,'tipp',3,'Zertifikate gibt es kostenlos bei Let''s Encrypt.'),
(18,'tipp',4,'Mit HSTS sagt ein Server dem Browser, dass er nur noch per HTTPS besucht werden will.'),
(18,'tipp',5,'Die eigene Server-Konfiguration lässt sich mit dem SSL Server Test von Qualys SSL Labs prüfen.'),
(18,'tipp',6,'Moderne Browser handeln den Schlüssel mit vielen Servern bereits quantensicher aus – mit dem <a href="rezept.html?id=26">hybriden Verfahren X25519MLKEM768</a>.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(18,1,'Wikipedia: Transport Layer Security','https://de.wikipedia.org/wiki/Transport_Layer_Security'),
(18,2,'YouTube: TLS 1.3 Handshake (Practical Networking, englisch)','https://www.youtube.com/watch?v=JA0vaIb4158');

COMMIT;
