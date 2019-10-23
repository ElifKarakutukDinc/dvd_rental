--Which hour is the best based on total payments?

select extract('hour' from payment_date) , sum(amount)
from payment
group by extract('hour' from payment_date)
order by sum(amount) desc
limit 1;