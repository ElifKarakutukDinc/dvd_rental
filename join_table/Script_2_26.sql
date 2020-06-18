--Customer details with the return information is null?

select c.customer_id, return_date
from customer as c
left join rental as r on (c.customer_id=r.customer_id)
where return_date is null;

