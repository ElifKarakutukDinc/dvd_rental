--Customer list who changed their addresses after last successful payment?

select c.customer_id
from customer as c 
left join address as ad on (c.address_id=ad.address_id)
left join payment as p on (c.customer_id=p.customer_id)
where payment_date < ad.last_update;