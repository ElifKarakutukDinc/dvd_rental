--Who is the best customer in 2007 April based on number of rentals?


select customer_id, count(amount)
from payment
where date_part('year',payment_date)='2007' and date_part('month',payment_date)='4'
group by customer_id 
order by sum(amount)desc
limit 1;