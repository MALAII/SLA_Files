use records;
CREATE TABLE PizzaDetails (
    Pizza_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Size VARCHAR(10),
    Crust VARCHAR(20),
    Toppings VARCHAR(100),
    Price DECIMAL(5,2),
    Vegetarian VARCHAR(3) 
);
INSERT INTO PizzaDetails (Pizza_ID, Name, Size, Crust, Toppings, Price, Vegetarian) VALUES
(1, 'Margherita', 'Medium', 'Classic', 'Cheese, Tomato', 8.99, 'Yes'),
(2, 'Pepperoni Feast', 'Large', 'Thin', 'Pepperoni, Cheese', 12.99, 'No'),
(3, 'Veggie Supreme', 'Large', 'Thick', 'Onion, Bell Pepper, Olive', 11.49, 'Yes'),
(4, 'BBQ Chicken', 'Medium', 'Cheese Burst', 'Chicken, BBQ Sauce', 13.99, 'No'),
(5, 'Hawaiian Delight', 'Medium', 'Classic', 'Ham, Pineapple', 12.49, 'No'),
(6, 'Farmhouse', 'Small', 'Thin', 'Tomato, Corn, Mushroom', 7.99, 'Yes'),
(7, 'Chicken Tikka', 'Large', 'Stuffed', 'Chicken, Tikka Sauce, Onion', 14.49, 'No'),
(8, 'Cheese Lovers', 'Medium', 'Classic', 'Mozzarella, Cheddar', 9.49, 'Yes'),
(9, 'Spicy Veggie', 'Medium', 'Thin', 'Jalapeños, Onion, Capsicum', 10.49, 'Yes'),
(10, 'Meat Lover’s', 'Large', 'Thick', 'Pepperoni, Ham, Bacon', 15.99, 'No'),
(11, 'Double Cheese', 'Small', 'Cheese Burst', 'Extra Cheese', 8.49, 'Yes'),
(12, 'Mexican Green Wave', 'Medium', 'Stuffed', 'Onion, Capsicum, Jalapeños', 10.99, 'Yes'),
(13, 'Buffalo Chicken', 'Medium', 'Classic', 'Chicken, Buffalo Sauce, Onion', 12.99, 'No'),
(14, 'Paneer Tandoori', 'Medium', 'Thin', 'Paneer, Onion, Spices', 11.99, 'Yes'),
(15, 'Sausage Supreme', 'Large', 'Thick', 'Sausage, Pepper, Cheese', 13.99, 'No'),
(16, 'Garden Fresh', 'Small', 'Classic', 'Tomato, Capsicum, Corn', 7.49, 'Yes'),
(17, 'Chicken Supreme', 'Medium', 'Stuffed', 'Chicken, Onion, Cheese', 13.49, 'No'),
(18, 'Classic Cheese', 'Small', 'Classic', 'Cheese', 6.99, 'Yes'),
(19, 'Peri Peri Veg', 'Medium', 'Cheese Burst', 'Peri Peri Sauce, Veggies', 11.49, 'Yes'),
(20, 'Bacon BBQ', 'Large', 'Thick', 'Bacon, BBQ Sauce, Cheese', 14.99, 'No'),
(21, 'Triple Veggie', 'Medium', 'Thin', 'Olive, Onion, Tomato', 10.49, 'Yes'),
(22, 'Pepperoni Classic', 'Small', 'Classic', 'Pepperoni, Cheese', 9.49, 'No'),
(23, 'Spicy Paneer', 'Medium', 'Stuffed', 'Paneer, Jalapeños, Spices', 12.49, 'Yes'),
(24, 'Seafood Special', 'Large', 'Thin', 'Shrimp, Crab, Cheese', 16.99, 'No'),
(25, 'Corn & Cheese', 'Small', 'Classic', 'Corn, Cheese', 7.99, 'Yes'),
(26, 'All Meat Combo', 'Large', 'Cheese Burst', 'Pepperoni, Bacon, Sausage', 16.49, 'No'),
(27, 'Tomato Basil', 'Medium', 'Thin', 'Tomato, Basil, Cheese', 9.99, 'Yes'),
(28, 'Chicken & Mushroom', 'Medium', 'Classic', 'Chicken, Mushroom, Cheese', 13.49, 'No'),
(29, 'Deluxe Veggie', 'Large', 'Thick', 'Capsicum, Onion, Olive, Tomato', 12.99, 'Yes'),
(30, 'Fiery Chicken', 'Medium', 'Stuffed', 'Spicy Chicken, Jalapeños, Cheese', 14.49, 'No');
select * from PizzaDetails;

-- questions:

-- How many pizzas are there for each crust type?
select crust ,count(pizza_id)  from pizzadetails group by crust;

-- What is the average price of pizzas grouped by size?
select size , avg(price) from pizzadetails group by size;

-- How many vegetarian and non-vegetarian pizzas are available?
select vegetarian , count(vegetarian ) from pizzadetails group by vegetarian;

-- Show size and vegetarian combinations with average price under $10.
select size, vegetarian ,avg(price) as pizzaprice from pizzadetails group by size,vegetarian  having pizzaprice <10 ;

-- List crusts where both vegetarian and non-vegetarian pizzas exist.
select crust ,count(vegetarian) from pizzadetails group by crust;

-- Find all sizes where the total number of pizzas is more than 8.
select size, count(pizza_id) as totalno from pizzadetails group by size having totalno > 8;

-- Show vegetarian pizzas grouped by crust having average price above $11.
select crust, avg(price) as avgprice from pizzadetails group by crust having avgprice > 11;

-- Show crusts where the maximum pizza price is over $14.
select crust , max(price) as maxprice from pizzadetails group by crust having maxprice >14;

-- Find all size-crust combinations with more than 2 pizzas.

-- Find vegetarian types where total pizzas are less than 10.
-- List crusts with average price between $10 and $13.
-- Show sizes where the average price is more than $12.
-- Show crust types that are used in more than 5 pizzas.
-- What is the total price of all pizzas grouped by size?
-- Count how many pizzas have each unique size.
-- What is the minimum price for each crust type?
-- List all crust types and the number of vegetarian pizzas for each.
-- Show total pizzas by size and vegetarian type.
-- What is the average price for each crust type?