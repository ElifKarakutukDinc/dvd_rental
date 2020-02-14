--Film count of top 25 customers prefered by categories and countries 

with film_and_category as (
select c.category_id, c."name", film.film_id
from film 
inner join film_category as fc on (film.film_id=fc.film_id)
inner join category as c on (c.category_id=fc.category_id)
group by 1,2,3),

customer_rental_table as (
select c.customer_id, r.rental_id, film.film_id
from customer as c 
inner join rental as r on (r.customer_id=c.customer_id)
inner join inventory as i on (r.inventory_id=i.inventory_id)
inner join film on (film.film_id=i.film_id)
order by 1),

Customer_address_table as (
select c.customer_id, country
from customer as c 
inner join address as a on (a.address_id=c.address_id)
inner join city on (city.city_id=a.city_id)
inner join country on (country.country_id=city.country_id)),

customer_count_film_table as (
select cr.customer_id, count(cr.film_id) as count_film_per_customer
from customer_rental_table as cr
group by 1
order by 2 desc
limit 25) 

select fc."name", ca.country, count(*)
from film_and_category as fc
left join customer_rental_table as cr on (fc.film_id=cr.film_id)
inner join customer_count_film_table as ccf on (cr.customer_id=ccf.customer_id)
inner join Customer_address_table as ca on (cr.customer_id=ca.customer_id)
group by 1,2
order by 3;