--How many customers returned the film in the same day that they rented? For example rented in the morning and returned in the evening.

select count(customer_id)
from rental
where date_trunc('day',rental_date)= date_trunc('day',return_date);