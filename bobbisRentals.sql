CREATE DATABASE Bobbisrentals;

Use Bobbisrentals;

-- Import bobbis_customers

SELECT * FROM bobbis_customers;

CREATE TABLE normalised_bobbis_customer_rentals (
	customer_id int,
    car_license varchar(50),
    invoice_id varchar(50)
);

-- Copy revelant records
INSERT INTO normalised_bobbis_customer_rentals
SELECT customer_id, cars_rented, invoice_id FROM bobbis_customers;

SELECT * FROM normalised_bobbis_customer_rentals;

-- Enteries 779, 780 and 781 are in the incorrect format
-- re-entrer them
-- We are going to delete them from normalised_bobbis_customer_rentals
DELETE FROM normalised_bobbis_customer_rentals
WHERE customer_id = 779 OR customer_id = 780 OR customer_id = 781;

-- Breaking it apart - separating car and invoice
INSERT INTO normalised_bobbis_customer_rentals
VALUES
(779, "5H5MD7", "2903"),
(779, "6CH7LY", "3490"),
(779, "775MBW", "1021"),
(780, "5H5MD7", "7890"),
(780, "8KL5J4", "4494"),
(781, "775MBW", "6656"),
(781, "6CH7LY", "4587");


-- make invoice_id int
ALTER TABLE normalised_bobbis_customer_rentals
CHANGE invoice_id invoice_id int;

-- remove redundant columns
ALTER TABLE bobbis_customers
DROP COLUMN cars_rented,
DROP COLUMN invoice_id;


SELECT * FROM bobbis_customers;
SELECT * FROM normalised_bobbis_customer_rentals;