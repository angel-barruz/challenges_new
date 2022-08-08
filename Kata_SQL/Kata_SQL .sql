# Kata 1
SELECT 
DATE(events.created_at) AS "day",
events.description, COUNT(events.id) AS "count"
FROM events
WHERE events.name = 'trained'
GROUP BY  "day", events.description
ORDER BY "day";

# Kata 2
SELECT
capital 
FROM countries WHERE continent in('Africa', 'Afrika')
AND substring(country,1,1)='E'
ORDER BY capital 
LIMIT 3

# Kata 3
SELECT 
  DATE (s.transaction_date) as "day",
  d.name AS department,
  COUNT(s.id) AS sale_count
  FROM department d
    JOIN sale s on d.id = s.department_id
 GROUP BY "day", department
 ORDER BY "day" ASC