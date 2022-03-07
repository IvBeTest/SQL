select * from students;

select *
from students 
where id >= 120;

select *
from students 
where name like  '%Anna%';

select *
from students 
where id <> 118;

select *
from students 
where created_on between '2021-09-03 00:00:00.000' and '2021-11-12 00:00:00.000';
 
select *
from students 
order by id desc;

select *
from students 
where name like '%Anna%' or name like '%Donald%';


select *
from students 
where name not like '%Anna%';

select *
from students
where DATE_PART('year', created_on) = 2021;

select *
from students
where email like '%8%';

select *
from students
where name similar to '(F|S|B)%';

select *
from students 
where name like  '%Anna%' or name like  '%8%' ;

select *
from students 
where password in ('1m313','332f2');

select *
from students 
where name like '%Anna%';

select count(id)
from students 
where name like '%Anna%';

select *
from students 
order by id desc;

select *
from students 
where email like '%8%';

select *
from students 
where date_part('year', created_on) >= 2021 and date_part('month', created_on) >= 10;

select *
from students
where created_on >= '2021-10-01' and created_on <'2022-01-01';

