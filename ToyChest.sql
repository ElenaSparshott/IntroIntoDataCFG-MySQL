CREATE TABLE ToyChest (
  toy_id INT PRIMARY KEY,
  toy_name VARCHAR(50),
  category VARCHAR(50),
  price INT
);

INSERT INTO ToyChest (toy_id, toy_name, category, price)
VALUES
  (001, 'Teddy Bear', 'Stuffed', 20),
  (002, 'Lego Set', 'Building', 30),
  (003, 'Barbie Doll', 'Doll', 15),
  (004, 'Remote Control Car', 'Action', 25),
  (005, 'Puzzle', 'Game', 10),
  (006, 'Action Figure', 'Doll', 18),
  (007, 'Board Game', 'Game', -20),
  (008, 'Play-Doh', 'Creative', 12),
  (009, 'Jump Rope', 'Action', 8),
  (010, 'Rubiks Cube', 'Puzzle', -15);
  
-- select all   
select * FROM ToyChest;


-- count toys
select count(toy_id) from ToyChest;


-- total price of toys
select sum(price) AS total_toy_price from ToyChest;


-- calculate average price of toys
select AVG(price) AS Avg_price From ToyChest;


-- retrieve number of action toys
SELECT count(*) AS num_action_toys FROM ToyChest WHERE category = 'Action';


-- retrieve cheapest and most ecxpensive toy
SELECT MIN(price), MAX(price) FROM ToyChest;


-- USING GROUP BY

-- each catagory of toys

SELECT category, COUNT(*) AS toy_caregory
FROM ToyChest
GROUP BY category
ORDER BY category;


-- cheapest and expensive toy by category
SELECT category, MIN(price) AS min_price, MAX(price) AS max_price
FROM ToyChest
GROUP BY category
ORDER BY category;