alter table customer_policy add constraint ck_renewal_date check (policy_renewal_date > policy_start_date)
GO
