--Is there any customer who returned the film in more than 7 days?

select customer_id, rental_date,return_date
from rental
where date_part('day', return_date - rental_date)>7;