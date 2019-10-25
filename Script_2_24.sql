--Best employee with the most revenue/rent price?

select staff_id, sum(amount)
from payment 
group by staff_id
order by sum(amount) desc
limit 1;