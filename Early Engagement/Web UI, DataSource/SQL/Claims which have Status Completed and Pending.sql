select 
    count(claims.id) as number_of_claims
from 
    claims
join 
    status on claims.status_id = status.id
where 
    status.description = "Completed"

UNION ALL

select 
    count(claims.id) as number_of_claims
from 
    claims
join 
    status on claims.status_id = status.id
where 
    status.description = "Pending"
GO
