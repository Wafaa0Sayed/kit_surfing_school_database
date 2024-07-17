create database kite_surfing_school

use kite_surfing_school
--==> DDL 

-- create 
create table courses(
course_id int primary key,
level int ,
type varchar(30),
hours int ,
price int,
)

create table lessons(
lesson_id int primary key,
course_id int foreign key references courses(course_id),
duration int,
datee date,
)

create table instructors(
ins_id int primary key,
name varchar(30),
experience varchar(20),
age int check (age>20),
salary int,
lang varchar(30),
)

create table equipment(
eq_code varchar(20) primary key,
type varchar(30),
brand varchar(30),
price int,
model varchar(20),
condition varchar(20),
size  char(5),
)


create table staff(
staff_id int primary key,
firstname varchar(20),
lastname varchar(20),
position varchar(40),
phone varchar(11),
city varchar(50),
salary DECIMAL(10, 4),
CONSTRAINT salary_check CHECK (salary >= 6000 AND salary <= 20000),
hire_date date,
maneger_id int foreign key references staff(staff_id),
)

create table customers(
customer_id int primary key,
name varchar(20),
age int,
country varchar(40),
phone varchar(12),
)

create table services(
service_id int primary key,
type varchar(40),
price int,
duration varchar(20),
staff_id int foreign key references staff(staff_id),
)

create table teach(
ins_id int foreign key references instructors(ins_id),
course_id int foreign key references courses(course_id),
primary key(ins_id,course_id),
)

create table enrollcourse(
customer_id int foreign key references customers(customer_id),
course_id int foreign key references courses(course_id),
primary key(customer_id,course_id),
)

create table services_used(
customer_id int foreign key references customers(customer_id),
service_id int foreign key references services(service_id),
primary key(customer_id,service_id),
)

create table equipment_required(
course_id int foreign key references courses(course_id),
eq_code varchar(20) foreign key references equipment(eq_code),
primary key(course_id,eq_code),
)

create table instructor_lang(
ins_id int foreign key references instructors(ins_id),
lang varchar(30),
primary key(ins_id,lang),
)

create table mentor(
customer_id int foreign key references customers(customer_id),
ins_id int foreign key references instructors(ins_id),
primary key(customer_id),
)

create table cust_equi(
customer_id int foreign key references customers(customer_id),
eq_code varchar(20) foreign key references equipment(eq_code),
hours int,
price int,
primary key(customer_id,eq_code),
);
