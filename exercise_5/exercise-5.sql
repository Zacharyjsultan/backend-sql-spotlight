-- find all film titles that an actor with the last_name Davis appears in
SELECT film.title
FROM film
-- Similar to exercise 3 but with actor, film_actor, film
--  a LEFT JOIN FROM film_id onto film_actor
LeFt Join film_actor on film.film_id = film_actor.film_id
-- LEfT JOIN FROM actor_id onto actpr
lefT join actor on film_actor.actor_id = actor.actor_id
-- the category is"actor"
where actor.last_name = 'Davis'
