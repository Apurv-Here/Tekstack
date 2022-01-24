select 
    customer.id,
    customer.first_name,
    customer_policy.policy_start_date,
    customer_policy.policy_renewal_date,
    customer_policy.premium_amount,
    customer_policy.policy_value
from 
    customer
join 
    customer_policy on customer.id = customer_policy.customer_id
join
    policy on policy.id = customer_policy.policy_id
where 
    policy.name = "Vehicle Insurance" or policy.name = "Medical Insurance"
order by customer.id
GO


