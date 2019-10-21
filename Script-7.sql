--Number of actors length of name <= 3 and length of last name >= 5?

select  count(*)
from actor 
where length (first_name) <= 3 and length (last_name) >=5;