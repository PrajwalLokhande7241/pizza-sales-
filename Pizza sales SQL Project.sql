CREATE DATABASE PIZZAHUT;
USE PIZZAHUT;

SELECT * FROM pizza_sales;

#1. Total Revenue: The sum of the total price of all pizza orders

SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;

#2. Average Order Value: The average amount soent per order.calculated by dividing the total revenue by the total number of orders

SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value FROM pizza_sales;

#3. Total Pizzas Sold: Sum of  all the quantities of all pizza sold. 

SELECT SUM(quantity) AS Total_pizza_sold FROM pizza_sales;

#4. Total Orders: The total number of order placed.

SELECT COUNT(DISTINCT order_id) as total_orders from pizza_sales; 

#5 average pizzas per order: The average number of pizzas sold per order,calculated by dividing the total number of pizzas sold by the total number of pizzas sold by the total number of orders

SELECT CAST(CAST(SUM(QUANTITY) AS DECIMAL(10,2)) /
CAST(COUNT(DISTINCT ORDER_ID) AS DECIMAL(10,2)) AS DECIMAL (10,2)) FROM PIZZA_SALES;


 



