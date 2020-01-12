--Distribution of actor's first name

select first_name, count(*) as cnt
from actor
group by 1
order by 2 desc;