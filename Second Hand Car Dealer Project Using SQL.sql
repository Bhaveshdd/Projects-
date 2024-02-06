
create schema Cars;

SELECT * FROM cars.car_dekho;

use cars;

-- READ DATA--
Select * from car_dekho;

-- Total cars: To get a count of total records --
select count(*) from car_dekho;

-- The manager ask to the employee how many cars will be availavle in 2023 ? -- 
select count(*) from car_dekho where year=2023;

-- The manager ask to the employee how many cars will be availavle in 2020, 2021, 2022 ?--
select count(*)from car_dekho where year = 2020; #74
select count(*)from car_dekho where year = 2021; #7
select count(*)from car_dekho where year = 2022; #7
-- Group by -- 
select year,count(*)from car_dekho where year in (2020,2021,2022) group by year;

-- Client asked me to print the total of all the cars by year. i dont want to see all the details --
select year,count(*) from car_dekho group by year;

-- Client asked to the car dealer agent how many diesel cars will there in 2020 ? -- 
select count(*) from car_dekho where year = 2020 and fuel = "Diesel"; #20

-- Client asked to the car dealer agent how many petrol cars will there in 2020 ?--
select count(*) from car_dekho where year = 2020 and fuel = "Petrol"; #51

-- The manager told the employee to give a print of all fuel cars (petrol,Diesel,CNG) come by all year -- 
select year, count(*) from car_dekho where fuel = "petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

-- manager said there were more than 100 cars in a given year, which year had more than 100 cars ?-- 
select year, count(*) from car_dekho group by year having count(*) >100;

--  which year had less than 50 Cars ? -- 
select year, count(*) from car_dekho group by year having count(*) <50;

-- The Manager said to the employee all cars count between 2015 and 2023 we need a complete list --  
select count(*) from car_dekho where year between 2015 and 2023;

-- The Manager said to the employee all cars details between 2015 and 2023 we need a complete list --
select * from car_dekho where year between 2015 and 2023;

--- END ---