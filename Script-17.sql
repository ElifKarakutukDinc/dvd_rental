--Group postal codes based on number of digits in the postal code? For example: 1234 4 digit, 123 3 digit.

select length(postal_code),count(*)
from address
group by length(postal_code)
order by length(postal_code);