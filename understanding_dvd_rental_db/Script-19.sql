--Group address postal codes based on number of digits in the address?For example 47 MySakila Drive 47 is the postal code and digit is 2, on the other hand 1411 Lillydale Drive 1411 is postal code and digit is 4. Hint; substring(string, 1, strpos(string,’ ’))

select length(substring(address, 1, strpos(address,' '))) as address_number, count(*)
from address
group by length(substring(address, 1, strpos(address,' ')));
