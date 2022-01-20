select customer.id , customer.first_name, customer_policy.policy_start_date, customer_policy.policy_renewal_date, customer_policy.premium_amount, customer_policy.policy_value
from customer, customer_policy 
where customer_policy.customer_id = customer.id
order by customer.first_name
GO
