-- 1) Âûâåñòè âñåõ ðàáîòíèêîâ ÷üè çàðïëàòû åñòü â áàçå, âìåñòå ñ çàðïëàòàìè:
select employee_name, monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
order by monthly_salary;

-- 2) Âûâåñòè âñåõ ðàáîòíèêîâ ó êîòîðûõ ÇÏ ìåíüøå 2000:
select employee_name, salary_id, monthly_salary 
from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id 
where monthly_salary < 2000
order by monthly_salary;

-- 3) Âûâåñòè âñå çàðïëàòíûå ïîçèöèè, íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.): 
select salary_id, monthly_salary, employee_name
from employee_salary 
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name is null
order by monthly_salary;

-- 4) Âûâåñòè âñå çàðïëàòíûå ïîçèöèè  ìåíüøå 2000 íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.):
select salary_id, monthly_salary, employee_name
from employee_salary 
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name is null and monthly_salary < 2000
order by monthly_salary;

-- 5) Íàéòè âñåõ ðàáîòíèêîâ êîìó íå íà÷èñëåíà ÇÏ:
select employee_name, salary_id
from employees
left join employee_salary on employees.id = employee_salary.employee_id
where salary_id is null;

-- 6) Âûâåñòè âñåõ ðàáîòíèêîâ ñ íàçâàíèÿìè èõ äîëæíîñòè:
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id;

-- 7) Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Java ðàçðàáîò÷èêîâ:
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id
where role_name like '%Java developer%';

-- 8)  Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Python ðàçðàáîò÷èêîâ:
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id
where role_name like '%Python developer%';

-- 9) Âûâåñòè èìåíà è äîëæíîñòü âñåõ QA èíæåíåðîâ:
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id
where role_name like '%QA engineer%';

-- 10) Âûâåñòè èìåíà è äîëæíîñòü ðó÷íûõ QA èíæåíåðîâ:
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id
where role_name like '%Manual QA engineer%';

-- 11) Âûâåñòè èìåíà è äîëæíîñòü àâòîìàòèçàòîðîâ QA
select employees.id, employee_name, role_name 
from roles_employee
left join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id  = roles.id
where role_name like '%Automation QA engineer%';

-- 12) Âûâåñòè èìåíà è çàðïëàòû Junior ñïåöèàëèñòîâ:
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

-- 13) Âûâåñòè èìåíà è çàðïëàòû Middle ñïåöèàëèñòîâ:
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

-- 14) Âûâåñòè èìåíà è çàðïëàòû Senior ñïåöèàëèñòîâ:
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

-- 15) Âûâåñòè çàðïëàòû Java ðàçðàáîò÷èêîâ:
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

-- 16) Âûâåñòè çàðïëàòû Python ðàçðàáîò÷èêîâ:
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

-- 17) Âûâåñòè èìåíà è çàðïëàòû Junior Python ðàçðàáîò÷èêîâ:
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

-- 18) Âûâåñòè èìåíà è çàðïëàòû Middle JS ðàçðàáîò÷èêîâ:
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

-- 19) Âûâåñòè èìåíà è çàðïëàòû Senior Java ðàçðàáîò÷èêîâ:
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

-- 20) Âûâåñòè çàðïëàòû Junior QA èíæåíåðîâ:
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

-- 21) Âûâåñòè ñðåäíþþ çàðïëàòó âñåõ Junior ñïåöèàëèñòîâ:
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

-- 22) Âûâåñòè ñóììó çàðïëàò JS ðàçðàáîò÷èêîâ:
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

-- 23) Âûâåñòè ìèíèìàëüíóþ ÇÏ QA èíæåíåðîâ:
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

-- 24) Âûâåñòè ìàêñèìàëüíóþ ÇÏ QA èíæåíåðîâ:
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

-- 25) Âûâåñòè êîëè÷åñòâî QA èíæåíåðîâ:
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

-- 26) Âûâåñòè êîëè÷åñòâî Middle ñïåöèàëèñòîâ:
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

-- 27) Âûâåñòè êîëè÷åñòâî ðàçðàáîò÷èêîâ:
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

-- 28) Âûâåñòè ôîíä (ñóììó) çàðïëàòû ðàçðàáîò÷èêîâ:
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

-- 29) Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ:
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

-- 30) Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ îò 1700 äî 2300:
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

-- 31) Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ìåíüøå 2300:
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

-- 32) Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ðàâíà 1100, 1500, 2000:
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
