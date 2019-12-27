--Customer list who changed their addresses after last successful payment?

with last_payment_date as (
select c.customer_id, max(payment_date) as max_payment_date
from customer as c 
left join address as ad on (c.address_id=ad.address_id)
left join payment as p on (c.customer_id=p.customer_id)
group by c.customer_id)

select lpd.*, ad.last_update
from last_payment_date as lpd
left join customer as c on (lpd.customer_id = c.customer_id)
left join address as ad on (c.address_id=ad.address_id)
left join payment as p on (c.customer_id=p.customer_id)
where max_payment_date < ad.last_update