--Group postal codes based on number of digits in the postal code

select length(postal_code),count(*)
from address
group by length(postal_code)
order by length(postal_code);