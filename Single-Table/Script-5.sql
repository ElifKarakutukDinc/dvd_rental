--Number of actors length of last name is bigger than 5?


select last_name, length (last_name)
from actor
where length (last_name) >5; 