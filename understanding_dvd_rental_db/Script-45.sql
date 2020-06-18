--Who is the best customer based on total payment?

select customer_id, sum(amount)
from payment 
group by customer_id
order by sum(amount) desc
limit 1;