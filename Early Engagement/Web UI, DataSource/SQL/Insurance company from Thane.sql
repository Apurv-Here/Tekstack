select insurance_company.id, insurance_company.name from insurance_company, address
where address.city = "Thane" and (address.id = insurance_company.address_id)
order by insurance_company.name asc
GO
