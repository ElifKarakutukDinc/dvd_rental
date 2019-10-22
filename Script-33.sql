--Group movies according to their ratings and count films?

select rating, count(*)
from film
group by rating;