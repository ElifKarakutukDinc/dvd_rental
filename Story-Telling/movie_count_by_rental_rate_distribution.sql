--Movie distribution by rental rate

select rental_rate, count(*)as cnt
from film 
group by 1;
