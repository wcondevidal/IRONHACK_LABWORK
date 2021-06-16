#Question 1
select distinct(last_name) from actor;

#Question 2
SELECT *
FROM actor
WHERE last_name IN (
    SELECT last_name
    FROM actor
    GROUP BY last_name
    HAVING COUNT(*) > 1
)

#Question 3
select first_name, count(*) from rental a
inner join staff b
on a.staff_id = b.staff_id
group by first_name;

#Question 4
select release_year, count(film_id) as number_films from film
group by release_year;

#Question 5
select rating, count(film_id) as Number_of_films from film
group by rating;

#Question 6
select rating, round(AVG(length),2) as avg_length from film
group by rating;

#Question 7
select rating, round(AVG(length),2) as avg_length from film
group by rating
having length > 120;
