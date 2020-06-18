--Distribution of phone number length

select length(phone) as phone_length,count(*) as cnt
from address
group by 1
order by 1;


