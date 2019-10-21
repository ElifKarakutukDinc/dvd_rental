--Number of addresses with null phone number?

select *
from address
where phone='' or phone is null;

