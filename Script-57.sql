--How many customers returned the film 3 days later then the rented day?

select count(customer_id)
from rental
where  DATE_PART('day', return_date)- DATE_PART('day', rental_date)=3;