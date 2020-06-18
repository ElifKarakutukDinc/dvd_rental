--Distribution of actor's last name

select last_name, count(*) as cnt
from actor
group by 1
order by 2 desc;