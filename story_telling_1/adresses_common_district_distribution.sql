--Distribution of address districts

select district, count(*) as cnt
from address
group by district
order by 2 desc;

