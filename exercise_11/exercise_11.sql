-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
Select film.title, count(rental.rental_id)
from film
left join inventory on film.film_id = inventory.film_id
left JOIN rental on inventory.inventory_id = rental.inventory_id
-- GROUP BY the film_id
group by film.film_id
-- ORDER in descending order
order by count desc
-- LIMIT 10
limit 10
-- film & inventory & rental
