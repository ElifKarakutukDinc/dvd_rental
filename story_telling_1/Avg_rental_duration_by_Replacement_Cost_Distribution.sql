--Avg Rental duration by Replacement Cost

select replacement_cost, avg(rental_duration)
from film 
group by replacement_cost
order by avg(rental_duration) desc;