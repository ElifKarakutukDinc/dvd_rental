--Movie rating length descriptive statistics

select rating, avg(length) as length_avg, min(length) as length_min, max(length) as length_max
from film 
group by 1
order by 2