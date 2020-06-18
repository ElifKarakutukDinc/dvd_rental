--Average 2007 February payments?

select avg(amount)
from payment
where date_part('year', payment_date)=2007 and date_part('month', payment_date)= 2 ;