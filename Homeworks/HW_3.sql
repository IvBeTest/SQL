-- 1) Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами:
select employee_name, monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
order by monthly_salary;

-- 2) Вывести всех работников у которых ЗП меньше 2000:
select employee_name, salary_id, monthly_salary 
from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id 
where monthly_salary < 2000
order by monthly_salary;

-- 3) Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.): 
select salary_id, monthly_salary, employee_name
from employee_salary 
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name is null
order by monthly_salary;

-- 4) Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.):
select salary_id, monthly_salary, employee_name
from employee_salary 
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name is null and monthly_salary < 2000
order by monthly_salary;

-- 5) Найти всех работников кому не начислена ЗП:
select employee_name, salary_id
from employees
left join employee_salary on employees.id = employee_salary.employee_id
where salary_id is null;

-- 6) Вывести всех работников с названиями их должности:
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id;

-- 7) Вывести имена и должность только Java разработчиков:
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id
where role_name like '%Java developer%';

-- 8)  Вывести имена и должность только Python разработчиков:
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id
where role_name like '%Python developer%';

-- 9) Вывести имена и должность всех QA инженеров:
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id
where role_name like '%QA engineer%';

-- 10) Вывести имена и должность ручных QA инженеров:
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id
where role_name like '%Manual QA engineer%';

-- 11) Вывести имена и должность автоматизаторов QA
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id
where role_name like '%Automation QA engineer%';

-- 12) Вывести имена и зарплаты Junior специалистов:
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

-- 13) Вывести имена и зарплаты Middle специалистов:
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

-- 14) Вывести имена и зарплаты Senior специалистов:
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

-- 15) Вывести зарплаты Java разработчиков:
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

-- 16) Вывести зарплаты Python разработчиков:
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

-- 17) Вывести имена и зарплаты Junior Python разработчиков:
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

-- 18) Вывести имена и зарплаты Middle JS разработчиков:
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

-- 19) Вывести имена и зарплаты Senior Java разработчиков:
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

-- 20) Вывести зарплаты Junior QA инженеров:
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

-- 21) Вывести среднюю зарплату всех Junior специалистов:
select ROUND(AVG(monthly_salary))
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%Junior%';

select ROUND(AVG(monthly_salary))
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%' -- and  monthly_salary is not null;

select ROUND(AVG(monthly_salary))
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

-- 22) Вывести сумму зарплат JS разработчиков:
select SUM(monthly_salary)
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%JavaScript developer%';

select SUM(monthly_salary)
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript developer%' -- and  monthly_salary is not null;

select SUM(monthly_salary)
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript developer%';

-- 23) Вывести минимальную ЗП QA инженеров:
select MIN(monthly_salary)
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%QA engineer%';

select MIN(monthly_salary)
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%' -- and  monthly_salary is not null;

select MIN(monthly_salary)
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

-- 24) Вывести максимальную ЗП QA инженеров:
select MAX(monthly_salary)
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%QA engineer%';

select MAX(monthly_salary)
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%' -- and  monthly_salary is not null;

select MAX(monthly_salary)
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

-- 25) Вывести количество QA инженеров:
select COUNT(role_name)
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%QA engineer%';

select COUNT(role_name)
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%' -- and  monthly_salary is not null;

select COUNT(role_name)
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

-- 26) Вывести количество Middle специалистов:
select COUNT(role_name)
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%Middle%';

select COUNT(role_name)
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%' -- and  monthly_salary is not null;

select COUNT(role_name)
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%';

-- 27) Вывести количество разработчиков:
select COUNT(role_name)
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%developer%';

select COUNT(role_name)
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%' -- and  monthly_salary is not null;

select COUNT(role_name)
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%';

-- 28) Вывести фонд (сумму) зарплаты разработчиков:
select SUM(monthly_salary)
from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on roles_employee.id = employee_salary.id
join salary on employee_salary.salary_id  = salary.id
where role_name like '%developer%';

select SUM(monthly_salary)
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%' -- and  monthly_salary is not null;

select SUM(monthly_salary)
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%';

-- 29) Вывести имена, должности и ЗП всех специалистов по возрастанию:
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

-- 30) Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300:
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

-- 31) Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300:
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

-- 32) Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000:
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
