--Number of movies with movie title starts with D and ends with a?

select count(*)
from film
where title like 'D%' and title like '%a';