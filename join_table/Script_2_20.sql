Top 5 customer who made the most revenue/payment?

select c.customer_id, sum(amount)
from customer as c
left join payment as p on (c.customer_id=p.customer_id)
group by c.customer_id
order by sum(amount) desc
limit 5;