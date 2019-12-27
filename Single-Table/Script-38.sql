--Top 3 film categories?

select category_id, count(*)
from film_category
group by category_id
order by count(*) desc
limit 3;