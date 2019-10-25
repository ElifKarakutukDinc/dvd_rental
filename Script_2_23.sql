--Latest address update date of the top 5 customers with most revenue?

select c.customer_id, ad.last_update, count(amount)
from customer as c 
left join address as ad on (c.address_id=ad.address_id)
left join payment as p on (c.customer_id=p.customer_id)
group by c.customer_id, ad.last_update
order by count(amount) desc
limit 5;