<div align="center">

### ***"SQL_HW_2"*** 
</div>

### ***1. Создать таблицу employees:***
```
create table employees(
	id serial primary key,
    employee_name Varchar(50) not null
);
```
``` 
select*
from employees;
```

### ***2. Наполнить таблицу employees 70 строками:***
```
insert into employees(employee_name)
values  ('Kim Carter'),
		('Nora Adams'),
		('Louis Scott'),
		('Ashley Wilson'),
		('Susan Jordan'),
		('Ramon Brown'),
		('Jeremy Adams'),
		('Dorothy Gonzalez'),
		('Jennifer Smith'),
		('Roberta Smith'),
		('Judy Rios'),
		('John Jimenez'),
		('Johnny Chandler'),
		('Cassandra Lawrence'),
		('Brett Jackson'),
		('Bobbie Cooper'),
		('Margaret Doyle'),
		('Karen Walker'),
		('Sylvia Hayes'),
		('Amy Bates'),
		('Raul King'),
		('Aaron Lowe'),
		('Margaret Schneider'),
		('Brenda Kim'),
		('Jennifer White'),
		('Henry White'),
		('Robert Martin'),
		('Carolyn Smith'),
		('Sarah Phillips'),
		('Sherry Miller'),
		('Betty Butler'),
		('William Hodges'),
		('Edward Sandoval'),
		('Shannon Patterson'),
		('Paula Campbell'),
		('Todd Harris'),
		('Leon Howell'),
		('Darren Smith'),
		('Terry Perkins'),
		('Sharon Martinez'),
		('Samuel Anderson'),
		('Andrew Davis'),
		('Steve Schultz'),
		('Suzanne Anderson'),
		('Victoria Nichols'),
		('Michael Blair'),
		('Debra Hampton'),
		('Richard Johnson'),
		('Mary Williams'),
		('Robert Allen'),
		('Mary Stone'),
		('Eric Lloyd'),
		('Angel Stewart'),
		('Jeffrey Armstrong'),
		('Kimberly Patterson'),
		('Judith Clark'),
		('John Ross'),
		('Erin Gutierrez'),
		('Lonnie Woods'),
		('Glen Diaz'),
		('Corey Anderson'),
		('George Castillo'),
		('Bernard Hernandez'),
		('David White'),
		('Helen Cox'),
		('Kimberly Allison'),
		('Marjorie Rice'),
		('Justin Walters'),
		('Teresa Taylor'),
		('Marilyn Hernandez');
```
```			
select*
from employees;	
```

### ***3. Создать таблицу salary:***
```
create table salary(
	id serial  primary key,
	monthly_salary int not null
);
```
```
select*
from salary;
```

### ***4. Наполнить таблицу salary 15 строками:***
```
insert into salary(id,monthly_salary)
values  (default, 1000),
		(default, 1100),
		(default, 1200),
		(default, 1300),
		(default, 1400),
		(default, 1500),
		(default, 1600),
		(default, 1700),
		(default, 1800),
		(default, 1900),
		(default, 2000),
		(default, 2100),
		(default, 2200),
		(default, 2300),
		(default, 2400);
```
```		
select*
from salary;
```

### ***5. Создать таблицу employee_salary:***
```
create table employee_salary(
	id serial primary key,
	employee_id Int not null unique,
	salary_id Int not null
);
```
```
select*
from employee_salary;
```

### ***6. Наполнить таблицу employee_salary 40 строками (в 10 строк из 40 вставить несуществующие employee_id):***
```
insert into employee_salary(employee_id, salary_id)
	values  (2, 1),
			(3, 2),
			(5, 3),
			(6, 5),
			(12, 7),
			(15, 3),
			(18, 12),
			(21, 9),
			(24, 15),
			(27, 3),
			(29, 5),
			(30, 4),
			(32, 11),
			(35, 10),
			(37, 9),
			(39, 3),
			(43, 5),
			(44, 7),
			(46, 1),
			(48, 13),
			(49, 2),
			(53, 8),
			(55, 4),
			(56, 3),
			(57, 12),
			(60, 7),
			(62, 9),
			(65, 6),
			(68, 4),
			(70, 14),
			(72, 4),
			(75, 3),
			(77, 6),
			(79, 9),
			(81, 6),
			(83, 12),
			(85, 15),
			(86, 7),
			(89, 3),
			(91, 6);
```
```		
select*
from employee_salary;
```

### ***7. Создать таблицу roles:***
```
create table roles(
	id serial  primary key,
	role_name int not null unique
);
```
```
select *
from roles;
```

### ***8. Поменять тип столба role_name с int на varchar(30):***
```
alter table roles 
alter column role_name type varchar(30);
```
```
select *
from roles;
```

### ***9. Наполнить таблицу roles 20 строками:***
```
insert into roles(id, role_name)
values  (1, 'Junior Python developer'),
		(2, 'Middle Python developer'),
		(3, 'Senior Python developer'),
		(4, 'Junior Java developer'),
		(5, 'Middle Java developer'),
		(6, 'Senior Java developer'),
		(7, 'Junior JavaScript developer'),
		(8, 'Middle JavaScript developer'),
		(9, 'Senior JavaScript developer'),
		(10, 'Junior Manual QA engineer'),
		(11, 'Middle Manual QA engineer'),
		(12, 'Senior Manual QA engineer'),
		(13, 'Project Manager'),
		(14, 'Designer'),
		(15, 'HR'),
		(16, 'CEO'),
		(17, 'Sales manager'),
		(18, 'Junior Automation QA engineer'),
		(19, 'Middle Automation QA engineer'),
		(20, 'Senior Automation QA engineer');
```
```		
select *
from roles;
```

### ***10. Создать таблицу roles_employee:***
```
create table roles_employee(
	id serial  primary key,
	employee_id Int not null unique,
	role_id Int not null
);
```
```
select *
from roles_employee;
```

### ***11. Наполнить таблицу roles_employee 40 строками:***
```
insert into roles_employee(employee_id, role_id)
values  (2, 6),
		(3, 2),
		(6, 9),
		(8, 1),
		(9, 11),
		(11, 3),
		(12, 5),
		(15, 7),
		(16, 4),
		(18, 20),
		(19, 3),
		(21, 1),
		(22, 9),
		(25, 17),
		(27, 18),
		(29, 16),
		(30, 12),
		(32, 9),
		(35, 3),
		(36, 7),
		(37, 4),
		(38, 5),
		(40, 8),
		(42, 7),
		(44, 18),
		(45, 16),
		(47, 8),
		(49, 6),
		(51, 1),
		(52, 9),
		(54, 13),
		(57, 11),
		(59, 14),
		(60, 7),
		(62, 3),
		(63, 11),
		(65, 15),
		(67, 18),
		(69, 4),
		(70, 9);
```
```		
select *
from roles_employee;
```