-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
select city.city, sum(payment.amount)
from city
InnER join address ON city.city_id = address.city_id
InnER join customer ON address.address_id = customer.address_id
InnER join rental ON customer.customer_id = rental.customer_id
InnER join payment ON rental.rental_id = payment.rental_id
-- use SUM to sum up the amounts
group by city.city_id
order by sum desc
limit 10