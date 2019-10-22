--Films which are only in one inventory?

select film_id, COUNT(inventory_id)
from inventory
group by film_id
having  COUNT(inventory_id)=1;


