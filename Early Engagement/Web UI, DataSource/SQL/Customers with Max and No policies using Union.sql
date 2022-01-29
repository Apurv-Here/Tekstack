/* I couldn't find a solution with union*/

WITH cte AS (
  SELECT c.first_name, 
         COUNT(p.policy_id) number_of_policies,
         MAX(COUNT(p.policy_id)) OVER () max_policies
  FROM customer c LEFT JOIN customer_policy p
  ON p.customer_id = c.id
  GROUP BY c.id, c.first_name
)
SELECT first_name
FROM cte
WHERE number_of_policies IN (0, max_policies)
ORDER BY first_name;
GO
