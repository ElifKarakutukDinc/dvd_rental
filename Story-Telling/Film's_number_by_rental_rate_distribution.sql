--Film's number by rental rate

select rental_rate, count(*)
from film 
group by rental_rate;
