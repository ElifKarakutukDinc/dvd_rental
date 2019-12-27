--which actors last name have vowel character?


SELECT last_name
FROM actor 
WHERE (last_name LIKE 'A%' OR last_name LIKE 'E%' OR last_name LIKE 'I%' OR last_name LIKE 'O%' OR last_name LIKE 'U%') 
or (last_name LIKE '%a%' OR last_name LIKE '%e%' OR last_name LIKE '%i%' OR last_name LIKE '%o%' OR last_name LIKE '%u%') 
or (last_name LIKE '%a' OR last_name LIKE '%e' OR last_name LIKE '%i' OR last_name LIKE '%o' OR last_name LIKE '%u')
order by last_name;


