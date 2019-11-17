-- Joins --

-- Part 1 --

-- Inner joins are very similar to those in python and returns records at the values that the two data sets intersect
-- Left joins return all records from the first table and any matching records from the second
-- Right joins perform the same function as left, but return the seocnd table first, and all matching values for the first table 
-- Full joins return all values from both tables 

-- Part 2 --

-- A left join was used to create the table in the example
-- Values are returned for the left side of the table, and any corresponding values from the right side of the table are populated 

drop table if exists table_one
drop table if exists table_two

create table table_one (
	name varchar (30) not null,
	state varchar (30) not null,
	age int not null,
	primary key (name)
);

create table table_two (
	occupation varchar (30) not null, 
	gender varchar (30) not null
);

insert into table_one (name, state, age)
values ('Alan', 'Alabama', 20),
	('Adam', 'Alaska', 21),
	('Alex', 'Arizona', 22),
	('Ashton', 'Arkansas', 23),
	('Cory', 'Conneticut', 24);
	
insert into table_two (occupation, gender)
values ('Plumber', 'Male'),
	('Teacher', 'Male'),
	('Dancer', 'Male'),
	('Doctor', 'Male'),
	('Engineer', 'Male');

select * from table_one o
left join table_two t
on o.name = t.occupation

