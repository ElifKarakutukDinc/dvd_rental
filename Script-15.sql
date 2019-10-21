--Number of addresses with null postal code?

select count(*)
from address
where postal_code='';