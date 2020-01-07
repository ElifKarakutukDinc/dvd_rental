--Film's number by rating

select rating, count(*)
from film 
group by rating
order by count(*) asc;