--2007 February and March average payment?


select extract ('month' from payment_date), avg (amount)
from payment
group by extract ('month' from payment_date)
having extract ('month' from payment_date) in (2,3);

