--List of common distrisct

select district, count(*)
from address
group by district
order by count(*) desc;

