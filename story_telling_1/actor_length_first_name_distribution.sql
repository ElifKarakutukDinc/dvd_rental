--Distribution of actors first name length

select count(*), length(first_name) as first_name_length
from actor
group by 2;
