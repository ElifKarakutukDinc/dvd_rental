--What is the average rental days? 

select avg(date_part('day', return_date - rental_date))
from rental;