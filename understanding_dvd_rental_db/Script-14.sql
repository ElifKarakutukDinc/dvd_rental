--Number of addresses with null phone number?

select count(*)
from address
where phone='' or phone is null;

