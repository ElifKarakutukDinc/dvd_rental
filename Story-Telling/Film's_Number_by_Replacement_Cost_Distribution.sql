--Film's Number by Replacement Cost

select replacement_cost, count(*)
from film 
group by replacement_cost
order by count(*) desc;