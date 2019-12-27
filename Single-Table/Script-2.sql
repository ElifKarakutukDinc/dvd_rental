--Number of actors with last name starts with A?

select count(*)
from actor
where last_name like 'A%';