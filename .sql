--- EXERCISE 1
SELECT
SUM(CASE
WHEN DEVICE_TYPE = 'tablet' OR DEVICE_TYPE = 'phone' THEN 1 
ELSE 0 
END) AS MOBILE_VIEWS,
SUM(CASE
WHEN DEVICE_TYPE = 'laptop' THEN 1 
ELSE 0 
END) AS LAPTOP_VIEWS
FROM viewership

--- EXERCISE 2
SELECT *,
IF(x + y > z AND x + z > y AND y + z > x, 'Yes', 'No') AS triangle
FROM Triangle;

--- EXERCISE 3:
SELECT 
  ROUND(100*AVG(CASE WHEN call_category ='n/a' OR call_category IS NULL THEN 1 ELSE 0 END),1) AS uncategorised_call_pct
FROM callers;

--- EXERCISE 4:
SELECT name FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL

--- EXERCISE 5:
SELECT survived,
    SUM(CASE WHEN pclass = 1 THEN 1 ELSE 0 END) AS first_class,
    SUM(CASE WHEN pclass = 2 THEN 1 ELSE 0 END) AS second_class,
    SUM(CASE WHEN pclass = 3 THEN 1 ELSE 0 END) AS third_class
FROM titanic
GROUP BY survived
