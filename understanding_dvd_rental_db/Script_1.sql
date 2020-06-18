--Number of actors with name starts with A?

select count(*)
from actor
where first_name like 'A%';