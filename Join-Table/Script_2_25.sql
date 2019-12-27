--Top 3 best customer based on revenue who are not active?

select c.customer_id, c.activebool
from customer as c 
left join payment as p on (c.customer_id=p.customer_id)
where c.activebool is false 
limit 3;
