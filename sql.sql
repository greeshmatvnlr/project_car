create schema cars
-- Read the data
use cars
select * from car
-- Total cars
select count(*) as Total_car from car 

-- cars available in 2023
select count(*) As CarAvailableIn2023 from car
where year = 2023

-- cars available in 2020-2022
select year, count(*) as cars_available_in_2020to2022 from car
where year in (2020,2021,2022) group by year

-- total of all cars by year
select year, count(*) as cars_available_in_2020to2023 from car
group by year

-- How many diesel cars available in 2020
select count(*) as Diesel_cars_available_in_2020 from car
where year = 2020 and fuel = "Diesel";

-- How many petrol cars available in 2020
select count(*) as Diesel_cars_available_in_2020 from car
where year = 2020 and fuel = "Petrol";

-- Print all the fuel cars come by year
select year, count(*) as car_count from car where fuel = "petrol"
group by year
select year, count(*) as car_count from car where fuel = "diesel"
group by year
select year, count(*) as car_count from car where fuel = "CNG"
group by year

select year, fuel, count(*) as car_count from car 
 group by fuel, group by year
 
 -- which year had more than 100 cars?
 select year, count(*) as count_100 from car 
 group by year having count(*)>100
 
 -- car count details between 2015-2023
 select year, count(*) as count_car from car where year between 2015 and 2023
 group by year
 
 select count(*) as count_cars from car where year between 2015 and 2023
 
 -- car details between 2015-2023
 select * from car where year between 2015 and 2023
 