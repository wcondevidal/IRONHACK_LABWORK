#Question1
select distinct release_year from film;

#2
select title from film
where title like "%ARMAGEDDON%";

#3
select title from film
where title like "%APOLLO"

#4
select title from film
order by length desc
limit 10;

#5
select count(*) from film
where special_features like "%Behind the Scenes%";

#6
ALTER TABLE staff
DROP COLUMN picture;

#7
INSERT INTO staff (first_name, last_name, email, address_id, store_id, username)
VALUES ("Tammy", "Sanders", "tammy.sanders@sakilacustomer.org",79,2,"tammy");

#8
select customer id from customer where first_name = "CHARLOTTE" and last_name = "HUNTER";
select staff_id from staff where first_name = "Mike";
select film_id from film where title= "ACADEMY DINOSAUR";
select inventory_id from inventory where film_id = 1;
insert into rental (rental_date, inventory_id, customer_id, staff_id)
values (NOW(),1,130,1);

#9
select * from customer where active = 0;
drop table if exists  deleted_user;
create table deleted_user (
customer_id int UNIQUE NOT NULL,
email varchar(255) UNIQUE NOT NULL,
deleted_date date);
insert into deleted_user
SELECT customer_id, email, curdate()
from customer
where active=0;
select * from deleted_user;
delete from customer where active = 0;
