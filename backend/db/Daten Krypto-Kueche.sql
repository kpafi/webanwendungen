--Kryptoküche: Daten fuer alle Rezepte
--Inhalt von KI aus den HTML Dateien erzeugt

BEGIN TRANSACTION;

INSERT INTO Schutzziel (id,kuerzel,bezeichnung,beschreibung) VALUES
(1,'a','Authentizität','Die Nachricht stammt wirklich von dem, der behauptet, sie geschickt zu haben.'),
(2,'v','Vertraulichkeit','Nur Berechtigte können die Daten lesen.'),
(3,'i','Integrität','Die Daten wurden nicht unbemerkt verändert.');

-- 1: Caesar-Verschlüsselung
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (1,'Caesar-Verschlüsselung','Jeder Buchstabe wird um ein paar Stellen im Alphabet verschoben. Einfach, aber leicht zu knacken.','Der Klassiker aus dem alten Rom – heute nur noch als Vorspeise.','Bei der Caesar-Verschlüsselung wird jeder Buchstabe des Klartexts um eine feste Anzahl Stellen im Alphabet verschoben. Der geheime Schlüssel ist genau diese Verschiebung (1 bis 25). Julius Caesar soll so mit seinen Generälen kommuniziert haben – mit der Verschiebung 3.','bilder/skizze-caesar.svg','Zwei Alphabet-Reihen: A wird zu D, B zu E, X zu A – jeder Buchstabe um 3 verschoben','Jeder Buchstabe rückt um k = 3 Stellen weiter. Am Ende des Alphabets geht es vorne wieder los (blau).','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (1,2);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(1,'zutat',1,'Klartext (Buchstaben A–Z)'),
(1,'zutat',2,'Geheimer Schlüssel k zwischen 1 und 25'),
(1,'zutat',3,'Das Alphabet mit 26 Buchstaben'),
(1,'schritt',1,'Absender und Empfänger vereinbaren vorab heimlich den Schlüssel k.'),
(1,'schritt',2,'Jeden Buchstaben des Klartexts um k Stellen nach rechts verschieben. Nach Z geht es wieder bei A weiter (Rechnen modulo 26).'),
(1,'schritt',3,'Leerzeichen und Satzzeichen bleiben, wie sie sind.'),
(1,'schritt',4,'Den Geheimtext verschicken.'),
(1,'schritt',5,'Der Empfänger verschiebt jeden Buchstaben um k Stellen zurück und erhält den Klartext.'),
(1,'tipp',1,'<strong>Nicht für echte Geheimnisse verwenden!</strong> Es gibt nur 25 mögliche Schlüssel – ein Angreifer probiert sie in Sekunden alle durch (Brute Force).'),
(1,'tipp',2,'Auch ohne Durchprobieren verrät die Häufigkeitsanalyse den Schlüssel: Im Deutschen ist E der mit Abstand häufigste Buchstabe.'),
(1,'tipp',3,'ROT13 ist Caesar mit k = 13. Zweimal angewendet ergibt sich wieder der Klartext.'),
(1,'tipp',4,'Gut als Einstieg, um die Begriffe Klartext, Geheimtext und Schlüssel zu verstehen.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(1,1,'Wikipedia: Caesar-Verschlüsselung','https://de.wikipedia.org/wiki/Caesar-Verschlüsselung'),
(1,2,'YouTube: So funktioniert die Caesar-Verschlüsselung (Lernsnacks EDV)','https://www.youtube.com/watch?v=X2_OI4xmDIQ');

-- 2: Vigenère-Verschlüsselung
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (2,'Vigenère-Verschlüsselung','Wie Caesar, aber jeder Buchstabe wird um einen anderen Wert verschoben – vorgegeben durch ein Schlüsselwort.','Caesar mit Schlüsselwort – 300 Jahre lang als „unknackbar“ gehandelt.','Die Vigenère-Verschlüsselung (16. Jahrhundert, benannt nach Blaise de Vigenère) erweitert die <a href="rezept.html?id=1">Caesar-Verschlüsselung</a>: Statt einer festen Verschiebung gibt ein Schlüsselwort die Verschiebungen vor. Das Schlüsselwort wird immer wieder über den Klartext geschrieben, und jeder Schlüsselbuchstabe sagt, um wie viele Stellen der Buchstabe darunter verschoben wird (A = 0, B = 1, … Z = 25). Lange galt sie als „le chiffre indéchiffrable“ – die unknackbare Chiffre.','bilder/skizze-vigenere.svg','Klartext PIZZAHEUTE, darüber das wiederholte Schlüsselwort KUECHE, darunter der Geheimtext','Jeder Schlüsselbuchstabe (blau) gibt die Verschiebung für den Buchstaben darunter vor. Die beiden Z in PIZZA werden so zu verschiedenen Buchstaben.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (2,2);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(2,'zutat',1,'Klartext (Buchstaben A–Z)'),
(2,'zutat',2,'Geheimes Schlüsselwort, z. B. KUECHE'),
(2,'zutat',3,'Das Alphabet mit 26 Buchstaben'),
(2,'schritt',1,'Absender und Empfänger vereinbaren heimlich ein Schlüsselwort.'),
(2,'schritt',2,'Das Schlüsselwort so oft wiederholen, bis es so lang ist wie der Klartext.'),
(2,'schritt',3,'Für jeden Buchstaben den Wert des Schlüsselbuchstabens darüber bestimmen: A = 0, B = 1, … Z = 25.'),
(2,'schritt',4,'Den Klartextbuchstaben um diesen Wert verschieben – genau wie bei Caesar.'),
(2,'schritt',5,'Der Empfänger schreibt das Schlüsselwort genauso darüber und verschiebt jeden Buchstaben zurück.'),
(2,'tipp',1,'Gleiche Klartextbuchstaben werden unterschiedlich verschlüsselt – die einfache Häufigkeitsanalyse wie bei Caesar funktioniert nicht mehr.'),
(2,'tipp',2,'Trotzdem knackbar: Weil sich das Schlüsselwort wiederholt, findet man mit dem Kasiski-Test (1863) seine Länge. Danach ist jede Spalte nur noch ein Caesar.'),
(2,'tipp',3,'Ist das Schlüsselwort echt zufällig und so lang wie die Nachricht, wird daraus ein <a href="rezept.html?id=3">One-Time-Pad</a>.'),
(2,'tipp',4,'Leerzeichen im Geheimtext besser weglassen – sonst verraten sie die Wortlängen.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(2,1,'Wikipedia: Vigenère-Chiffre','https://de.wikipedia.org/wiki/Vigenère-Chiffre'),
(2,2,'YouTube: Wie funktioniert Vigenère-Verschlüsselung? (LassWasLernen)','https://www.youtube.com/watch?v=F5ZwP6RUNoc');

-- 3: One-Time-Pad
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (3,'One-Time-Pad','Nachricht XOR echt zufälliger Schlüssel, genauso lang wie die Nachricht. Beweisbar sicher, aber unpraktisch.','Das einzige Rezept mit Sicherheitsbeweis – wenn man sich genau an die Zutatenliste hält.','Beim One-Time-Pad (Einmalschlüssel) wird jedes Zeichen der Nachricht mit einem Zeichen eines echt zufälligen Schlüssels verknüpft, der genauso lang ist wie die Nachricht – in der Praxis Byte für Byte mit XOR. Wird der Schlüssel nur ein einziges Mal benutzt und bleibt geheim, ist das Verfahren beweisbar sicher (Claude Shannon, 1949): Der Geheimtext verrät nichts außer der Länge.','bilder/skizze-otp.svg','Nachricht, Schlüssel und Geheimtext als Bitreihen, verknüpft mit XOR','Nachricht und Schlüssel werden Bit für Bit mit XOR (⊕) verknüpft. Blau ist geheim.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (3,2);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(3,'zutat',1,'Nachricht als Bytes'),
(3,'zutat',2,'Echt zufälliger Schlüssel, mindestens so lang wie die Nachricht'),
(3,'zutat',3,'Die XOR-Verknüpfung (⊕)'),
(3,'zutat',4,'Ein sicherer Weg, den Schlüssel vorher zu übergeben'),
(3,'schritt',1,'Schlüssel aus echtem Zufall erzeugen (Würfel, Rauschen, Hardware-Zufallsgenerator). Ein Pseudozufallsgenerator genügt nicht – dann gilt der Sicherheitsbeweis nicht mehr.'),
(3,'schritt',2,'Den Schlüssel persönlich und heimlich an den Empfänger übergeben.'),
(3,'schritt',3,'Nachricht und Schlüssel Byte für Byte mit XOR verknüpfen: <code>c = m ⊕ k</code>.'),
(3,'schritt',4,'Den Geheimtext <code>c</code> verschicken.'),
(3,'schritt',5,'Der Empfänger rechnet <code>m = c ⊕ k</code>, denn <code>k ⊕ k = 0</code>.'),
(3,'schritt',6,'Den benutzten Schlüssel vernichten – niemals ein zweites Mal verwenden.'),
(3,'tipp',1,'Wird ein Schlüssel zweimal verwendet, gilt <code>c<sub>1</sub> ⊕ c<sub>2</sub> = m<sub>1</sub> ⊕ m<sub>2</sub></code> – der Schlüssel fällt heraus und beide Nachrichten lassen sich oft rekonstruieren.'),
(3,'tipp',2,'Das große Problem ist die Schlüsselverteilung: Man braucht für jede Nachricht gleich viel geheimes Schlüsselmaterial.'),
(3,'tipp',3,'Kein Schutz der Integrität: Kippt ein Angreifer ein Bit im Geheimtext, kippt genau dieses Bit im Klartext.'),
(3,'tipp',4,'Historisch wurde das One-Time-Pad z. B. für den „heißen Draht“ zwischen Washington und Moskau genutzt.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(3,1,'Wikipedia: One-Time-Pad','https://de.wikipedia.org/wiki/One-Time-Pad'),
(3,2,'YouTube: Kryptographie #5 – Das One-Time-Pad (The Morpheus Tutorials)','https://www.youtube.com/watch?v=KVM0xNtVX_A');

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

-- 5: RSA-Verschlüsselung
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (5,'RSA-Verschlüsselung','Asymmetrisch: Jeder kann mit dem öffentlichen Schlüssel verschlüsseln, nur der Besitzer des privaten Schlüssels entschlüsselt.','Öffentlich verschließen, privat öffnen – wie ein Briefkasten.','RSA (Rivest, Shamir und Adleman, 1977) ist ein asymmetrisches Verfahren: Jeder Teilnehmer hat ein Schlüsselpaar aus einem öffentlichen Schlüssel zum Verschlüsseln und einem privaten Schlüssel zum Entschlüsseln. Die Sicherheit beruht darauf, dass es praktisch unmöglich ist, das Produkt zweier großer Primzahlen wieder in seine Faktoren zu zerlegen.','bilder/skizze-rsa.svg','Bob schickt Alice seinen öffentlichen Schlüssel, Alice verschlüsselt, nur Bob entschlüsselt mit d','Wie ein Briefkasten: Mit Bobs öffentlichem Schlüssel kann jeder verschlüsseln, entschlüsseln kann nur Bob mit seinem privaten Schlüssel d.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (5,2);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(5,'zutat',1,'Zwei große, geheime Primzahlen p und q'),
(5,'zutat',2,'Modul n = p · q (mindestens 2048 Bit)'),
(5,'zutat',3,'Öffentlicher Exponent e (meist 65537)'),
(5,'zutat',4,'Privater Exponent d'),
(5,'zutat',5,'Nachricht m als Zahl kleiner n'),
(5,'schritt',1,'Zwei große Primzahlen p und q zufällig wählen.'),
(5,'schritt',2,'n = p · q und φ(n) = (p − 1)(q − 1) berechnen.'),
(5,'schritt',3,'Einen Exponenten e wählen, der mit φ(n) keinen gemeinsamen Teiler hat.'),
(5,'schritt',4,'d so berechnen, dass e · d mod φ(n) = 1 (erweiterter euklidischer Algorithmus).'),
(5,'schritt',5,'(n, e) veröffentlichen, d, p und q geheim halten.'),
(5,'schritt',6,'Verschlüsseln: c = m<sup>e</sup> mod n.'),
(5,'schritt',7,'Entschlüsseln: m = c<sup>d</sup> mod n.'),
(5,'tipp',1,'„Lehrbuch-RSA“ wie hier im Rezept ist unsicher. In der Praxis wird die Nachricht vorher mit einem zufälligen Padding (OAEP) versehen.'),
(5,'tipp',2,'Schlüssellänge: mindestens 2048 Bit, besser 3072 Bit.'),
(5,'tipp',3,'RSA ist langsam. Man verschlüsselt damit nur einen zufälligen <a href="rezept.html?id=4">AES</a>-Schlüssel (hybride Verschlüsselung), wie bei <a href="rezept.html?id=20">OpenPGP</a>.'),
(5,'tipp',4,'„Rückwärts“ benutzt – mit dem privaten Schlüssel rechnen, mit dem öffentlichen prüfen – wird RSA zur <a href="rezept.html?id=10">digitalen Signatur</a>.'),
(5,'tipp',5,'Ein ausreichend großer Quantencomputer könnte RSA mit dem Shor-Algorithmus brechen. Die Nachfolger sind die Post-Quanten-Verfahren <a href="rezept.html?id=23">ML-KEM</a> und <a href="rezept.html?id=24">ML-DSA</a>.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(5,1,'Wikipedia: RSA-Kryptosystem','https://de.wikipedia.org/wiki/RSA-Kryptosystem'),
(5,2,'YouTube: Der RSA-Algorithmus einfach erklärt (Bildungsweg)','https://www.youtube.com/watch?v=_rYYj3v4mFc');

-- 6: Diffie-Hellman-Schlüsselaustausch
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (6,'Diffie-Hellman-Schlüsselaustausch','Zwei Parteien vereinbaren über eine abhörbare Leitung einen gemeinsamen geheimen Schlüssel.','Zwei Köche einigen sich auf ein Geheimrezept, obwohl alle zuhören.','Mit dem Diffie-Hellman-Verfahren (Whitfield Diffie und Martin Hellman, 1976) können sich zwei Parteien über eine öffentliche Leitung auf einen gemeinsamen geheimen Schlüssel einigen, ohne ihn jemals zu übertragen. Ein Lauscher sieht alle Nachrichten, kann den Schlüssel aber nicht berechnen – dafür müsste er das Problem des diskreten Logarithmus lösen.','bilder/skizze-diffie-hellman.svg','Ablauf zwischen Alice und Bob: A = 8 und B = 19 werden ausgetauscht, beide berechnen s = 2, Eve hört nur p, g, A und B','Über die Leitung gehen nur A und B. Aus dem eigenen Geheimnis und dem Wert des anderen berechnen beide dasselbe s.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (6,2);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(6,'zutat',1,'Eine große Primzahl p (öffentlich)'),
(6,'zutat',2,'Ein Generator g (öffentlich)'),
(6,'zutat',3,'Eine geheime Zufallszahl a von Alice'),
(6,'zutat',4,'Eine geheime Zufallszahl b von Bob'),
(6,'schritt',1,'Alice und Bob einigen sich öffentlich auf p und g.'),
(6,'schritt',2,'Alice wählt geheim a und schickt A = g<sup>a</sup> mod p an Bob.'),
(6,'schritt',3,'Bob wählt geheim b und schickt B = g<sup>b</sup> mod p an Alice.'),
(6,'schritt',4,'Alice rechnet s = B<sup>a</sup> mod p.'),
(6,'schritt',5,'Bob rechnet s = A<sup>b</sup> mod p.'),
(6,'schritt',6,'Beide haben jetzt denselben Wert s = g<sup>ab</sup> mod p und leiten daraus z. B. einen <a href="rezept.html?id=4">AES</a>-Schlüssel ab.'),
(6,'tipp',1,'Bekannte Analogie: Beide mischen eine gemeinsame Grundfarbe mit ihrer Geheimfarbe und tauschen die Mischungen. Mischen ist leicht, Entmischen fast unmöglich.'),
(6,'tipp',2,'Diffie-Hellman allein authentisiert niemanden – ein Angreifer in der Mitte (Man-in-the-Middle) kann mit beiden getrennt einen Schlüssel aushandeln. Darum kombiniert man es mit <a href="rezept.html?id=10">Signaturen</a> und <a href="rezept.html?id=16">Zertifikaten</a>.'),
(6,'tipp',3,'Heute nimmt man meist elliptische Kurven (ECDH, z. B. X25519) – gleiche Idee, kürzere Schlüssel.'),
(6,'tipp',4,'Für jede Sitzung neue a und b wählen: Dann bleiben alte Sitzungen geheim, selbst wenn später ein Langzeitschlüssel gestohlen wird (Forward Secrecy).'),
(6,'tipp',5,'Ein Quantencomputer könnte den diskreten Logarithmus mit dem Shor-Algorithmus lösen. Der quantensichere Ersatz ist <a href="rezept.html?id=23">ML-KEM</a>, meist <a href="rezept.html?id=26">hybrid</a> zusammen mit X25519.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(6,1,'Wikipedia: Diffie-Hellman-Schlüsselaustausch','https://de.wikipedia.org/wiki/Diffie-Hellman-Schlüsselaustausch'),
(6,2,'YouTube: Diffie Hellman Schlüsselaustausch (Schlau ist wow)','https://www.youtube.com/watch?v=QqfNoS6zeRU');

-- 7: SHA-256-Hashfunktion
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (7,'SHA-256-Hashfunktion','Berechnet aus beliebigen Daten einen 256-Bit-Fingerabdruck. Jede Änderung ergibt einen völlig anderen Wert.','Der digitale Fingerabdruck – ein Krümel Unterschied und alles schmeckt anders.','Eine kryptografische Hashfunktion berechnet aus beliebig langen Daten einen kurzen Fingerabdruck fester Länge – bei SHA-256 sind das 256 Bit, also 64 Hex-Zeichen. Gleiche Eingabe ergibt immer den gleichen Hash, die kleinste Änderung einen völlig anderen. Aus dem Hash lässt sich die Eingabe nicht zurückrechnen, und man findet praktisch keine zwei Eingaben mit gleichem Hash.','bilder/skizze-sha256.svg','Zwei fast gleiche Texte ergeben mit SHA-256 völlig verschiedene Hashwerte','Ein einziger anderer Buchstabe ergibt einen völlig anderen Hash. Vom Hash zurück zum Text kommt man nicht.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (7,3);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(7,'zutat',1,'Daten beliebiger Länge (Text, Datei, Download …)'),
(7,'zutat',2,'Die Hashfunktion SHA-256 (Familie SHA-2)'),
(7,'zutat',3,'Ein vertrauenswürdiger Vergleichswert'),
(7,'schritt',1,'Die Daten auffüllen (Padding + Länge) und in Blöcke zu 512 Bit aufteilen.'),
(7,'schritt',2,'Jeden Block in 64 Runden in einen internen Zustand von 256 Bit einarbeiten.'),
(7,'schritt',3,'Den Endzustand als Hashwert ausgeben.'),
(7,'schritt',4,'Der Empfänger berechnet den Hash aus den erhaltenen Daten erneut.'),
(7,'schritt',5,'Mit dem vertrauenswürdigen Wert vergleichen: Gleich bedeutet, die Daten sind unverändert.'),
(7,'tipp',1,'Ein Hash allein schützt nicht vor gezielter Manipulation: Wer die Daten austauschen kann, tauscht auch den Hash aus. Dagegen hilft ein <a href="rezept.html?id=9">HMAC</a> oder eine <a href="rezept.html?id=10">Signatur</a>.'),
(7,'tipp',2,'MD5 und SHA-1 gelten als gebrochen und sollten nicht mehr verwendet werden.'),
(7,'tipp',3,'Für Passwörter ist SHA-256 zu schnell – dafür gibt es <a href="rezept.html?id=12">Passwort-Hashing</a>.'),
(7,'tipp',4,'Prüfsumme einer heruntergeladenen Datei unter Linux: <code>sha256sum datei.iso</code>, unter Windows: <code>certutil -hashfile datei.iso SHA256</code>.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(7,1,'Wikipedia: SHA-2','https://de.wikipedia.org/wiki/SHA-2'),
(7,2,'YouTube: How Does SHA-256 Work? (learnmeabitcoin, englisch)','https://www.youtube.com/watch?v=f9EbD6iY9zI');

-- 8: Merkle-Baum
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (8,'Merkle-Baum','Viele Datenblöcke, ein einziger Hash an der Spitze. Jede Änderung irgendwo unten verändert die Wurzel.','Ein Stammbaum aus Fingerabdrücken – ein Krümel unten ändert die ganze Krone.','Ein Merkle-Baum (Ralph Merkle, 1979) fasst viele Datenblöcke zu einem einzigen Hash zusammen, dem Wurzel-Hash. Jeder Block wird gehasht, dann werden immer zwei Hashes aneinandergehängt und erneut gehasht – so lange, bis nur noch einer übrig ist. Kennt man den Wurzel-Hash aus einer vertrauenswürdigen Quelle, kann man jeden einzelnen Block prüfen, ohne alle anderen herunterzuladen.','bilder/skizze-merkle.svg','Merkle-Baum mit vier Blöcken, vier Blatt-Hashes, zwei mittleren Hashes und der Wurzel. Der Weg von Block 3 zur Wurzel ist markiert','Ändert sich ein Block (blau), ändern sich alle Hashes auf seinem Weg nach oben – bis zur Wurzel.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (8,3);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(8,'zutat',1,'Mehrere Datenblöcke (Dateien, Transaktionen, Download-Stücke)'),
(8,'zutat',2,'Eine Hashfunktion, z. B. <a href="rezept.html?id=7">SHA-256</a>'),
(8,'zutat',3,'Ein vertrauenswürdiger Wurzel-Hash'),
(8,'schritt',1,'Jeden Datenblock einzeln hashen – das sind die Blätter des Baums.'),
(8,'schritt',2,'Immer zwei benachbarte Hashes aneinanderhängen und das Ergebnis wieder hashen.'),
(8,'schritt',3,'Ebene für Ebene wiederholen, bis nur noch ein Hash übrig ist: die Wurzel.'),
(8,'schritt',4,'Die Wurzel veröffentlichen oder <a href="rezept.html?id=10">signieren</a>.'),
(8,'schritt',5,'Zum Prüfen eines einzelnen Blocks braucht man nur die Nachbar-Hashes auf dem Weg zur Wurzel (Merkle-Beweis) – bei einer Million Blöcken sind das nur 20 Hashes.'),
(8,'tipp',1,'Git arbeitet so: Ein Commit-Hash fasst über einen Hash-Baum alle Dateien und Ordner zusammen.'),
(8,'tipp',2,'Bei Bitcoin steht die Merkle-Wurzel aller Transaktionen im Blockkopf.'),
(8,'tipp',3,'BitTorrent und IPFS prüfen jedes heruntergeladene Stück einzeln gegen den Baum.'),
(8,'tipp',4,'Auch die Certificate-Transparency-Logs für <a href="rezept.html?id=16">Zertifikate</a> sind Merkle-Bäume.'),
(8,'tipp',5,'Der Baum ist nur so vertrauenswürdig wie seine Wurzel – sie muss z. B. signiert sein.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(8,1,'Wikipedia: Hash-Baum','https://de.wikipedia.org/wiki/Hash-Baum'),
(8,2,'YouTube: A Gentle Introduction to Merkle Trees (redshiftzero, englisch)','https://www.youtube.com/watch?v=C0PuixiGInM');

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

-- 10: Digitale Signatur
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (10,'Digitale Signatur','Mit dem privaten Schlüssel unterschreiben, mit dem öffentlichen prüfen. Beweist Herkunft und Unverändertheit.','Die Unterschrift unter dem Rezept, die niemand fälschen kann.','Eine digitale Signatur ist das elektronische Gegenstück zur Unterschrift: Der Absender signiert mit seinem privaten Schlüssel, und jeder kann die Signatur mit dem öffentlichen Schlüssel prüfen. Anders als beim <a href="rezept.html?id=9">HMAC</a> kann nur der Besitzer des privaten Schlüssels signieren – er kann die Unterschrift später also nicht abstreiten.','bilder/skizze-signatur.svg','Alice hasht das Dokument und signiert mit ihrem privaten Schlüssel, Bob hasht selbst und prüft mit dem öffentlichen Schlüssel','Signiert wird mit dem privaten Schlüssel (blau), geprüft mit dem öffentlichen. Anders als beim HMAC kann Bob selbst keine Signatur erzeugen.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (10,1),(10,3);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(10,'zutat',1,'Schlüsselpaar, z. B. ECDSA mit Kurve P-256, Ed25519 oder RSA'),
(10,'zutat',2,'Hashfunktion (<a href="rezept.html?id=7">SHA-256</a>)'),
(10,'zutat',3,'Das Dokument'),
(10,'zutat',4,'Ein vertrauenswürdiger Weg zum öffentlichen Schlüssel (<a href="rezept.html?id=16">Zertifikat</a>)'),
(10,'schritt',1,'Schlüsselpaar erzeugen und den öffentlichen Schlüssel verteilen.'),
(10,'schritt',2,'Den Hash des Dokuments berechnen.'),
(10,'schritt',3,'Den Hash mit dem privaten Schlüssel signieren.'),
(10,'schritt',4,'Dokument und Signatur verschicken.'),
(10,'schritt',5,'Der Empfänger berechnet selbst den Hash und prüft die Signatur mit dem öffentlichen Schlüssel.'),
(10,'schritt',6,'Gültig? Dann stammt das Dokument vom Schlüsselinhaber und ist unverändert.'),
(10,'tipp',1,'Den privaten Schlüssel nie herausgeben – am besten liegt er auf einer Smartcard oder in einem Sicherheitschip.'),
(10,'tipp',2,'Signieren ist nicht Verschlüsseln: Der Inhalt bleibt für alle lesbar.'),
(10,'tipp',3,'Signieren lohnt nur, wenn der öffentliche Schlüssel wirklich zum Absender gehört – dafür gibt es <a href="rezept.html?id=16">Zertifikate</a>.'),
(10,'tipp',4,'ECDSA braucht für jede Signatur eine frische Zufallszahl. Sony hat bei der PlayStation 3 immer dieselbe verwendet – damit ließ sich der private Schlüssel ausrechnen.'),
(10,'tipp',5,'Einsatz: Software-Updates, Git-Commits, der elektronische Personalausweis, qualifizierte Signaturen nach eIDAS.'),
(10,'tipp',6,'RSA und ECDSA sind nicht quantensicher. Die Nachfolger heißen <a href="rezept.html?id=24">ML-DSA</a> und <a href="rezept.html?id=25">SLH-DSA</a>.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(10,1,'Wikipedia: Digitale Signatur','https://de.wikipedia.org/wiki/Digitale_Signatur'),
(10,2,'YouTube: Digital Signature – Simplified and Explained (CISSPrep, englisch)','https://www.youtube.com/watch?v=MaOyDcVMnXU');

-- 11: JSON Web Token (JWT)
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (11,'JSON Web Token (JWT)','Ein signiertes Ticket, mit dem sich Webanwendungen merken, wer eingeloggt ist. Änderungen fallen sofort auf.','Der Stempel auf der Eintrittskarte – wer daran herumkritzelt, fliegt raus.','Ein JSON Web Token (RFC 7519) ist ein kompaktes, signiertes Ticket. Nach dem Login stellt der Server ein Token aus, und der Browser schickt es bei jeder weiteren Anfrage mit. Es besteht aus drei Teilen, getrennt durch Punkte: Header, Payload (die Angaben, z. B. Nutzername und Ablaufzeit) und Signatur. An der Signatur erkennt der Server, dass er das Token selbst ausgestellt hat und dass niemand die Angaben verändert hat.','bilder/skizze-jwt.svg','Aufbau eines JWT aus Header, Payload und Signatur und der Ablauf zwischen Browser und Server','Header und Payload kann jeder lesen. Nur die Signatur ist mit dem geheimen Schlüssel K (blau) gemacht – und die kann nur der Server berechnen.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (11,1),(11,3);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(11,'zutat',1,'Header, z. B. <code>{"alg": "HS256", "typ": "JWT"}</code>'),
(11,'zutat',2,'Payload mit Angaben, z. B. <code>{"sub": "alice", "admin": false}</code>'),
(11,'zutat',3,'Geheimer Server-Schlüssel (bei HS256)'),
(11,'zutat',4,'<a href="rezept.html?id=9">HMAC</a> oder eine <a href="rezept.html?id=10">digitale Signatur</a>'),
(11,'zutat',5,'Base64url-Kodierung'),
(11,'schritt',1,'Der Nutzer meldet sich mit seinem Passwort an.'),
(11,'schritt',2,'Der Server schreibt Header und Payload als JSON und kodiert beide mit Base64url.'),
(11,'schritt',3,'Der Server berechnet <code>Signatur = HMAC-SHA256(Schlüssel, Header + "." + Payload)</code>.'),
(11,'schritt',4,'Das Token <code>Header.Payload.Signatur</code> geht an den Browser.'),
(11,'schritt',5,'Der Browser schickt das Token bei jeder Anfrage mit (<code>Authorization: Bearer …</code>).'),
(11,'schritt',6,'Der Server rechnet die Signatur nach und prüft die Ablaufzeit – erst dann glaubt er der Payload.'),
(11,'tipp',1,'Die Payload ist nur kodiert, nicht verschlüsselt – jeder kann sie lesen. Also keine Geheimnisse hineinschreiben.'),
(11,'tipp',2,'Den Algorithmus auf dem Server fest vorgeben. Tokens mit <code>"alg":"none"</code> niemals akzeptieren – das war eine berühmte Sicherheitslücke.'),
(11,'tipp',3,'Kurze Ablaufzeiten setzen (Feld <code>exp</code>), sonst ist ein gestohlenes Token lange gültig.'),
(11,'tipp',4,'Für HS256 einen langen, zufälligen Schlüssel nehmen – kurze Schlüssel lassen sich mit dem Token offline erraten.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(11,1,'Wikipedia: JSON Web Token','https://de.wikipedia.org/wiki/JSON_Web_Token'),
(11,2,'YouTube: JWT Explained In Under 10 Minutes (Ariel Weinberger, englisch)','https://www.youtube.com/watch?v=Y2H3DXDeS3Q');

-- 12: Passwort-Hashing
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (12,'Passwort-Hashing','Passwörter nie im Klartext speichern, sondern gesalzen und absichtlich langsam gehasht.','Langsam gegart schmeckt es Angreifern am wenigsten.','Ein Server sollte Passwörter nie im Klartext speichern, sondern nur einen gesalzenen, absichtlich langsamen Hash. Beim Login wird das eingegebene Passwort auf dieselbe Weise gehasht und verglichen. So kann der Nutzer beweisen, wer er ist (Authentisierung), und ein Datenleck verrät die Passwörter nicht sofort.','bilder/skizze-passwort-hashing.svg','Registrieren: Passwort und Salz gehen in eine langsame KDF, Salz und Hash landen in der Datenbank. Anmelden: Eingabe mit gleichem Salz hashen und vergleichen','In der Datenbank stehen nur Salz und Hash (blau). Beim Anmelden wird die Eingabe mit demselben Salz gehasht und verglichen.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (12,1);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(12,'zutat',1,'Das Passwort des Nutzers'),
(12,'zutat',2,'Ein zufälliges Salz (mindestens 16 Byte) pro Nutzer'),
(12,'zutat',3,'Eine langsame Funktion: Argon2id, scrypt, bcrypt oder PBKDF2'),
(12,'zutat',4,'Ein Arbeitsfaktor (Iterationen bzw. Speicherbedarf)'),
(12,'schritt',1,'Bei der Registrierung ein zufälliges Salz erzeugen.'),
(12,'schritt',2,'<code>hash = KDF(Passwort, Salz, Arbeitsfaktor)</code> berechnen.'),
(12,'schritt',3,'Salz, Arbeitsfaktor und Hash in der Datenbank speichern – niemals das Passwort.'),
(12,'schritt',4,'Bei der Anmeldung Salz und Arbeitsfaktor aus der Datenbank holen und das eingegebene Passwort genauso hashen.'),
(12,'schritt',5,'Sind beide Hashes gleich, ist der Nutzer angemeldet.'),
(12,'tipp',1,'Kein schnelles SHA-256 nehmen: Grafikkarten schaffen Milliarden SHA-256-Hashes pro Sekunde.'),
(12,'tipp',2,'Das Salz verhindert vorberechnete Tabellen (Rainbow Tables) und dass gleiche Passwörter gleiche Hashes haben.'),
(12,'tipp',3,'Empfehlung von OWASP: Argon2id – oder PBKDF2-SHA256 mit mindestens 600.000 Iterationen.'),
(12,'tipp',4,'Fehlversuche begrenzen und zusätzlich einen <a href="rezept.html?id=13">zweiten Faktor</a> anbieten.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(12,1,'Wikipedia: Salt (Kryptologie)','https://de.wikipedia.org/wiki/Salt_(Kryptologie)'),
(12,2,'YouTube: How NOT to Store Passwords! (Computerphile, englisch)','https://www.youtube.com/watch?v=8ZtInClXe1Q');

-- 13: Zwei-Faktor mit TOTP
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (13,'Zwei-Faktor mit TOTP','Authenticator-App und Server berechnen aus Geheimnis und Uhrzeit alle 30 Sekunden denselben Code.','Alle 30 Sekunden frisch aus dem Ofen.','Beim <em>Time-based One-Time Password</em> (RFC 6238) berechnen eine Authenticator-App und der Server aus einem gemeinsamen Geheimnis und der aktuellen Uhrzeit alle 30 Sekunden einen sechsstelligen Code. Zusätzlich zum Passwort (etwas, das man weiß) beweist der Code, dass man das Gerät besitzt – ein zweiter Faktor.','bilder/skizze-totp.svg','Geheimnis und Uhrzeit geteilt durch 30 gehen in HMAC-SHA1, das Ergebnis wird auf 6 Ziffern gekürzt. Alle 30 Sekunden entsteht ein neuer Code','App und Server kennen dasselbe Geheimnis (blau) und dieselbe Uhrzeit – darum kommt bei beiden derselbe Code heraus.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (13,1);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(13,'zutat',1,'Gemeinsames Geheimnis (meist per QR-Code übertragen, Base32-kodiert)'),
(13,'zutat',2,'Die aktuelle Unix-Zeit'),
(13,'zutat',3,'<a href="rezept.html?id=9">HMAC</a>-SHA1'),
(13,'zutat',4,'Ungefähr gleich gehende Uhren'),
(13,'schritt',1,'Der Server erzeugt ein Geheimnis und zeigt es als QR-Code an, die App scannt ihn.'),
(13,'schritt',2,'Zeitschritt berechnen: <code>T = floor(Unix-Zeit / 30)</code>.'),
(13,'schritt',3,'<code>HMAC-SHA1(Geheimnis, T)</code> berechnen, mit T als 8-Byte-Zahl.'),
(13,'schritt',4,'Die letzten 4 Bit des HMAC geben einen Offset an. Ab dort 4 Byte lesen und das oberste Bit streichen.'),
(13,'schritt',5,'<code>Code = Zahl mod 1.000.000</code>, mit führenden Nullen auf 6 Stellen.'),
(13,'schritt',6,'Der Server rechnet dasselbe und vergleicht. Meist wird ein Zeitschritt Abweichung toleriert.'),
(13,'tipp',1,'Backup-Codes ausdrucken und sicher aufbewahren, falls das Handy verloren geht.'),
(13,'tipp',2,'TOTP schützt nicht vor Echtzeit-Phishing: Eine gefälschte Seite kann den Code sofort weiterreichen. Stärker sind <a href="rezept.html?id=15">Passkeys</a>, die auf <a href="rezept.html?id=14">Challenge-Response</a> mit Signaturen beruhen.'),
(13,'tipp',3,'SMS-Codes sind schwächer als TOTP, weil Angreifer per SIM-Swapping die Telefonnummer übernehmen können.'),
(13,'tipp',4,'Der Server muss das Geheimnis lesbar speichern (hashen geht hier nicht) und es deshalb besonders gut schützen, z. B. verschlüsselt.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(13,1,'Wikipedia: Time-based one-time password','https://de.wikipedia.org/wiki/Time-based_one-time_password'),
(13,2,'YouTube: What is Time-based One-Time Password (TOTP)? (Ubisecure, englisch)','https://www.youtube.com/watch?v=6Amc3K4dxEc');

-- 14: Challenge-Response
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (14,'Challenge-Response','Der Prüfer stellt eine zufällige Frage, nur wer das Geheimnis kennt, kann richtig antworten.','Beweisen, dass man das Rezept kennt, ohne es zu verraten.','Beim Challenge-Response-Verfahren beweist ein Teilnehmer, dass er ein Geheimnis kennt, ohne es selbst zu übertragen: Der Prüfer schickt eine zufällige Frage (Challenge), der Teilnehmer antwortet mit einem Wert (Response), den nur ein Geheimnisträger berechnen kann. Ein Lauscher kann die Antwort nicht wiederverwenden, weil die nächste Challenge eine andere ist.','bilder/skizze-challenge-response.svg','Ablauf: Client meldet sich, Server schickt zufällige Challenge, Client antwortet mit HMAC, Server prüft','Der Schlüssel K geht nie über die Leitung – nur die Challenge und die passende Antwort darauf.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (14,1);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(14,'zutat',1,'Gemeinsamer geheimer Schlüssel (oder ein Schlüsselpaar)'),
(14,'zutat',2,'Eine frische Zufallszahl (Nonce) als Challenge'),
(14,'zutat',3,'<a href="rezept.html?id=9">HMAC</a> oder eine <a href="rezept.html?id=10">Signatur</a>'),
(14,'schritt',1,'Der Client meldet sich: „Ich bin Alice.“'),
(14,'schritt',2,'Der Server erzeugt eine zufällige Challenge, merkt sie sich und schickt sie an den Client.'),
(14,'schritt',3,'Der Client berechnet <code>Response = HMAC(K, Challenge)</code> und schickt sie zurück.'),
(14,'schritt',4,'Der Server berechnet den erwarteten Wert selbst und vergleicht.'),
(14,'schritt',5,'Die Challenge wird verworfen – jede ist nur ein einziges Mal gültig.'),
(14,'tipp',1,'Die Challenge muss unvorhersehbar und einmalig sein, sonst sind Replay-Angriffe möglich.'),
(14,'tipp',2,'Mit Signaturen statt HMAC muss der Server gar kein Geheimnis speichern – so funktionieren <a href="rezept.html?id=15">Passkeys</a> und der Public-Key-Login bei <a href="rezept.html?id=19">SSH</a>.'),
(14,'tipp',3,'Weitere Beispiele: Funk-Autoschlüssel, Bankkarten-Chip (EMV), WLAN-Anmeldung.'),
(14,'tipp',4,'Für gegenseitige Authentisierung stellen sich beide Seiten gegenseitig eine Challenge.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(14,1,'Wikipedia: Challenge-Response-Authentifizierung','https://de.wikipedia.org/wiki/Challenge-Response-Authentifizierung'),
(14,2,'YouTube: Authentifizierung mittels Challenge Response Protocol (D3)','https://www.youtube.com/watch?v=FYqiKivTWls');

-- 15: Passkeys (FIDO2)
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (15,'Passkeys (FIDO2)','Login per Fingerabdruck oder PIN: Das Gerät signiert eine Challenge, der Server kennt nur den öffentlichen Schlüssel.','Anmelden ohne Passwort – das Geheimnis verlässt nie die Küche.','Passkeys (Standard FIDO2 / WebAuthn) ersetzen das Passwort durch ein eigenes Schlüsselpaar für jede Webseite. Der private Schlüssel bleibt im Gerät – Handy, Laptop oder Sicherheitsschlüssel – und wird per Fingerabdruck, Gesicht oder PIN freigegeben. Beim Login signiert das Gerät eine zufällige <a href="rezept.html?id=14">Challenge</a> des Servers. Der Server speichert nur den öffentlichen Schlüssel. Weil die Signatur an die Domain gebunden ist, laufen Phishing-Seiten ins Leere.','bilder/skizze-passkeys.svg','Ablauf zwischen Gerät und Server: öffentlichen Schlüssel registrieren, Challenge, Freigabe per Finger, Signatur, Prüfung','Der private Schlüssel (blau) verlässt nie das Gerät. Der Server prüft nur mit dem öffentlichen Schlüssel.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (15,1);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(15,'zutat',1,'Ein Schlüsselpaar pro Webseite (meist ECDSA mit P-256)'),
(15,'zutat',2,'Eine zufällige <a href="rezept.html?id=14">Challenge</a>'),
(15,'zutat',3,'<a href="rezept.html?id=10">Digitale Signatur</a>'),
(15,'zutat',4,'Der Domainname der Webseite'),
(15,'zutat',5,'Freigabe per Fingerabdruck, Gesicht oder PIN'),
(15,'schritt',1,'Registrierung: Das Gerät erzeugt ein neues Schlüsselpaar nur für diese Domain.'),
(15,'schritt',2,'Der öffentliche Schlüssel geht an den Server, der private bleibt im Gerät.'),
(15,'schritt',3,'Login: Der Server schickt eine zufällige Challenge.'),
(15,'schritt',4,'Der Nutzer gibt per Fingerabdruck oder PIN frei.'),
(15,'schritt',5,'Das Gerät signiert die Challenge zusammen mit dem Domainnamen, den es gerade sieht.'),
(15,'schritt',6,'Der Server prüft die Signatur mit dem gespeicherten öffentlichen Schlüssel – passt sie, ist man angemeldet.'),
(15,'tipp',1,'Ein Datenleck beim Server verrät nur öffentliche Schlüssel – damit kann sich niemand anmelden.'),
(15,'tipp',2,'Phishing-sicher: Die Signatur enthält die Domain. Was auf einer gefälschten Seite signiert wird, passt nicht zur echten.'),
(15,'tipp',3,'Der Fingerabdruck verlässt nie das Gerät, er schaltet nur den privaten Schlüssel frei.'),
(15,'tipp',4,'Passkeys werden oft über das Konto von Apple, Google oder einen Passwortmanager synchronisiert – trotzdem ein zweites Gerät als Backup einrichten.'),
(15,'tipp',5,'Im Browser programmiert man das mit der WebAuthn-API: <code>navigator.credentials.create()</code> und <code>navigator.credentials.get()</code>.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(15,1,'Wikipedia: FIDO2','https://de.wikipedia.org/wiki/FIDO2'),
(15,2,'YouTube: Passkeys (FIDO2 / WebAuthn) Explained (Cyber Security Entertainment, englisch)','https://www.youtube.com/watch?v=AI3wiE1DIR4');

-- 16: Zertifikate & PKI
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (16,'Zertifikate & PKI','Eine Zertifizierungsstelle bestätigt mit ihrer Signatur, wem ein öffentlicher Schlüssel gehört.','Das Gütesiegel, das bestätigt: Dieser Schlüssel gehört wirklich zu dieser Küche.','Ein Zertifikat (Standard X.509) bindet einen öffentlichen Schlüssel an eine Identität, zum Beispiel an einen Domainnamen. Eine Zertifizierungsstelle (CA) bestätigt diese Bindung mit ihrer digitalen Signatur. Browser und Betriebssysteme bringen eine Liste von Wurzel-CAs mit, denen sie vertrauen – so entsteht eine Vertrauenskette, die Public-Key-Infrastruktur (PKI).','bilder/skizze-zertifikate.svg','Zertifikatskette: Root-CA signiert Zwischen-CA, Zwischen-CA signiert das Server-Zertifikat, der Browser vertraut der Root-CA','Der Browser vertraut nur der eingebauten Root-CA (blau) und prüft von dort aus jede Signatur der Kette bis zum Server-Zertifikat.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (16,1);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(16,'zutat',1,'Schlüsselpaar des Antragstellers'),
(16,'zutat',2,'Zertifikatsantrag (CSR)'),
(16,'zutat',3,'Eine Zertifizierungsstelle (CA)'),
(16,'zutat',4,'<a href="rezept.html?id=10">Digitale Signatur</a>'),
(16,'zutat',5,'Vertrauensanker: Root-Zertifikate im Browser bzw. Betriebssystem'),
(16,'schritt',1,'Der Antragsteller erzeugt ein Schlüsselpaar und einen CSR mit seinem öffentlichen Schlüssel und seiner Domain.'),
(16,'schritt',2,'Die CA prüft, ob ihm die Domain gehört – bei Let''s Encrypt automatisch per ACME-Challenge.'),
(16,'schritt',3,'Die CA signiert das Zertifikat: Name, öffentlicher Schlüssel, Gültigkeitszeitraum und Aussteller.'),
(16,'schritt',4,'Der Server liefert sein Zertifikat zusammen mit den Zwischenzertifikaten aus.'),
(16,'schritt',5,'Der Browser prüft die Kette bis zu einer Root-CA, die Gültigkeit, den Domainnamen und ob das Zertifikat gesperrt ist.'),
(16,'schritt',6,'Passt alles, gehört der öffentliche Schlüssel wirklich zu dieser Domain.'),
(16,'tipp',1,'Eine kompromittierte CA gefährdet alle: 2011 stellte die gehackte CA DigiNotar gefälschte Zertifikate für Google aus.'),
(16,'tipp',2,'Alle öffentlich ausgestellten Zertifikate landen in Certificate-Transparency-Logs – unter <code>crt.sh</code> kann man sie durchsuchen.'),
(16,'tipp',3,'Zertifikate automatisch erneuern lassen (z. B. mit certbot), damit die Seite nicht plötzlich eine Warnung zeigt.'),
(16,'tipp',4,'Ein Zertifikat sagt nur, wem die Domain gehört – nicht, ob die Seite seriös ist.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(16,1,'Wikipedia: Public-Key-Infrastruktur','https://de.wikipedia.org/wiki/Public-Key-Infrastruktur'),
(16,2,'YouTube: How PKI Works: Certificates, CAs and the Chain of Trust (CBT Nuggets, englisch)','https://www.youtube.com/watch?v=SrWCGe8T3po');

-- 17: AES-GCM
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (17,'AES-GCM','Authentisierte Verschlüsselung: verschlüsselt die Daten und erkennt jede Veränderung.','Verschlüsseln und versiegeln in einem Topf.','AES im <em>Galois/Counter Mode</em> verschlüsselt die Daten (Vertraulichkeit) und berechnet gleichzeitig ein Authentisierungs-Tag (Integrität und Authentizität). Man nennt so etwas AEAD – <em>Authenticated Encryption with Associated Data</em>. Wird auch nur ein Bit im Geheimtext verändert, verweigert der Empfänger das Entschlüsseln. Da nur Schlüsselinhaber ein gültiges Tag erzeugen können, ist auch die Herkunft gesichert – allerdings nur gegenüber Außenstehenden.','bilder/skizze-aes-gcm.svg','AES-GCM: AES über Nonce und Zähler ergibt einen Schlüsselstrom, XOR mit dem Klartext ergibt den Geheimtext, GHASH darüber ergibt das Tag','Erst wird im Counter-Modus verschlüsselt, dann über den Geheimtext ein Tag berechnet. Der Empfänger prüft immer zuerst das Tag.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (17,1),(17,2),(17,3);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(17,'zutat',1,'Geheimer <a href="rezept.html?id=4">AES</a>-Schlüssel (128, 192 oder 256 Bit)'),
(17,'zutat',2,'Eine 96-Bit-Nonce, für jede Nachricht einmalig'),
(17,'zutat',3,'Klartext'),
(17,'zutat',4,'Optional: zusätzliche Daten (AAD), die geschützt, aber nicht verschlüsselt werden – z. B. ein Header'),
(17,'schritt',1,'Den Schlüssel teilen, z. B. per <a href="rezept.html?id=6">Diffie-Hellman</a>.'),
(17,'schritt',2,'Für jede Nachricht eine neue Nonce erzeugen.'),
(17,'schritt',3,'Den Klartext im Counter-Modus verschlüsseln: <code>AES(K, Nonce ‖ Zähler) ⊕ Klartext</code>.'),
(17,'schritt',4,'Über AAD und Geheimtext mit der GHASH-Funktion ein 128-Bit-Tag berechnen.'),
(17,'schritt',5,'Nonce, Geheimtext und Tag verschicken.'),
(17,'schritt',6,'Der Empfänger prüft zuerst das Tag und entschlüsselt nur, wenn es stimmt.'),
(17,'tipp',1,'Eine Nonce mit demselben Schlüssel zweimal zu verwenden ist katastrophal: Das verrät das XOR der Klartexte und erlaubt gefälschte Tags.'),
(17,'tipp',2,'Bei zufälligen Nonces den Schlüssel spätestens nach etwa 2<sup>32</sup> Nachrichten wechseln.'),
(17,'tipp',3,'Beide Seiten kennen denselben Schlüssel, deshalb könnte auch der Empfänger ein gültiges Tag erzeugen. Für einen Beweis gegenüber Dritten braucht man eine <a href="rezept.html?id=10">digitale Signatur</a>.'),
(17,'tipp',4,'Gleichwertige Alternative, besonders ohne AES-Hardware: ChaCha20-Poly1305.'),
(17,'tipp',5,'Standard in <a href="rezept.html?id=18">TLS 1.3</a>, <a href="rezept.html?id=19">SSH</a>, WPA3 und vielen Messengern.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(17,1,'Wikipedia: Galois/Counter Mode','https://de.wikipedia.org/wiki/Galois/Counter_Mode'),
(17,2,'YouTube: AES GCM (Computerphile, englisch)','https://www.youtube.com/watch?v=-fpVv_T4xwA');

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

-- 19: SSH
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (19,'SSH','Sicherer Fernzugriff auf Server: Schlüsselaustausch, Host-Keys und Public-Key-Login.','Der sichere Hintereingang in die Serverküche.','<em>Secure Shell</em> ermöglicht den sicheren Zugriff auf entfernte Rechner. Wie <a href="rezept.html?id=18">TLS</a> kombiniert SSH mehrere Zutaten: einen Diffie-Hellman-Schlüsselaustausch, die Authentisierung des Servers über seinen Host-Key, die Authentisierung des Nutzers – am besten per Public Key und <a href="rezept.html?id=14">Challenge-Response</a> – und authentisierte Verschlüsselung aller Daten.',NULL,NULL,NULL,'2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (19,1),(19,2),(19,3);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(19,'zutat',1,'Host-Schlüsselpaar des Servers'),
(19,'zutat',2,'Nutzer-Schlüsselpaar (z. B. Ed25519)'),
(19,'zutat',3,'ECDH-Schlüsselaustausch'),
(19,'zutat',4,'<a href="rezept.html?id=17">AES-GCM</a> oder ChaCha20-Poly1305'),
(19,'zutat',5,'Die Dateien <code>known_hosts</code> und <code>authorized_keys</code>'),
(19,'schritt',1,'Einmalig: Schlüsselpaar mit <code>ssh-keygen</code> erzeugen und den öffentlichen Schlüssel auf dem Server in <code>~/.ssh/authorized_keys</code> eintragen.'),
(19,'schritt',2,'Beim Verbinden einigen sich Client und Server auf Verfahren und machen einen ECDH-Schlüsselaustausch.'),
(19,'schritt',3,'Der Server signiert den Austausch mit seinem Host-Key. Der Client vergleicht den Schlüssel mit <code>known_hosts</code>. Bei der allerersten Verbindung ist dort noch nichts eingetragen: Der Client zeigt den Fingerabdruck an, und man bestätigt ihn einmalig (Trust on first use).'),
(19,'schritt',4,'Ab jetzt ist die Verbindung verschlüsselt.'),
(19,'schritt',5,'Der Client beweist mit einer Signatur über die Sitzungs-ID, dass er den privaten Nutzerschlüssel besitzt.'),
(19,'schritt',6,'Der Server prüft die Signatur gegen <code>authorized_keys</code> und öffnet die Shell.'),
(19,'tipp',1,'Passwort-Login auf dem Server abschalten (<code>PasswordAuthentication no</code>), sobald der Schlüssel-Login funktioniert.'),
(19,'tipp',2,'Die Warnung „REMOTE HOST IDENTIFICATION HAS CHANGED“ immer ernst nehmen – es könnte ein Man-in-the-Middle sein. Den Fingerabdruck bei der ersten Verbindung nach Möglichkeit über einen zweiten Weg prüfen.'),
(19,'tipp',3,'Den privaten Schlüssel mit einer Passphrase schützen und mit <code>ssh-agent</code> nur einmal pro Sitzung eingeben.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(19,1,'Wikipedia: Secure Shell','https://de.wikipedia.org/wiki/Secure_Shell'),
(19,2,'YouTube: How Secure Shell Works (SSH) (Computerphile, englisch)','https://www.youtube.com/watch?v=ORcvSkgdA58');

-- 20: E-Mail-Verschlüsselung mit OpenPGP
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (20,'E-Mail-Verschlüsselung mit OpenPGP','Hybride Verschlüsselung plus Signatur: Nur der Empfänger kann die Mail lesen und weiß, von wem sie ist.','Der versiegelte Brief im Zeitalter der Postkarte.','OpenPGP (z. B. mit GnuPG oder Thunderbird) kombiniert asymmetrische und symmetrische Verfahren: Die E-Mail wird mit einem zufälligen Sitzungsschlüssel per <a href="rezept.html?id=4">AES</a> verschlüsselt, und dieser Sitzungsschlüssel mit dem öffentlichen Schlüssel des Empfängers. Zusätzlich <a href="rezept.html?id=10">signiert</a> der Absender die Nachricht. So entsteht Ende-zu-Ende-Verschlüsselung – kein Mailserver kann mitlesen.','bilder/skizze-pgp.svg','Hybride Verschlüsselung: Die Mail wird mit einem zufälligen AES-Schlüssel S verschlüsselt, S mit Bobs öffentlichem Schlüssel','Hybride Verschlüsselung: Das schnelle AES verschlüsselt die Mail, das langsame RSA nur den kurzen Schlüssel S. Die Signatur ist hier weggelassen.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (20,1),(20,2),(20,3);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(20,'zutat',1,'Eigenes Schlüsselpaar und öffentlicher Schlüssel des Empfängers'),
(20,'zutat',2,'Zufälliger Sitzungsschlüssel (AES)'),
(20,'zutat',3,'<a href="rezept.html?id=10">Digitale Signatur</a>'),
(20,'zutat',4,'Fingerabdruck-Vergleich über einen zweiten Kanal'),
(20,'schritt',1,'Beide erzeugen ein Schlüsselpaar und tauschen die öffentlichen Schlüssel aus.'),
(20,'schritt',2,'Die Fingerabdrücke über einen zweiten Weg vergleichen – am Telefon oder persönlich.'),
(20,'schritt',3,'Der Absender signiert die Mail mit seinem privaten Schlüssel.'),
(20,'schritt',4,'Ein zufälliger Sitzungsschlüssel wird erzeugt und Mail samt Signatur damit verschlüsselt.'),
(20,'schritt',5,'Der Sitzungsschlüssel wird mit dem öffentlichen Schlüssel des Empfängers verschlüsselt und angehängt.'),
(20,'schritt',6,'Der Empfänger entschlüsselt mit seinem privaten Schlüssel erst den Sitzungsschlüssel, dann die Mail, und prüft die Signatur.'),
(20,'tipp',1,'Betreff und Metadaten (Absender, Empfänger, Uhrzeit) werden bei klassischem OpenPGP nicht verschlüsselt.'),
(20,'tipp',2,'Den privaten Schlüssel mit einer starken Passphrase schützen und gleich ein Widerrufszertifikat anlegen.'),
(20,'tipp',3,'Alternative mit <a href="rezept.html?id=16">Zertifikaten</a> statt Web of Trust: S/MIME.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(20,1,'Wikipedia: OpenPGP','https://de.wikipedia.org/wiki/OpenPGP'),
(20,2,'YouTube: PGP: E-Mails mit Thunderbird verschlüsseln, Teil 1 (Sebastian Philippi)','https://www.youtube.com/watch?v=WS6D4q3duHo');

-- 21: Ende-zu-Ende-Messenger (Signal-Protokoll)
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (21,'Ende-zu-Ende-Messenger (Signal-Protokoll)','Nur die Endgeräte können mitlesen. Mit der Double Ratchet bekommt jede Nachricht einen neuen Schlüssel.','Jede Nachricht bekommt ihren eigenen Schlüssel – frisch gerieben.','Das Signal-Protokoll (genutzt von Signal, WhatsApp und anderen) verschlüsselt Nachrichten so, dass nur die Endgeräte sie lesen können – nicht einmal der Server des Anbieters. Mit dem <em>Double-Ratchet</em>-Verfahren wird für jede Nachricht ein neuer Schlüssel abgeleitet. Wird ein Schlüssel gestohlen, bleiben frühere Nachrichten trotzdem geheim (Forward Secrecy).','bilder/skizze-signal.svg','Ratsche: Aus jedem Kettenschlüssel entstehen per KDF der nächste Kettenschlüssel und ein Nachrichtenschlüssel, zurück geht es nicht','Jede Nachricht bekommt ihren eigenen Schlüssel (blau). Wer später eine Kette stiehlt, kann alte Nachrichtenschlüssel nicht zurückrechnen.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (21,1),(21,2),(21,3);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(21,'zutat',1,'Identitäts-Schlüsselpaare der Geräte'),
(21,'zutat',2,'X3DH bzw. PQXDH (mehrfacher <a href="rezept.html?id=6">Diffie-Hellman</a>)'),
(21,'zutat',3,'Double Ratchet: DH-Ratsche und Ketten aus <a href="rezept.html?id=9">HMAC</a>'),
(21,'zutat',4,'<a href="rezept.html?id=17">Authentisierte Verschlüsselung</a>'),
(21,'zutat',5,'Sicherheitsnummer zum Vergleichen'),
(21,'schritt',1,'Jedes Gerät lädt öffentliche Schlüssel auf den Server: Identitätsschlüssel, signierter Prekey und Einmal-Prekeys.'),
(21,'schritt',2,'Der Absender holt das Schlüsselbündel des Empfängers und berechnet per mehrfachem Diffie-Hellman ein gemeinsames Geheimnis – auch wenn der Empfänger gerade offline ist.'),
(21,'schritt',3,'Daraus startet die Double Ratchet: Für jede Nachricht wird über eine Kette aus HMACs ein neuer Nachrichtenschlüssel abgeleitet.'),
(21,'schritt',4,'Bei jeder Antwort kommt ein neuer Diffie-Hellman-Schritt dazu – so heilt sich die Verbindung sogar nach einem Schlüsseldiebstahl.'),
(21,'schritt',5,'Jede Nachricht wird mit ihrem Schlüssel authentisiert verschlüsselt, der Schlüssel danach gelöscht.'),
(21,'schritt',6,'Die Nutzer vergleichen einmal ihre Sicherheitsnummer (QR-Code scannen) und schließen so einen Man-in-the-Middle aus.'),
(21,'tipp',1,'Bei wichtigen Kontakten die Sicherheitsnummer verifizieren – sonst merkt man einen Man-in-the-Middle nicht.'),
(21,'tipp',2,'Metadaten (wer schreibt wann mit wem) schützt Ende-zu-Ende-Verschlüsselung nicht automatisch.'),
(21,'tipp',3,'Ein unverschlüsseltes Chat-Backup in der Cloud hebelt die ganze Verschlüsselung aus.'),
(21,'tipp',4,'Signal setzt mit PQXDH bereits ein Post-Quanten-Verfahren ein.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(21,1,'Wikipedia: Signal-Protokoll','https://de.wikipedia.org/wiki/Signal-Protokoll'),
(21,2,'YouTube: Double Ratchet Messaging Encryption (Computerphile, englisch)','https://www.youtube.com/watch?v=9sO2qdTci-s');

-- 22: Gitterkryptografie: Learning With Errors
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (22,'Gitterkryptografie: Learning With Errors','Gleichungen mit absichtlich eingebauten kleinen Fehlern – die Grundlage der meisten Post-Quanten-Verfahren.','Eine Prise Salz zu viel – und niemand kann das Rezept mehr nachrechnen.','<em>Learning With Errors</em> (LWE, Oded Regev, 2005) ist das Grundrezept der meisten Post-Quanten-Verfahren. Ein lineares Gleichungssystem zu lösen ist leicht. Addiert man aber zu jedem Ergebnis einen kleinen zufälligen Fehler, wird das Finden der Lösung extrem schwer – nach heutigem Wissen auch für Quantencomputer. Geometrisch entspricht das der Suche nach dem nächsten Punkt in einem Gitter mit Hunderten Dimensionen. Auf LWE bauen <a href="rezept.html?id=23">ML-KEM</a> und <a href="rezept.html?id=24">ML-DSA</a> auf.','bilder/skizze-lwe.svg','Spielzeug-Beispiel mit q = 17: Alice berechnet b = (8, 12, 2, 4) aus A, dem geheimen s = (3, 5) und kleinen Fehlern. Bob verschlüsselt Bit 1 zu u = (3, 4) und v = 5. Alice erhält 10, das nahe bei 8 liegt, also Bit 1.','Mit dem geheimen s bleibt nach dem Entschlüsseln nur das Rauschen übrig. Ohne s sieht b aus wie Zufall.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (22,2);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(22,'zutat',1,'Ein Modulus q (öffentlich)'),
(22,'zutat',2,'Eine zufällige Matrix A (öffentlich)'),
(22,'zutat',3,'Ein geheimer Vektor s'),
(22,'zutat',4,'Ein Fehlervektor e mit kleinen Werten wie −1, 0, 1 (geheim)'),
(22,'zutat',5,'Eine Nachricht: ein Bit'),
(22,'schritt',1,'Alice berechnet b = A · s + e mod q. Öffentlicher Schlüssel ist (A, b), geheim bleibt s.'),
(22,'schritt',2,'Bob wählt zufällig einige Zeilen aus.'),
(22,'schritt',3,'Er addiert die gewählten Zeilen von A zu u und die passenden Einträge von b zu v.'),
(22,'schritt',4,'Für Bit 1 addiert er zusätzlich q/2 (abgerundet) auf v, für Bit 0 nichts. Er schickt (u, v).'),
(22,'schritt',5,'Alice rechnet v − u · s mod q. Übrig bleiben nur die kleinen Fehler – plus q/2, falls Bit 1.'),
(22,'schritt',6,'Liegt das Ergebnis nahe bei 0 (oder knapp unter q), war es Bit 0, liegt es nahe bei q/2, war es Bit 1.'),
(22,'tipp',1,'Ohne den Fehler e wäre es ein gewöhnliches Gleichungssystem, das man mit dem Gauß-Verfahren in Sekunden löst. Erst das „Rauschen“ macht es schwer.'),
(22,'tipp',2,'Die Fehler dürfen sich nicht zu stark aufsummieren, sonst kippt das Bit beim Entschlüsseln. Echte Verfahren wählen die Parameter so, dass das praktisch nie passiert.'),
(22,'tipp',3,'Die Skizze rechnet mit 2 Dimensionen – echte Verfahren mit Hunderten. ML-KEM nutzt Polynome mit 256 Koeffizienten und q = 3329 („Module-LWE“).'),
(22,'tipp',4,'Der Shor-Algorithmus, der <a href="rezept.html?id=5">RSA</a> und <a href="rezept.html?id=6">Diffie-Hellman</a> bricht, hilft hier nicht: Für Gitterprobleme ist kein effizienter Quantenalgorithmus bekannt.'),
(22,'tipp',5,'Gitter können noch mehr: Auch vollhomomorphe Verschlüsselung, mit der man auf verschlüsselten Daten rechnen kann, basiert auf LWE.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(22,1,'Wikipedia: Learning with errors','https://de.wikipedia.org/wiki/Learning_with_errors'),
(22,2,'YouTube: Learning with errors: Encrypting with unsolvable equations (Chalk Talk, englisch)','https://www.youtube.com/watch?v=K026C5YaB3A');

-- 23: ML-KEM (Kyber)
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (23,'ML-KEM (Kyber)','Quantensicherer Schlüsselaustausch: Ein zufälliger Schlüssel wird eingekapselt und nur der Empfänger packt ihn aus.','Der quantensichere Nachfolger von Diffie-Hellman: Das Geheimnis reist im versiegelten Topf.','ML-KEM (<em>Module-Lattice-Based Key-Encapsulation Mechanism</em>) ist seit August 2024 der NIST-Standard FIPS 203 und basiert auf CRYSTALS-Kyber. Ein KEM verschlüsselt keine Nachrichten, sondern „verkapselt“ einen zufälligen gemeinsamen Schlüssel. Ein Quantencomputer könnte mit dem Shor-Algorithmus <a href="rezept.html?id=5">RSA</a> und <a href="rezept.html?id=6">Diffie-Hellman</a> brechen – ML-KEM beruht dagegen auf dem Gitterproblem <a href="rezept.html?id=22">Learning With Errors</a>, für das kein solcher Angriff bekannt ist.','bilder/skizze-ml-kem.svg','Ablauf von ML-KEM-768: Alice schickt ek mit 1184 Byte an Bob, Bob kapselt den Schlüssel K ein und schickt das Chiffrat c mit 1088 Byte zurück, beide haben K mit 32 Byte, Eve sieht nur ek und c','Anders als bei Diffie-Hellman erzeugt nur Bob das Geheimnis. Alice packt es mit ihrem dk wieder aus.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (23,2);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(23,'zutat',1,'Ein Parametersatz: ML-KEM-512, -768 oder -1024'),
(23,'zutat',2,'Ein öffentlicher Encapsulation Key ek'),
(23,'zutat',3,'Ein geheimer Decapsulation Key dk'),
(23,'zutat',4,'Hashfunktionen aus der SHA-3-Familie'),
(23,'zutat',5,'Eine gute Zufallsquelle'),
(23,'schritt',1,'<strong>KeyGen:</strong> Alice wählt geheime kleine Polynome s und e und berechnet t = A · s + e. Ihr ek ist t zusammen mit dem Startwert für A, ihr dk enthält s.'),
(23,'schritt',2,'Alice schickt ek an Bob.'),
(23,'schritt',3,'<strong>Encaps:</strong> Bob würfelt 32 zufällige Bytes m und leitet daraus per Hash den gemeinsamen Schlüssel K und den Zufall für die Verschlüsselung ab.'),
(23,'schritt',4,'Bob verschlüsselt m mit ek wie im <a href="rezept.html?id=22">LWE-Rezept</a> zum Chiffrat c und schickt c an Alice. K behält er.'),
(23,'schritt',5,'<strong>Decaps:</strong> Alice entschlüsselt c mit dk, erhält m und berechnet daraus dasselbe K.'),
(23,'schritt',6,'Zur Kontrolle verschlüsselt Alice m noch einmal selbst – das geht, weil auch Bobs Zufall aus m abgeleitet wurde. Weicht das Ergebnis von c ab, gibt sie einen nutzlosen Pseudo-Schlüssel aus – so lernt ein Angreifer nichts aus manipulierten Chiffraten.'),
(23,'schritt',7,'Beide nutzen K, z. B. als <a href="rezept.html?id=17">AES-GCM</a>-Schlüssel.'),
(23,'tipp',1,'„Harvest now, decrypt later“: Angreifer können verschlüsselten Verkehr schon heute speichern und später mit einem Quantencomputer entschlüsseln. Deshalb wird der Schlüsselaustausch als Erstes umgestellt.'),
(23,'tipp',2,'ML-KEM ist sehr schnell, aber größer: Bei ML-KEM-768 hat ek 1184 Byte und c 1088 Byte, bei X25519 sind es je 32 Byte.'),
(23,'tipp',3,'ML-KEM-768 ist die übliche Wahl. ML-KEM-1024 nimmt man, wenn es besonders lange geheim bleiben muss.'),
(23,'tipp',4,'Wie Diffie-Hellman authentisiert ML-KEM niemanden. Dafür braucht es Signaturen, z. B. <a href="rezept.html?id=24">ML-DSA</a>.'),
(23,'tipp',5,'In der Praxis wird ML-KEM meist <a href="rezept.html?id=26">hybrid</a> zusammen mit X25519 eingesetzt.'),
(23,'tipp',6,'Als Reserve hat das NIST 2025 zusätzlich HQC ausgewählt – ein KEM auf Basis fehlerkorrigierender Codes, falls bei Gittern doch Schwächen auftauchen.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(23,1,'Wikipedia: Kyber (Kryptosystem)','https://de.wikipedia.org/wiki/Kyber_(Kryptosystem)'),
(23,2,'YouTube: Kyber (ML-KEM) (Cryptography 101, englisch)','https://www.youtube.com/watch?v=G-A1d6P_1yo');

-- 24: ML-DSA (Dilithium)
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (24,'ML-DSA (Dilithium)','Quantensichere Signatur auf Basis von Gittern – der Nachfolger von RSA- und ECDSA-Signaturen.','Unterschreiben mit Gittern – und so lange neu würfeln, bis nichts Geheimes durchschmeckt.','ML-DSA (<em>Module-Lattice-Based Digital Signature Algorithm</em>) ist seit August 2024 der NIST-Standard FIPS 204 und basiert auf CRYSTALS-Dilithium. Es ersetzt RSA- und ECDSA-<a href="rezept.html?id=10">Signaturen</a>, die ein Quantencomputer brechen könnte. Das Prinzip heißt <em>Fiat-Shamir with Aborts</em>: Die Signatur enthält das Geheimnis, versteckt unter einer Zufallsmaske. Würde sie zu viel verraten, wird sie verworfen und neu berechnet.','bilder/skizze-ml-dsa.svg','Links Alice: Maske würfeln, obere Bits von A mal y, Challenge c hashen, z berechnen, prüfen ob z klein genug ist, sonst neu würfeln, dann Signatur c, z, h. Rechts Bob: A mal z minus c mal t berechnen, obere Bits bilden, Hash mit c vergleichen und prüfen, ob z klein ist.','Bob kommt ohne s1 auf dieselben oberen Bits wie Alice, weil sich das Geheimnis beim Nachrechnen herauskürzt.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (24,1),(24,3);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(24,'zutat',1,'Ein Parametersatz: ML-DSA-44, -65 oder -87'),
(24,'zutat',2,'Eine öffentliche Matrix A'),
(24,'zutat',3,'Geheime kleine Vektoren s1 und s2'),
(24,'zutat',4,'Öffentlicher Schlüssel t = A · s1 + s2'),
(24,'zutat',5,'Die Hashfunktion SHAKE256'),
(24,'zutat',6,'Die Nachricht'),
(24,'schritt',1,'Alice würfelt eine zufällige Maske y.'),
(24,'schritt',2,'Sie berechnet w = A · y und behält davon nur die oberen Bits w1.'),
(24,'schritt',3,'Aus Nachricht und w1 entsteht per Hash die Challenge c – ein Polynom mit wenigen Einträgen +1 und −1.'),
(24,'schritt',4,'Sie berechnet z = y + c · s1.'),
(24,'schritt',5,'Ist z zu groß, würde es etwas über s1 verraten oder würde c · s2 die oberen Bits verändern, verwirft sie alles und beginnt wieder bei Schritt 1. Im Schnitt braucht es nur wenige Versuche.'),
(24,'schritt',6,'Die Signatur besteht aus c, z und einem kleinen Hinweis h.'),
(24,'schritt',7,'Bob berechnet A · z − c · t, bildet daraus mit h die oberen Bits w1'' und prüft, ob der Hash aus Nachricht und w1'' wieder c ergibt und z klein ist.'),
(24,'tipp',1,'Warum klappt die Prüfung? A · z − c · t = A · y + c · A · s1 − c · (A · s1 + s2) = A · y − c · s2. Weil c · s2 klein ist, ändern sich die oberen Bits fast nie – und Alice prüft beim Signieren, dass sie es wirklich nicht tun, sonst würfelt sie neu.'),
(24,'tipp',2,'Größer als ECDSA: Bei ML-DSA-65 hat der öffentliche Schlüssel 1952 Byte und die Signatur 3309 Byte, bei ECDSA (P-256) je etwa 64 Byte. In <a href="rezept.html?id=16">Zertifikatsketten</a> macht sich das bemerkbar.'),
(24,'tipp',3,'Anders als bei ECDSA führt ein schlechter Zufall nicht zum Verlust des Schlüssels – es gibt sogar eine deterministische Variante ganz ohne Zufall.'),
(24,'tipp',4,'Signaturen sind weniger eilig als Verschlüsselung: Eine Signatur muss zum Zeitpunkt der Prüfung halten, man kann sie nicht heute speichern und später fälschen. Ausnahme sind langlebige Schlüssel, etwa für Root-Zertifikate oder Firmware-Signaturen.'),
(24,'tipp',5,'Alternativen: <a href="rezept.html?id=25">SLH-DSA</a> setzt nur auf Hashfunktionen, FN-DSA (auf Basis von Falcon) hat kürzere Signaturen.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(24,1,'Wikipedia: Lattice-based cryptography (englisch)','https://en.wikipedia.org/wiki/Lattice-based_cryptography'),
(24,2,'YouTube: Dilithium Signatures (ML-DSA) (Cryptography 101, englisch)','https://www.youtube.com/watch?v=JvqUS8Ai87g');

-- 25: SLH-DSA (SPHINCS+)
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (25,'SLH-DSA (SPHINCS+)','Quantensichere Signatur nur aus Hashfunktionen und Merkle-Bäumen. Große Signaturen, dafür besonders konservativ.','Unterschreiben nur mit Hashfunktionen – die Hausmannskost unter den Post-Quanten-Rezepten.','SLH-DSA (<em>Stateless Hash-Based Digital Signature Algorithm</em>) ist seit August 2024 der NIST-Standard FIPS 205 und basiert auf SPHINCS+. Seine Sicherheit hängt nur von der Hashfunktion ab, etwa <a href="rezept.html?id=7">SHA-256</a> – das macht es zur vorsichtigsten Wahl. Quantencomputer können Hashfunktionen mit dem Grover-Algorithmus höchstens quadratisch schneller angreifen – das gleicht man mit ausreichend langen Hashwerten aus. SLH-DSA stapelt Einmalsignaturen und <a href="rezept.html?id=8">Merkle-Bäume</a> zu einem riesigen Baum, dem <em>Hypertree</em>.','bilder/skizze-slh-dsa.svg','Hypertree: Unten deckt FORS zum Nachrichten-Hash passende Blätter auf, darüber signiert ein WOTS+-Blatt eines unteren Merkle-Baums das FORS-Ergebnis, dessen Wurzel wird von einem Blatt des oberen Merkle-Baums signiert, dessen Wurzel ist der öffentliche Schlüssel','Blau ist der Weg einer Signatur: vom Nachrichten-Hash ganz unten bis zur Wurzel oben, die jeder kennt.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (25,1),(25,3);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(25,'zutat',1,'Eine Hashfunktion: SHA-2 oder SHAKE256'),
(25,'zutat',2,'WOTS+-Einmalsignaturen'),
(25,'zutat',3,'Merkle-Bäume, in Schichten gestapelt'),
(25,'zutat',4,'FORS-Bäume für den Nachrichten-Hash'),
(25,'zutat',5,'Ein geheimer Startwert, aus dem alle Blätter abgeleitet werden'),
(25,'schritt',1,'<strong>Schlüssel:</strong> Aus dem geheimen Startwert ergeben sich alle Blätter. Die Wurzel des obersten Baums ist der öffentliche Schlüssel.'),
(25,'schritt',2,'<strong>Signieren:</strong> Aus Nachricht und Zufall entsteht ein Hash. Er bestimmt, welcher FORS-Baum ganz unten benutzt wird.'),
(25,'schritt',3,'FORS signiert den Nachrichten-Hash, indem es die dazu passenden geheimen Blätter aufdeckt.'),
(25,'schritt',4,'Ein WOTS+-Blatt im Merkle-Baum darüber signiert den öffentlichen FORS-Schlüssel.'),
(25,'schritt',5,'So geht es Schicht für Schicht nach oben: Jede Baumwurzel wird vom Baum darüber signiert.'),
(25,'schritt',6,'Die Signatur besteht aus allen diesen Teilsignaturen plus den Pfaden zu den Wurzeln.'),
(25,'schritt',7,'<strong>Prüfen:</strong> Bob rechnet nur mit Hashes von unten nach oben und vergleicht das Ergebnis mit dem öffentlichen Schlüssel.'),
(25,'tipp',1,'„Stateless“ heißt: Man muss sich nicht merken, welche Blätter schon benutzt wurden. Der Baum ist so riesig, dass ein zufällig gewähltes Blatt praktisch nie zweimal drankommt.'),
(25,'tipp',2,'Die Verwandten XMSS und LMS sind <em>stateful</em>: Dort muss ein Zähler mitlaufen. Wird ein altes Schlüssel-Backup mit veraltetem Zähler eingespielt, ist der Schlüssel in Gefahr.'),
(25,'tipp',3,'Kleine Schlüssel, große Signaturen: Der öffentliche Schlüssel hat 32 Byte, eine Signatur 7856 Byte (SLH-DSA-128s) oder 17088 Byte (128f). „s“ steht für small, „f“ für fast.'),
(25,'tipp',4,'Signieren ist langsam, Prüfen geht recht schnell. Ideal für Firmware, Software-Updates und Root-Zertifikate – selten signiert, oft geprüft.'),
(25,'tipp',5,'Wer dem <a href="rezept.html?id=7">SHA-256</a>-Rezept vertraut, kann auch SLH-DSA vertrauen. Für alltägliche Signaturen ist <a href="rezept.html?id=24">ML-DSA</a> meist praktischer.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(25,1,'Wikipedia: SPHINCS+ (englisch)','https://en.wikipedia.org/wiki/SPHINCS%2B'),
(25,2,'YouTube: Lecture 6. SPHINCS+ (Hash-Based Signatures) (Cryptography 101, englisch)','https://www.youtube.com/watch?v=Z93yiDyPUzE');

-- 26: Hybrider Schlüsselaustausch
INSERT INTO Rezept (id,name,kurztext,slogan,definition,skizzePfad,skizzeAlt,skizzeText,erstelltAm) VALUES (26,'Hybrider Schlüsselaustausch','X25519 und ML-KEM zusammen: sicher, solange mindestens eines der beiden Verfahren hält.','Doppelt gewürzt hält besser: klassisch und quantensicher in einem Topf.','Post-Quanten-Verfahren wie <a href="rezept.html?id=23">ML-KEM</a> sind noch jung – vielleicht wird eines Tages eine Schwäche gefunden. Klassische Verfahren wie X25519 sind bewährt, aber nicht quantensicher. Ein hybrider Schlüsselaustausch macht beides gleichzeitig und kombiniert die Ergebnisse. Ein Angreifer muss dann beide Verfahren brechen. In <a href="rezept.html?id=18">TLS 1.3</a> heißt diese Kombination <em>X25519MLKEM768</em> und ist in Browsern wie Chrome und Firefox bereits standardmäßig aktiv.','bilder/skizze-hybrid.svg','Browser schickt im ClientHello ML-KEM-Schlüssel und X25519-Wert, 1216 Byte. Server antwortet im ServerHello mit ML-KEM-Chiffrat und X25519-Wert, 1120 Byte. Beide hängen ML-KEM-Geheimnis und X25519-Geheimnis aneinander und leiten mit HKDF die Sitzungsschlüssel ab.','Es reicht, wenn eines der beiden Geheimnisse sicher ist – dann ist auch der Sitzungsschlüssel sicher.','2026-11-12');
INSERT INTO RezeptSchutzziel (rezeptId,schutzzielId) VALUES (26,2);
INSERT INTO Rezeptpunkt (rezeptId,art,position,text) VALUES
(26,'zutat',1,'X25519 (<a href="rezept.html?id=6">Diffie-Hellman</a> mit elliptischen Kurven)'),
(26,'zutat',2,'<a href="rezept.html?id=23">ML-KEM-768</a>'),
(26,'zutat',3,'Ein TLS-1.3-Handshake'),
(26,'zutat',4,'HKDF zur Schlüsselableitung'),
(26,'schritt',1,'Der Browser erzeugt zwei Schlüsselpaare: eins für ML-KEM-768 und eins für X25519.'),
(26,'schritt',2,'<strong>ClientHello:</strong> Er schickt beide öffentlichen Teile hintereinander als einen Key Share: 1184 + 32 = 1216 Byte.'),
(26,'schritt',3,'Der Server kapselt mit dem ML-KEM-Schlüssel ein Geheimnis ein und erzeugt seinen eigenen X25519-Wert.'),
(26,'schritt',4,'<strong>ServerHello:</strong> Er schickt das ML-KEM-Chiffrat und seinen X25519-Wert zurück: 1088 + 32 = 1120 Byte.'),
(26,'schritt',5,'Beide haben jetzt zwei Geheimnisse – das aus ML-KEM und das aus X25519. Sie werden aneinandergehängt.'),
(26,'schritt',6,'Daraus leitet HKDF wie gewohnt die Sitzungsschlüssel ab. Der Rest von TLS läuft unverändert weiter.'),
(26,'tipp',1,'Die Authentisierung mit <a href="rezept.html?id=16">Zertifikaten</a> und Signaturen bleibt vorerst klassisch. Gegen „Harvest now, decrypt later“ reicht der quantensichere Schlüsselaustausch.'),
(26,'tipp',2,'Das größere ClientHello passt nicht mehr in ein einzelnes Netzwerkpaket. Manche alten Firewalls und Middleboxes kamen damit nicht zurecht – ein Grund, warum die Einführung Zeit brauchte.'),
(26,'tipp',3,'Selbst nachsehen: In den Chrome-Entwicklertools steht im Sicherheitsbereich bei vielen Seiten X25519MLKEM768 als Schlüsselaustausch.'),
(26,'tipp',4,'Auch anderswo hybrid: <a href="rezept.html?id=19">OpenSSH</a> nutzt seit Version 10.0 standardmäßig mlkem768x25519-sha256, <a href="rezept.html?id=21">Signal</a> setzt auf PQXDH, Apples iMessage auf PQ3.'),
(26,'tipp',5,'Das BSI empfiehlt, Post-Quanten-Schlüsselaustausch wie ML-KEM nur in solchen hybriden Kombinationen einzusetzen.');
INSERT INTO Link (rezeptId,position,titel,url) VALUES
(26,1,'Wikipedia: Post-Quanten-Kryptographie','https://de.wikipedia.org/wiki/Post-Quanten-Kryptographie'),
(26,2,'YouTube: Post Quantum Cryptography (Computerphile, englisch)','https://www.youtube.com/watch?v=_MoRcYLN-7U');

COMMIT;
