/*markdown
# Erzeugen einer neuen Datenbank
*/

Create Database Einkaufshistorie 

/*markdown
# Anlegen der Tabelle Produkte, Kaufhistorie
*/

Create Table Produkte
(
    Name nvarchar(max),
    Preis DECIMAL
);

Create Table Kaufhistorie
(
    Datum date,
    Anzahl int
);

/*markdown
# Prüfen des bisherigen Ergebnisses
*/

select * from Produkte;

/*markdown
# Anlegen mehrerer Produkte
*/

INSERT INTO Produkte (Name, Preis)
VALUES ('Milch', 1.99)

/*markdown
# Korrektur der Produkte Tabelle
*/

ALTER TABLE Produkte
ALTER COLUMN Preis Decimal (10,2)

/*markdown
# Die ursprüngliche Präzision haben wir verloren. Diese stellen wir nun wieder her mit dem Update Befehl und ändern dadurh den bestehenden Preis der Milch zurück auf den präzisen Wert vom Preis = 1,99€
*/

UPDATE Produkte
SET Preis = 1.99
WHERE Name = 'Milch';
