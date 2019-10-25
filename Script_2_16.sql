--Which store has the most movies? -- They can have the same movie

select s.store_id, count(f.film_id)
from store as s
left join inventory as i on (s.store_id=i.store_id)
left join film as f on (f.film_id=i.film_id)
group by s.store_id
order by count(f.film_id) desc;