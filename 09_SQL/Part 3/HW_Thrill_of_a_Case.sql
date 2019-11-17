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
	('Ashton', 'Arkansas', 23),
	('Cory', 'Conneticut', 24);
	
insert into table_two (name, occupation, gender)
values ('Jessica', 'Plumber', 'Male'),
	('Adam', 'Teacher', 'Female'),
	('Chelsea', 'Dancer', 'Male'),
	('Ashton', 'Doctor', 'Female'),
	('Brittany', 'Engineer', 'Male');
	
-- Update Table --

update table_two
set gender = 'Female'
where name = 'Jessica';

update table_two
set gender = 'Female'
where name = 'Chelsea';

update table_two
set gender = 'Female'
where name = 'Brittany';

update table_two
set gender = 'Male'
where name = 'Adam';

update table_two
set gender = 'Male'
where name = 'Ashton';

select * 
from table_two