select 
    policy.name
from 
    policy
join 
    customer_policy on policy.id = customer_policy.policy_id
join
    customer on customer.id = customer_policy.customer_id
join
    agent on agent.id = customer_policy.agent_id
where 
    customer.first_name = "Shruthi" and customer.last_name = "Kulkarni"
    and agent.name = "Dalvir Nijjar"
order by policy.name
GO
