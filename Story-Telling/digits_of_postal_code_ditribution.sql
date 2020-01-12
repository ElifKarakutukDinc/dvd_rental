--Distribution of postal code length

select length(postal_code) as postal_code_length,count(*) as cnt
from address
group by 1
order by 1;