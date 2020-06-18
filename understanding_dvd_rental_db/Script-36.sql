--Film ratings with minimum replacement_cost <20 ?

select rating, min(replacement_cost)
from film
group by rating
having min(replacement_cost) < 20;