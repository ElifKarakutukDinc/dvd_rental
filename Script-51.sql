--What is the average payment in weekend? Hint: EXTRACT(ISODOW FROM date) IN (6, 7)

select avg(amount)
from payment
where EXTRACT(ISODOW FROM payment_date) IN (6, 7);