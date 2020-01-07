--Film's number by rental rate and replacement cost

select rental_rate, replacement_cost, count(*)
from film 
group by rental_rate, replacement_cost
order by rental_rate;