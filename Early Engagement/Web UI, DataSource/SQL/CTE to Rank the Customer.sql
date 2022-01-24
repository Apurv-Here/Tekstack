with rank_customer as (
    select
        customer.first_name as customer_name,
        sum(claims.amount_of_claim) as claim_amount,
        row_number() over (order by sum(claims.amount_of_claim) desc) as rank
    from
        customer
    join
        customer_policy on customer.id = customer_policy.customer_id
    join
        claims on customer_policy.id = claims.customer_policy_id
    group by
        customer.first_name
)
select * from rank_customer
GO
