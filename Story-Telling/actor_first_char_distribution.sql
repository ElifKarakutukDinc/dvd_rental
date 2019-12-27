
select count(*), substring(first_name,1,1) as first_char
from actor
group by 2
order by 1 desc;