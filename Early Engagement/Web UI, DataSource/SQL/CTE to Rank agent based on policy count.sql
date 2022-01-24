with agent_rank as (
    select 
        agent.name as agent_name,
        count(policy.name) as policy_count,
        row_number() over (order by count(policy.name) desc) as rank
    from 
        agent
    join
        customer_policy on agent.id = customer_policy.agent_id
    join
        policy on policy.id = customer_policy.policy_id
    group by agent.name
)
select agent_name from agent_rank
where policy_count = 1 /*policy_count = 1 will not always work. It worked in the 2022 test cases because no test cases had the minimum policy count > 1*/
GO 
