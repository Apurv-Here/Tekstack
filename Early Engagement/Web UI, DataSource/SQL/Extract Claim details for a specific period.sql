select id, amount_of_claim from claims
where date_of_claim between '2008-01-10' and '2010-03-30' and amount_of_claim > 200000
order by id
GO
