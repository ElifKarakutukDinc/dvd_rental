--Which staff made more sales in 2007 April based on number of sales?

select staff_id, count(*)
from payment
where date_part('year', payment_date)=2007 and date_part('month', payment_date)=4
group by staff_id
order by count(*) desc
limit 1;
