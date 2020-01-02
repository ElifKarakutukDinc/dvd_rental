--Number of actors length of name

select count(*), Length (first_name)
from actor
group by 2;
