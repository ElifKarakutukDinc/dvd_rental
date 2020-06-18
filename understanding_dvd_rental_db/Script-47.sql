--Who is the best customer in 2007 February based on total payment?

select customer_id, sum(amount)
from payment
where date_part('year',payment_date)='2007' and date_part('month',payment_date)='2'
group by customer_id 
order by sum(amount)desc
limit 1;