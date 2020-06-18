--Number of actors length of name and last name total is bigger than 10?

select count (*)
from actor
where length (first_name) + length (last_name) > 10; 