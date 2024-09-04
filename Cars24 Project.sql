CREATE DATABASE CARS24;
USE CARS24;

## 1. All details of cars on cars24
SELECT * FROM cars24;

## 2. Total count of cars in the dataset
select count(*) AS total_cars
FROM cars24;

## 3. Average price of cars
select AVG(selling_price) AS Average_price
FROM cars24;

## 4. Cars with the Maximum/Minimum Mileage
select name , MAX(mileage) AS max_mileage
from cars24
group by name;

## 5. Distribution of cars by seller
select seller_type,COUNT(*) AS cars_sold
FROM cars24
group by seller_type
order by seller_type asc;

## 6.average mileage by transmission
SELECT fuel, AVG(Mileage) AS AvgMileage
FROM cars24
GROUP BY fuel
ORDER BY AvgMileage;

## 7.no of cars sold in years
SELECT year, COUNT(*) AS NumOfCars
FROM cars24
GROUP BY year
ORDER BY year;

## 8.top ten expensive caars
select MAX(selling_price) AS maxprice, name
from cars24
group by name 
order by maxprice desc
limit 10;

## 9. market percentage of cars by fuel type and seats
SELECT fuel, seats, 
COUNT(*) AS car_count,
ROUND((COUNT(*) * 100.0) / SUM(COUNT(*)) OVER(PARTITION BY fuel), 2) AS percentage
FROM cars24
GROUP BY fuel, seats;

## 10. average kilometers driven for cars with different owners types
SELECT owner, AVG(km_driven) AS avg_km_driven
FROM cars24
GROUP BY owner;





















