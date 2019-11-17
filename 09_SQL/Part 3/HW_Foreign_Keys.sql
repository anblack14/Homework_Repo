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
values ('Alan', 'Plumber', 'Male'),
	('Adam', 'Teacher', 'Male'),
	('Alex', 'Dancer', 'Male'),
	('Ashton', 'Doctor', 'Male'),
	('Cory', 'Engineer', 'Male');

select * from table_one o
join table_two t
on (o.name = t.name)
where o.name = 'Alex';

-- Reconstruct table --

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

select o.name, o.state, o.age, t.occupation, t.gender
from table_one o
join table_two t
on (o.name = t.name)
where o.name = 'Alex';


	