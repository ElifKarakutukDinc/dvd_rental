--Number of actors first name and last name starts with same character?

Select count(*)
from actor
where substring(first_name,1, 1) = substring(last_name, 1, 1);

