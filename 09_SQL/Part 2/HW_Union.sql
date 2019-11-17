--Create View--

create view all_parties as 
select actor_id AS id, first_name, last_name 
from actor
union 
select customer_id AS id, first_name, last_name
from customer
union 
select staff_id AS id, first_name, last_name
from staff

select * from all_parties; 

--Union Tables--

drop view if exists customers 

create view customers as
select c.customer_id, l.id, l.city
from customer as c 
join customer_list as l
on c.customer_id = l.id

select * 
from customers 
where city = 'London'

