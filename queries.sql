-- ==>DQL

--1-select all information of cources
select* from courses;

--2- select all information of services
select* from [services];

--3-select all information equipment requred in course(name)
select e.[type], size  from equipment e inner join equipment_required er
on e.eq_code=er.eq_code
inner join courses cs
on cs.course_id=er.course_id
where cs.type='Beginner';

--4-select all infromation about stuff that the manger is (fatma) =>(self join)
select s.*,y.firstname from staff s inner join staff y
on s.maneger_id=y.staff_id
where y.firstname='fatma';

--5-sellect all information about customers whose instructor is ahmed (additional) in course (type)
select c.* ,ins.name,cs.course_id from customers c inner join mentor m 
on c.customer_id=m.customer_id
inner join instructors ins
on m.ins_id=ins.ins_id
inner join teach t
on ins.ins_id=t.ins_id
inner join courses cs
on t.course_id=cs.course_id
where ins.name='Ahmed Ali' and cs.course_id=1;

--6-select all infromation about servise introduced by (stuff Ali)
select s.*,firstname
from [services] s inner join staff st 
on s.staff_id=st.staff_id
where st.firstname='Ali';

--7-select all instructor name that can speak (french)
select name from instructors i inner join instructor_lang il
on i.ins_id=il.ins_id
where il.lang='french';

--8-select servce type and duration of service that has min price and stuff name(join with aggregate)
select [type] , price,firstname from [services]
inner join staff
on staff.staff_id=[services].staff_id
where price = (select min(price) from services)
--9-select total time of course (course type) => (aggregate with join) // drop course hours from cource table
select sum(duration) as total_duration from
(
select le.duration
from courses co inner join lessons le
on co.course_id=le.course_id
and le.course_id=1 ) as duration ;

--10-.Display stuff full name and their salary
select firstname+' '+lastname as fullname,salary from staff 

--11-select instructor name whose mentor on customer from (any country name)
select ins.name from customers cs
inner join mentor m
on cs.customer_id=m.customer_id
inner join 
instructors ins
on ins.ins_id=m.ins_id
where country='USA';
--12-select all information about services that its price less than(price)
select * from services 
where price<=50;

--13-select the course type and price that has max price
select type , price from courses
where price=(select max(price)from courses);
--14-select the number of language that instructor (name) can speake
select count(lang) as num
from(
select insl.lang from instructors ins inner join instructor_lang insl
on ins.ins_id=insl.ins_id
where ins.name='ahmed ali') as num_of_lang;

--15-select the type of all services arder by its price
select type,price from services 
order by price desc;

--16-Get all instructors Names without repetition
select distinct [name] from instructors;

--17-Display max and min salary for instructors
select max(salary) as max_salary, min(salary) as min_salry from instructors;

--18-Display instructors who have salaries less than the average salary of all instructors.
select [name] from instructors 
where salary <=(select avg(salary) from instructors);

--19-select the number of lessons for each course (id)
select c.course_id ,count(les.lesson_id) as num_of_lesson
from courses c inner join lessons les 
on c.course_id=les.course_id
group by c.course_id;

--20-select the instructor names order by thier experience
select name from instructors
order by experience;

