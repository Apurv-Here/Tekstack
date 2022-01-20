select top 1 cust.first_name 
from customer cust
    inner join customer_policy pol on cust.id=pol.customer_id
    inner join claims cl on pol.id=cl.customer_policy_id
order by cl.amount_of_claim desc
GO
