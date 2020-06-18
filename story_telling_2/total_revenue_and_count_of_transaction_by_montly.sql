--total revenue and count of transaction by montly

select date_trunc('month',(rental_date)):: date as Montly_rental_date, sum(amount) as total_montly_amount ,count(r.rental_id) as count_of_transaction
from rental as r 
inner join payment as p on (p.rental_id=r.rental_id)
group by 1;

