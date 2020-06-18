--Who is the best customer based on number of rentals?

select customer_id, count(rental_id)
from payment
group by customer_id
order by count(rental_id) desc
limit 1;

