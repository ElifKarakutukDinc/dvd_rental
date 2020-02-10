--Count of Customers by Montly Amount Distrubition

select extract(month from p.payment_date), p.amount, count(*)
from customer as c
left join payment as p on (c.customer_id=p.customer_id)
group by 1, 2
order by 1, 2;

