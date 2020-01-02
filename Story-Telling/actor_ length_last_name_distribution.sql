--Number of actors length of last name

select count(*), Length (last_name)
from actor
group by 2;