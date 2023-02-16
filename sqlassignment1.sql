--1. How many actors are there with the last name ‘Wahlberg’? Answer: 2
SELECT last_name, COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg'
GROUP BY last_name;


--2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--3. What film does the store have the most of? (search in inventory)
select film_id, COUNT(film_id) AS amount
from inventory
GROUP BY film_id
ORDER BY amount desc;

--4. How many customers have the last name ‘William’?
SELECT last_name, COUNT(last_name)
FROM customer
WHERE last_name = 'William'
GROUP BY last_name;

SELECT last_name, COUNT(last_name) -- no William last name, searched for Williams to show it works
FROM customer 
WHERE last_name = 'Williams'
GROUP BY last_name;


--5. What store employee (get the id) sold the most rentals?
select staff_id, COUNT(staff_id) as sold
from rental 
group by staff_id
order by sold desc;

--6. How many different district names are there?
SELECT COUNT( DISTINCT district) as districts
FROM address;

--7. What film has the most actors in it? (use film_actor table and get film_id)
select film_id, count(distinct actor_id) as actors
from film_actor fa 
group by film_id 
order by actors desc;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select count(last_name)
from customer
where last_name like '%es';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
select amount, count(amount)
from payment p
where customer_id between 380 and 430 
group by amount
having count(amount) > 250




--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
select count(distinct rating)
from film;

select rating, COUNT(rating) as times
from film
group by rating
order by times desc;
