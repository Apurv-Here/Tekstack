select id, premium_amount, policy_value from customer_policy 
where policy_value > 20000 and policy_renewal_date > '2013-12-31'
order by id asc
GO 
