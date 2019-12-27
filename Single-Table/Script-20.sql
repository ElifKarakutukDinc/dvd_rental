--Number of movies with movie title starts with A?

select count(*)
from film
where title like 'A%';
