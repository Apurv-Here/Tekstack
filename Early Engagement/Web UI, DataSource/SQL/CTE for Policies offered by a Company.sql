with offered_policy as (
    select
        insurance_company.name as insurance_company_name,
        count(policy.name) as policy_number
    from
        insurance_company, policy
    where
        insurance_company.id = policy.insurance_company_id
    group by
        insurance_company.name
)
select insurance_company_name from offered_policy
where policy_number > 1
GO
