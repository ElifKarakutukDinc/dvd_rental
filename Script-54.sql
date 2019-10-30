--Which staff made more sales in 2007 February based on total payment?

select staff_id, sum(amount)
from payment
where date_part('year', payment_date)=2007 and date_part('month', payment_date)=2
group by staff_id
order by sum(amount) desc
limit 1;