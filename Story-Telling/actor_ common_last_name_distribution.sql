--List of most common last name

select last_name, count(*)
from actor
group by last_name
order by count desc;