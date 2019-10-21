--What is the most common last name?

select last_name, count(*)
from actor
group by last_name
order by count desc
limit 1;
