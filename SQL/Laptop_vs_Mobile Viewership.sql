-- Assume you're given the table on user viewership categorised by device type where the three types are laptop, tablet, and phone.

-- Write a query that calculates the total viewership for laptops and mobile devices where mobile is defined as the sum of tablet and phone viewership. Output the total viewership for laptops as laptop_reviews and the total viewership for mobile devices as mobile_views.

-- Effective 15 April 2023, the solution has been updated with a more concise and easy-to-understand approach.

-- viewership Table
-- Column Name	Type
-- user_id	integer
-- device_type	string ('laptop', 'tablet', 'phone')
-- view_time	timestamp
-- viewership Example Input

-- user_id	device_type	view_time
-- 123	tablet	01/02/2022 00:00:00
-- 125	laptop	01/07/2022 00:00:00
-- 128	laptop	02/09/2022 00:00:00
-- 129	phone	02/09/2022 00:00:00
-- 145	tablet	02/24/2022 00:00:00

-- Example Output
-- laptop_views	mobile_views
-- 2	3

-- Explanation
-- Based on the example input, there are a total of 2 laptop views and 3 mobile views.

--Link for the question: https://datalemur.com/questions/laptop-mobile-viewership


--SOLUTION

SELECT COUNT(CASE WHEN DEVICE_TYPE = 'laptop' then 1
else Null end) as laptop_views, 
sum(case when device_type='tablet' then 1
when device_type='phone' then 1 
else Null end) as mobile_views FROM viewership;