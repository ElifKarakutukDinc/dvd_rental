--film count of rating by categories

with film_category_1 as (

select c.category_id, film.film_id, film.rating 
from film 
inner join film_category as fc on (film.film_id=fc.film_id)
inner join category as c on (c.category_id=fc.category_id)
group by 1,2),

film_rating_table as (select rating, film_id, count(*)
from film
group by 1,2),

film_category_total as (select category_id, count(*) as film
from film_category_1
group by 1),

movie_rating_total as (select category_id, table_2.rating, count(table_2.film_id) as film_count
from film_category_1 as table_1
inner join film_rating_table as table_2 on (table_1.film_id = table_2.film_id)
group by 1,2
order by 1)

select category."name",  movie_rating_total.*
from film_category_total as fct  
left join
movie_rating_total on (fct.category_id = movie_rating_total.category_id)
inner join category on (fct.category_id= category.category_id);


