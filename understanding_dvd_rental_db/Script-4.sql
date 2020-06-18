--Number of actors length of name is bigger than 5?

select first_name, Length (first_name)
from actor
where Length (first_name) > 5;
