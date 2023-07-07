create schema cars;
select * from cars.car_dekho; 
use cars; 
--- Read Data---
select * from car_dekho;
--- Total cars: To get a count of total records--
select count(*) from car_dekho;
--- The manager asked the employee how many  cars will be available in 2023, also tell the name of cars?;---
select name from car_dekho where year=2023;  


select count(*) from car_dekho where year=2023;
--- The manager asked the employee that how many cars are available in 2020,2021,2022---
select count(*) from car_dekho where year=2020;#74
select count(*) from car_dekho where year=2021;#7
select count(*) from car_dekho where year=2022;#7
-- Group By--
select count(*) from car_dekho where year in (2020,2021,2022) group by year;#7,7,74
-- Client asked me to print all the total of all cars by year.I don't see all details--
select year, count(*) from car_dekho group by year; 
-- client asked to car dealer taht how many dieseland petrol cars are there in 2020--
select * from car_dekho;
select count(*) from car_dekho where year=2020 and fuel="Diesel";#20
select count(*) from car_dekho where year=2020 and fuel="Petrol";#51
select fuel, count(*) from car_dekho where fuel in ("Diesel","Petrol") and year=2020 group by fuel;
-- The manager told the employee  to give a print all the fuel cars(petrol,diesel and cng) come by all year--
select fuel,year, count(*) from car_dekho where fuel in("Diesel","Petrol","cng") group by  fuel,year;
--- The manager said that there are 100 cars in a year, which year has more than 100 cars---
select * from car_dekho;
select year, count(*) from car_dekho group by year having count(*)>100;
--- The manger said to the employee all cars count details between 2015 to 2023.---
select count(*) from car_dekho where year between 2015 and 2023;
--- The manager said to give all car details between 2015 to 2023---
select * from car_dekho where year between 2015 and 2023;
--- END ---

  

 