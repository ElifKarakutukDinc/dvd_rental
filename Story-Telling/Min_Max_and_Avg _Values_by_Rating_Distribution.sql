--Min, Max and Avg Values by Rating 

select rating, avg(length), min(length), max(length)
from film 
group by rating
order by avg(length) asc;