

------------------------------------------
--Q1. Total Stores
------------------------------------------


CREATE TABLE starbucks_stores (
    brand VARCHAR(50),
    store_number VARCHAR(50),
    store_name VARCHAR(200),
    ownership_type VARCHAR(50),
    street_address VARCHAR(300),
    city VARCHAR(100),
    state_province VARCHAR(100),
    country VARCHAR(100),
    postcode VARCHAR(30),
    timezone VARCHAR(100),
    longitude DOUBLE PRECISION,
    latitude DOUBLE PRECISION
);


SELECT * FROM starbucks_stores;

---------------------------------------------
--Q1. Total Stores
---------------------------------------------
select count(*) as total_stores from starbucks_stores;


---------------------------------------------
--Q2. Total Countries
---------------------------------------------
SELECT COUNT(DISTINCT "Country") AS total_countries
FROM starbucks_stores;


---------------------------------------------
--Q3. Total 10 Countries
---------------------------------------------
select "Country" , count(*) as stores from starbucks_stores group by "Country" order by stores desc limit 10;


---------------------------------------------
--Q4. Total 10 Cities
---------------------------------------------
select "City" , count(*) as stores from starbucks_stores group by "City" order by stores desc limit 10;


---------------------------------------------
--Q5. Ownership Distribution
---------------------------------------------
select "Ownership Type" as Ownership_Distribution from starbucks_stores group by "Ownership Type";


---------------------------------------------
--Q6. Countries Having More Than 100 Stores
---------------------------------------------
select "Country",count("Store Number") as count_of_stores from starbucks_stores group by "Country" having count(*) > 100 order by count_of_stores desc;


---------------------------------------------
--Q7. Rank Countries
---------------------------------------------
SELECT "Country",COUNT(*) AS stores,RANK() OVER( ORDER BY COUNT(*) DESC) AS rank_no FROM starbucks_stores GROUP BY "Country" ;


---------------------------------------------
--Q8. Dense Rank 
---------------------------------------------
SELECT "Country",COUNT(*) AS stores, DENSE_RANK() OVER( ORDER BY COUNT(*) DESC) AS rank_no FROM starbucks_stores GROUP BY "Country";


---------------------------------------------
--Q9. Top City Within Each Country
---------------------------------------------
with city_rank as (
select "Country","City", count(*) as stores, row_number() over(partition by "Country" order by count(*) desc) as rn from starbucks_stores group by "Country","City") select * from city_rank where rn = 1;


---------------------------------------------
--Q10. Percentage Contribution
---------------------------------------------
select "Country" , count(*) as stores, round(count(*)*100/(select count(*) from starbucks_stores),2) as precentage from starbucks_stores group by "Country" order by stores desc;
