--Movie distribution by replacement cost

select replacement_cost, count(*) as cnt
from film 
group by 1
order by 2 desc;