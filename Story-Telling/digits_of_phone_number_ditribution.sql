--Group phone numbers based on number of digits in the phone number

select length(phone),count(*)
from address
group by length(phone)
order by length(phone);


