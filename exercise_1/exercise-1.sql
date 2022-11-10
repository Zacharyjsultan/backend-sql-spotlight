SELECT address_id
-- use INNER JOIN FROM address on to city //-- find all address_id of addresses in the city of Dundee
FROM address inner join city on address.city_id = city.city_id
where city.city = 'Dundee';