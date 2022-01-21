select count(policy.id) as policy_count from insurance_company, policy 
where insurance_company.name = "HDFC Standard Life Insurance" 
and policy.insurance_company_id = insurance_company.id
GO 
