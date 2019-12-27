--What is the most common name?

select first_name, count(*)
from actor
group by first_name
order by count desc
limit 5;
