--Max 2007 March payment?

select max(amount)
from payment 
where date_part('year', payment_date)=2007 and  date_part('month', payment_date)=3 ;