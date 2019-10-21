--Group phone numbers based on number of digits in the phone number? For example: 14033335568 11 digit.

select length(phone),count(*)
from address
group by length(phone)
order by length(phone);