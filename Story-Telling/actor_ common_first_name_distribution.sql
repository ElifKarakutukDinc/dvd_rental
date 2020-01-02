--List of most common first name

select first_name, count(*)
from actor
group by first_name
order by count desc;