-- Part One --

drop table if exists table_one
drop table if exists table_two

create table table_one (
	name varchar (30) not null,
	state varchar (30) not null,
	age int not null
);

create table table_two (
	name varchar (30) not null,
	occupation varchar (30) not null, 
	gender varchar (30) not null
);

insert into table_one (name, state, age)
values ('Alan', 'Alabama', 20),
	('Adam', 'Alaska', 21),
	('Alex', 'Arizona', 22),
	('Ashton', 'Arkansas', 23);
	('Cory', 'Conneticut', 24),
	('Connor', 'Colorado', 25),
	('Jacob', 'California', 26),
	('Dylan', 'Delware', 27),
	('George', 'Georgia', 28),
	('Hank', 'Hawaii', 29),
	('Issac', 'Indiana', 20),
	('Ignatio', 'Illinois', 21),
	('Kyle', 'Kentucky', 22),
	('Luke', 'Louisianna', 23),
	('Mark', 'Minnesota', 24),
	('Michael', 'Maryland', 25),
	('Morgan', 'Missouri', 26),
	('Mitchell', 'Montana', 27),
	('Jacob', 'Maine', 28),
	('Micah', 'Mississippi', 29),
	('Nick', 'Nebraska', 20),
	('Niall', 'North Carolia', 21),
	('Norbert', 'North Dakota', 22),
	('Niko', 'New Hampshire', 23),
	('Nathan', 'New Mexico', 24);
	
insert into table_two (name, occupation, gender)
values ('Ashley', 'Plumber', 'Female'),
	('Becca', 'Teacher', 'Female'),
	('Courtney', 'Dancer', 'Female'),
	('Daria', 'Doctor', 'Female'),
	('Emily', 'Engineer', 'Female'),
	('Fiona', 'Salesperson', 'Female'),
	('Gina', 'Florist', 'Female'),
	('Hannah', 'New Mexico', 'Female'),
	('Isabelle', 'New Mexico', 'Female'),
	('Jolene', 'Landscaper', 'Female');

--Select Count returns the number of values in the table queried--

select count(*)
from table_one;

select count(*)
from table_two;

-- All columns in the tables queried returned in one table, 250 rows returned 

select *
from table_one, table_two;

-- Part 2 --
select * from table_one

select * from table_two

select * from table_one, table_two;

-- The command above will return the total number
-- of rows from the # of rows in table_one x the # 
-- of rows in table_two
	

