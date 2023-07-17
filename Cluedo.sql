CREATE DATABASE Cluedo;

USE Cluedo;

CREATE TABLE Suspects (
	FullName varchar(50) NOT NULL,
    Salutation varchar(10),
    Gender varchar(1),
    Age int,
    TokenColour varchar(10)
);

INSERT INTO Suspects
VALUES
("Scarlett", "Miss" , "F", 42, "Red"),
("Green", "Reverened", "M", 50, "Green"),
("Mustard", "Colonel", "M", "65", "Yellow"),
("Plum", "Professor", "M", 37, "Purple"),
("Orchid", "Doctor", "F", 32, "Pink"),
("Peacock", "Mrs", "F", 35, "Blue");

SELECT * FROM Suspects;

SELECT FullName 
From Suspects 
WHERE Gender = "F";

SELECT *
FROM Suspects 
Where Age > 40;
