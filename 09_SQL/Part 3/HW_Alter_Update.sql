drop table if exists table_one
drop table if exists table_two

create table table_one (
	name varchar (30) not null,
	state varchar (30) not null,
	age int not null,
	primary key (name)
);

create table table_two (
	name varchar (30) not null,
	occupation varchar (30) not null, 
	gender varchar (30) not null,
	foreign key (name) references table_one(name),
	primary key (name)
);

insert into table_one (name, state, age)
values ('Alan', 'Alabama', 20),
	('Adam', 'Alaska', 21),
	('Alex', 'Arizona', 22),
	('Ashton', 'Arkansas', 23),
	('Cory', 'Conneticut', 24);
	
insert into table_two (name, occupation, gender)
values ('Alan', 'Plumber', 'Male'),
	('Adam', 'Teacher', 'Male'),
	('Alex', 'Dancer', 'Male'),
	('Ashton', 'Doctor', 'Male'),
	('Cory', 'Engineer', 'Male');
	
-- Part 1 --	
-- Alter command is used to add, delete, or modify columns in an existing table 
-- Update command is used to modify an existing record in a table based on a given condition 

-- Part 2 --

alter table table_two
	rename column name to subject_name 
	
select * 
from table_two

alter table table_two 
	add column subject_id serial
	
select * 
from table_two

