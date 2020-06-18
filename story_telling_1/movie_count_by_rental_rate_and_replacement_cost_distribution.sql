--Movie's distribution by rental rate and replacement cost

select rental_rate, replacement_cost, count(*) as cnt
from film 
group by 1, 2
order by 1;