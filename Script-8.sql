--which actors name have vowel character?


SELECT first_name
FROM actor 
WHERE (first_name LIKE 'A%' OR first_name LIKE 'E%' OR first_name LIKE 'I%' OR first_name LIKE 'O%' OR first_name LIKE 'U%') 
or (first_name LIKE '%a%' OR first_name LIKE '%e%' OR first_name LIKE '%i%' OR first_name LIKE '%o%' OR first_name LIKE '%u%') 
or (first_name LIKE '%a' OR first_name LIKE '%e' OR first_name LIKE '%i' OR first_name LIKE '%o' OR first_name LIKE '%u')
order by first_name;