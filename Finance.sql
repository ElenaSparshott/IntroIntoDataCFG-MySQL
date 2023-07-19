CREATE DATABASE Finance;

Use Finance;

CREATE TABLE Customers(
	FullName varchar(50),
    Address varchar(100),
    Balance int,
    Credit int,
    Debit int
);

INSERT INTO Customers
VALUE
("Polly Moore", "123 Fake street Bristol BS1 5BB", 10, NULL, 15),
("Jonathan Linfield", "1 Made up Street, London, LN2 6hh", 15, NULL, 11),
("Lewis Hendry", "1 Ficton Avenue, Glascow, GL1 6HH", 20, 20, 20 );

SELECT * FROM Customers;

-- update Polly balance to 20
UPDATE Customers
SET Balance = 20
WHERE FullName = "Polly Moore";

-- Disablng safe mode
SET SQL_SAFE_UPDATES = 0;

-- Update Lewis's Address
UPDATE Customers
SET Address = "22 Not A Real Lane, Glascow, GL6 6NN"
WHERE FullName = "Lewis Hendry";

-- Delete record where balance is 20
DELETE FROM Customers
WHERE Balance = 20;