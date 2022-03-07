create table salary(
	id serial primary key,
	monthly_salary int not null
);

select *
from salary;

select *
from roles;

create table roles(
	id serial primary key,
	role_title varchar(50) unique not null
);

create table roles_salary(
	id serial primary key,
	id_role int not null,
	id_salary int not null,
	foreign key (id_role)
		references roles(id),
	foreign key (id_salary)
		references salary (id)
	);	

select *
from roles_salary;


insert into salary(monthly_salary)
values  (default, 1450),
		(default, 2000),
		(default, 1500),
		(default, 2200),
		(default, 1800),
		(default, 2500),
		(default, 1900),
		(default, 2700),
		(default, 1700),
		(default, 2600),
		(default, 4000),
		(default, 5000);
	
	
insert into roles(role_title)
values  ('QA_Engineer_junior'),	
		('QA_Engineer_middle'),	
		('QA_Engineer_senior'),	
		('QA_Engineer_automation_junior'),	
		('QA_Engineer_automation_middle'),	
		('QA_Engineer_automation_senior'),	
		('Java_developer_junior'),	
		('Java_developer_middle'),	
		('Java_developer_senior'),	
		('Python_developer_junior'),
		('Python_developer_middle'),
		('Python_developer_senior'),
		('Manager'),
		('Designer'),
		('HR');
		
insert into roles_salary(id_role, id_salary)
values  (1, 4),
		(2, 3),
		(3, 2),
		(4, 1),
		(5, 7),
		(6, 8),
		(7, 10),
		(8, 11),
		(9, 4);
	
select *
from roles_salary;

-- создали и заполнили таблицу



alter table roles
add column parking int; 

select *
from roles;

alter table roles
rename column parking to taxi;

select *
from roles;

alter table roles
drop column taxi;

select *
from roles;

alter table roles
alter column parking type varchar(30);

select *
from roles;

alter table roles
alter column parking type int using parking::integer;

select *
from roles;

update roles
set role_title = 'HR_Business_partner'
where id = 15;

select *
from roles;

