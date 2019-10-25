--Which store has the minimum length movie? -- They can have the same movie

select s.store_id, f.length
from store as s
left join inventory as i on (s.store_id=i.store_id)
left join film as f on (f.film_id=i.film_id)
group by s.store_id,f.length
order by f.length asc
limit 1;