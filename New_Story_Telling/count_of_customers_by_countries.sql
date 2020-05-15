--count of customers by countries

select country, count(c.customer_id) as count_of_customers 
from customer as c 
inner join address as a on (a.address_id=c.address_id)
inner join city on (city.city_id=a.city_id)
inner join country on (country.country_id=city.country_id)
group by 1
order by 2 desc;