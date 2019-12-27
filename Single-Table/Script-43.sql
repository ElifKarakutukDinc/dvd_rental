--Which week is the most total payment?

select extract(week from payment_date), sum(amount)
from payment
group by extract(week from payment_date)
order by sum(amount) desc
limit 1;