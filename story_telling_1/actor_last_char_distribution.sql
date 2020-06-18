--Distribution of actor's last name first char

select count(*), substring(last_name,1,1) as last_char
from actor
group by 2
order by 2;