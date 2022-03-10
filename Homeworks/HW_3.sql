-- 1) ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������:
select employee_name, monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
order by monthly_salary;

-- 2) ������� ���� ���������� � ������� �� ������ 2000:
select employee_name, salary_id, monthly_salary 
from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id 
where monthly_salary < 2000
order by monthly_salary;

-- 3) ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.): 
select salary_id, monthly_salary, employee_name
from employee_salary 
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name is null
order by monthly_salary;

-- 4) ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.):
select salary_id, monthly_salary, employee_name
from employee_salary 
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name is null and monthly_salary < 2000
order by monthly_salary;

-- 5) ����� ���� ���������� ���� �� ��������� ��:
select employee_name, salary_id
from employees
left join employee_salary on employees.id = employee_salary.employee_id
where salary_id is null;

-- 6) ������� ���� ���������� � ���������� �� ���������:
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id;

-- 7) ������� ����� � ��������� ������ Java �������������:
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id
where role_name like '%Java developer%';

-- 8)  ������� ����� � ��������� ������ Python �������������:
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id
where role_name like '%Python developer%';

-- 9) ������� ����� � ��������� ���� QA ���������:
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id
where role_name like '%QA engineer%';

-- 10) ������� ����� � ��������� ������ QA ���������:
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id
where role_name like '%Manual QA engineer%';

-- 11) ������� ����� � ��������� ��������������� QA
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id
where role_name like '%Automation QA engineer%';

-- 12) ������� ����� � �������� Junior ������������:
select employee_name, role_name, monthly_salary 
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%Junior%'
order by monthly_salary;

select employee_name, role_name, monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%' -- and  monthly_salary is not null
order by monthly_salary;

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%'
order by monthly_salary;

-- 13) ������� ����� � �������� Middle ������������:
select employee_name, role_name, monthly_salary 
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%Middle%'
order by monthly_salary;

select employee_name, role_name, monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%' -- and  monthly_salary is not null
order by monthly_salary;

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%'
order by monthly_salary;

-- 14) ������� ����� � �������� Senior ������������:
select employee_name, role_name, monthly_salary 
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%Senior%'
order by monthly_salary;

select employee_name, role_name, monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%' -- and  monthly_salary is not null
order by monthly_salary;

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%'
order by monthly_salary;

-- 15) ������� �������� Java �������������:
select employee_name, role_name, monthly_salary 
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%Java developer%'
order by monthly_salary;

select employee_name, role_name, monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Java developer%' -- and  monthly_salary is not null
order by monthly_salary;

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Java developer%'
order by monthly_salary;

-- 16) ������� �������� Python �������������:
select employee_name, role_name, monthly_salary 
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%Python developer%'
order by monthly_salary;

select employee_name, role_name, monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Python developer%' -- and  monthly_salary is not null
order by monthly_salary;

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Python developer%'
order by monthly_salary;

-- 17) ������� ����� � �������� Junior Python �������������:
select employee_name, role_name, monthly_salary 
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%Junior Python developer%'
order by monthly_salary;

select employee_name, role_name, monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior Python developer%' -- and  monthly_salary is not null
order by monthly_salary;

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior Python developer%'
order by monthly_salary;

-- 18) ������� ����� � �������� Middle JS �������������:
select employee_name, role_name, monthly_salary 
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%Middle JavaScript developer%'
order by monthly_salary;

select employee_name, role_name, monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle JavaScript developer%' -- and  monthly_salary is not null
order by monthly_salary;

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle JavaScript developer%'
order by monthly_salary;

-- 19) ������� ����� � �������� Senior Java �������������:
select employee_name, role_name, monthly_salary 
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%Senior Java developer%'
order by monthly_salary;

select employee_name, role_name, monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior Java developer%' -- and  monthly_salary is not null
order by monthly_salary;

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior Java developer%'
order by monthly_salary;

-- 20) ������� �������� Junior QA ���������:
select employee_name, role_name, monthly_salary 
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like 'J% Q% eng%'
order by monthly_salary;

select employee_name, role_name, monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like 'J% Q% eng%' -- and  monthly_salary is not null
order by monthly_salary;

select employee_name, role_name, monthly_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like 'J% Q% eng%'
order by monthly_salary;

-- 21) ������� ������� �������� ���� Junior ������������:
select ROUND(AVG(monthly_salary)) as avg_salary
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%Junior%';

select ROUND(AVG(monthly_salary)) as avg_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%' -- and  monthly_salary is not null;

select ROUND(AVG(monthly_salary)) as avg_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

-- 22) ������� ����� ������� JS �������������:
select SUM(monthly_salary) as sum_salary
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%JavaScript developer%';

select SUM(monthly_salary) as sum_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript developer%' -- and  monthly_salary is not null;

select SUM(monthly_salary) as sum_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript developer%';

-- 23) ������� ����������� �� QA ���������:
select MIN(monthly_salary) as min_salary
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%QA engineer%';

select MIN(monthly_salary) as min_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%' -- and  monthly_salary is not null;

select MIN(monthly_salary) as min_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

-- 24) ������� ������������ �� QA ���������:
select MAX(monthly_salary) as max_salary
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%QA engineer%';

select MAX(monthly_salary) as max_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%' -- and  monthly_salary is not null;

select MAX(monthly_salary) as max_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

-- 25) ������� ���������� QA ���������:
select COUNT(role_name) as count_role_name
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%QA engineer%';

select COUNT(role_name) as count_role_name
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%' -- and  monthly_salary is not null;

select COUNT(role_name) as count_role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

-- 26) ������� ���������� Middle ������������:
select COUNT(role_name) as count_role_name
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%Middle%';

select COUNT(role_name) as count_role_name
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%' -- and  monthly_salary is not null;

select COUNT(role_name) as count_role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%';

-- 27) ������� ���������� �������������:
select COUNT(role_name) as count_role_name
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%developer%';

select COUNT(role_name) as count_role_name
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%' -- and  monthly_salary is not null;

select COUNT(role_name) as count_role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%';

-- 28) ������� ���� (�����) �������� �������������:
select SUM(monthly_salary) as sum_monthly_salary
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%developer%';

select SUM(monthly_salary) as sum_monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%' -- and  monthly_salary is not null;

select SUM(monthly_salary) as sum_monthly_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%';

-- 29) ������� �����, ��������� � �� ���� ������������ �� �����������:
select employee_name, role_name, monthly_salary 
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
order by monthly_salary;

select employee_name, role_name, monthly_salary 
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
order by monthly_salary;

select employee_name, role_name, monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
order by monthly_salary;

-- 30) ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300:
select employee_name, role_name, monthly_salary 
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

select employee_name, role_name, monthly_salary 
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

select employee_name, role_name, monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

-- 31) ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300:
select employee_name, role_name, monthly_salary 
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where monthly_salary < 2300
order by monthly_salary;

select employee_name, role_name, monthly_salary 
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2300
order by monthly_salary;

select employee_name, role_name, monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2300
order by monthly_salary;

-- 32) ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000:
select employee_name, role_name, monthly_salary 
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where monthly_salary in ('1100', '1500', '2000')
order by monthly_salary;

select employee_name, role_name, monthly_salary 
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where monthly_salary in ('1100', '1500', '2000')
order by monthly_salary;

select employee_name, role_name, monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary in ('1100', '1500', '2000')
order by monthly_salary;

select *
from employees;

select *
from roles;

select *
from salary;

select *
from roles_employee;

select *
from employee_salary;
