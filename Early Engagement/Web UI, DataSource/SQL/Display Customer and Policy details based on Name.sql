select 
    policy.name
from 
    policy
join 
    customer_policy on policy.id = customer_policy.policy_id
join
    customer on customer.id = customer_policy.customer_id
where 
    customer.first_name = "Meena" and customer.last_name = "Chowdhury"
order by policy.name
GO
