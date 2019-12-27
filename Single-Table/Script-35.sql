--Film ratings with average rental_rate between 2 and 4?

select rating, avg(rental_rate)
from film
group by rating
having avg(rental_rate) between 2 and 4;
