--Top 3 repeating characters in the first character of film title. For example; A 100, E 92, C 50

select substring(title, 1, 1) as title_first_character, count(*)
from film
group by substring(title, 1, 1)
order by substring(title, 1, 1);