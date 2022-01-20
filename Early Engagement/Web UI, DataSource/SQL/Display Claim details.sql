select claims.id, claims.date_of_claim, claims.amount_of_claim from claims, status
where status.description = 'Inprogress' and claims.status_id = status.id 
order by claims.id asc
GO
