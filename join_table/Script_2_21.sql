--Top 5 customer who made the most rent?

select c.customer_id, count(amount)
from customer as c
left join payment as p on (c.customer_id=p.customer_id)
group by c.customer_id
order by count(amount) desc
limit 5;