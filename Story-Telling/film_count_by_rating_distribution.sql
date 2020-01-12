--Movie rating distribution

select rating, count(*) as cnt
from film 
group by 1
order by 2;