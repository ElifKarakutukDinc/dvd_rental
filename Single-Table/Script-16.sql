--Number of addresses with null district names?

select count(*)
from address
where district='';