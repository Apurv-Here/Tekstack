CREATE VIEW [Customer_Policies] AS
select 
    customer.id, customer.first_name, customer.phone_number, 
    count(customer_policy.policy_id) as policy_count, 
    sum(claims.amount_of_claim) as amount_claimed
from
    customer
join 
    customer_policy on customer.id = customer_policy.customer_id
join 
    claims on claims.customer_policy_id = customer_policy.id
group by customer.first_name, customer.id, customer.phone_number
GO
