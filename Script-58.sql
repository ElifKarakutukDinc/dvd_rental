--Which customer is the fastest based on return_date - rental_date?

select customer_id ,date_part('minute', return_date - rental_date)
from rental
group by customer_id,date_part('minute', return_date - rental_date)
order by date_part('minute', return_date - rental_date);