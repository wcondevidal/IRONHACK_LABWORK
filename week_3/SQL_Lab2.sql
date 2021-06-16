#1
select * from actor
where first_name = "Scarlett";

#2
select title, length from film where length = (select max(length) from film);
select title, length from film where length = (select min(length) from film);

#3
select max(length) as max_duration, min(length) as min_duration from film;

#4
select time_format(avg(length),"%T") as "Average Length" from film; 

#5
select distinct last_name from actor;

#6
SELECT DATEDIFF(max(payment_date), min(payment_date)) from payment;

#7
select *, date_format(rental_date, "%M") as month , date_format(rental_date, "%W") as weekday
from rental
limit 20;

#8
select *, case when date_format(rental_date, ‘%W’) in (‘Saturday’, ‘Sunday’)
          then ‘weekend’
          else ‘workday’ end as day_type
from rental;

#9
select count(rental_id) from rental
where rental_date like "2006-01-15" and "2006-02-14"
