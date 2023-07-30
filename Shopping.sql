CREATE TABLE Orders (
  quantity INT NOT NULL,
  item_color VARCHAR(20)
  );
  
INSERT INTO Orders (quantity, item_color)
values
(1, 'red'),
(3, 'blue'),
(33, 'red'),
(21, 'green');

Select * from Orders;


-- sum
Select sum(quantity) as SumOfQuantity
FROM
Orders;


-- count
Select COUNT(*) FROM Orders;


-- count column name
Select count(quantity) from Orders;


-- count colour is red
Select count(*) from Orders where item_color = 'red';


-- Average
Select AVG(quantity) as AvgQuantity FROM Orders;


-- NULL values are ignored in count and average.


-- Minimum 
Select MIN(quantity) as MinQuantity FROM Orders;

-- Maximum
Select MAX(quantity) as MaxQuanitity From Orders;