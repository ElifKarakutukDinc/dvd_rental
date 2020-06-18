--Distribution of actors last name length

select count(*), length(last_name) as last_name_length
from actor
group by 2;