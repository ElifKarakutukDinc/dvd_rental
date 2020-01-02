--Number is as first char of actor's names:
select count(*), substring(first_name,1,1) as first_char
from actor
group by 2
order by 2 asc;