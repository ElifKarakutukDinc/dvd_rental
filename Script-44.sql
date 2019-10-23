--Group weekly total payments and sort by week ascending?

select extract(week from payment_date), sum(amount)
from payment
group by extract(week from payment_date)
order by extract(week from payment_date);