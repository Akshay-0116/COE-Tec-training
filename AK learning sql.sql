create database student;
create table studentinfo (
student_ID int,
student_name varchar(500),
student_percentage int not null,
student_address varchar(200),
student_number int unique,
student_dob date,
);
insert into studentinfo (student_ID,student_name,student_percentage,student_address,student_number,student_dob)values(1,'akshay',88,'5/75 kovil medu',5864886,'24-jan-2002')
insert into studentinfo (student_ID,student_name,student_percentage,student_address,student_number,student_dob)values(1,'praka',80,'5/76 kovil medu',5864828,'28-may-2002')
insert into studentinfo (student_ID,student_name,student_percentage,student_address,student_number,student_dob)values(3,'dahrani',80,'5/77 kovil medu',5554886,'24-Dec-2001')
insert into studentinfo (student_ID,student_name,student_percentage,student_address,student_number,student_dob)values(4,'dharani',77,'5/78 kovil medu',5554887,'22-mar-2005')

select*from studentinfo

truncate table studentinfo;

update studentinfo set student_ID=2 where student_name ='praka';
update studentinfo set student_percentage=81 where student_name ='praka';
update studentinfo set student_percentage=70 where student_name ='dahrani';
update studentinfo set student_name='dharani' where student_id=3;

select student_id,student_dob from studentinfo


select*from studentinfo where student_id=2 -- shows 2nd id's row

select*from studentinfo where student_id<>1 ----shows rows except 1st id rows (or)

select*from studentinfo where student_id!=1 --shows rows except 1st id rows

select*from studentinfo where student_name in('akshay','praka') ---- shows 2 rows at same time

select*from studentinfo where student_name not in('akshay','praka') ---- shows the other names which not mentioned on it

select*from studentinfo where student_percentage >80

select*from studentinfo where student_percentage>=80

select*from studentinfo where student_percentage between 70 and 80 ---- shows minimum and max % values

select distinct student_name from studentinfo ----don't show the repeated names

select count(student_id) from studentinfo 


SELECT student_name, COUNT(*)
FROM studentinfo
GROUP BY student_name
HAVING COUNT(*) > 1; ------ which shows the repeated name and how many times repeated



select*from studentinfo where student_name like'A%' ----- shows the name that start with a

select*from studentinfo where student_name like'%i' ----- shows the name that ends with i

select*from studentinfo where student_number like'%55%' ------- shows the number which has 55 in it

select*from studentinfo where student_number not like'%55%' ----- shows the number other than 55

select*from studentinfo where student_name like '[ap][kr]%' ----- shows the name start with a or o and the second letter be k or r.

select*from studentinfo where student_name like '[ap][^r]%' -------  shows the name start with a or o and the second letter should not be r.

delete from studentinfo where student_id = 3 ----- delete the row of which contain id '3'

delete from studentinfo --- delete entire table

drop table studentinfo

update studentinfo set student_percentage = student_percentage*5/100+student_percentage  -----increase the students percentage as 5

alter table studentinfo add constraint UQ_studentinfo_STUDENT_ID UNIQUE(STUdent_id) --- or we can directly give on the table 

alter table studentinfo drop constraint UQ_studentinfo_STUDENT_ID ----- use to drop the above mentioned constraint

alter table studentinfo add constraint pk_studentinfo_student_ID primary key (student_id,student_number) ----- pk_studentinfo_student_ID it is a primary key name we can give any name ---- or we can directly give on the tables column --- we can't give 2 primary keys on the column but we can give 2 on coding..


select*from studentinfo1 where student_dob is null ------is used to show that which columns have mentioned as null -----and if you mention not null it will show other than null values

select isnull (student_dob,'no dob') from studentinfo1 ------Which will enter the values as no dob where the null values mentioned

select student_name,student_id,coalesce (student_number,student_dob,student_percentage,'---') as infromation from studentinfo1 ----------if we have an null values on the mentioned column it will check the other column which is straight to it and takes that vaues for which has null value.

select student_name,student_id,student_number case student_remarks when 'not good' then 'check your msitakes' when 'poor' then 'try to improve' else 'meet me' end as student_remarks_info from studentinfo1 -------- which is used to make an change in the data

select student_id,student_name,student_number from studentinfo1 
union
select student_id,student_name,student_number from studentinfo -------which will union both values of the table and shows it--- if there is an repeated values on the both table it won't repeat it it will display only ones 

select student_id,student_name,student_number from studentinfo1 
union all
select student_id,student_name,student_number from studentinfo -------it will display the repeated values also 


select*from studentinfo,studentinfo1 --------------- which will multiply and join the columns 
------------------------------or--------
select*from studentinfo cross join studentinfo1 --- which will multiply and join the columns 

------------------or---- we can mention the column 

select student_id,student_name,student_number from studentinfo cross join studentinfo1 -------- it will multiply both the tables and show the value

select studentinfo.student_id,studentinfo.student_name,studentinfo.student_number from studentinfo inner join studentinfo1 on studentinfo1.student_id=studentinfo.student_id ------ it whill show the matched rows within the given column

outer join ---- left /right/full outer join

--self join


select*from studentinfo1
select*from studentinfo

-------------------------------------------------------------------------------------------------------------------------------------------------
----with identity and default and check --- identity which gives new values by its self continously for the column gives on student_id
create database student1;

create table studentinfo1(
student_ID int identity,
student_name varchar(500),
student_percentage int not null,
student_address varchar(200),
student_number int,
student_dob date,
student_class int default 8,
student_remarks varchar(8),
);

insert into studentinfo1 (student_name,student_percentage,student_address,student_number,student_dob,student_class)values('akshay',88,'5/75 kovil medu',5864886,'24-jan-2002',10)
insert into studentinfo1 (student_name,student_percentage,student_address,student_number,student_dob,student_class)values('praka',80,'5/76 kovil medu',5864828,'28-may-2002',9)
insert into studentinfo1 (student_name,student_percentage,student_address,student_number,student_dob)values('dahrani',80,'5/77 kovil medu',5554886,'24-Dec-2001')

select*from studentinfo1

alter table studentinfo1 add constraint DF_studentinfo1_student_remarks default 'good' for student_remarks
alter table studentinfo1 add constraint ck_studentinfo1_student_percentage check (student_percentage>=85)
alter table studentinfo1 drop constraint ck_studentinfo1_student_percentage

update studentinfo1 set student_percentage= 85 where student_name='dahrani';

drop table studentinfo1;
truncate table studentinfo1;

------manual identity
set identity_insert studentinfo1 on ---- used to change the values which mentiod on identity and which will arrange the order of the id, after we completed the changes we can off it by taking the on and mention it as off

dbcc checkident(studentinfo1,reseed,0) ----- used to re-arrange the id in correct order as continous numbers --- we use it after we change the identit values




----------------------------------------------------------------------------------------------------
create database teacher;
use teacher;
create table teacherinfo
(
teacher_id int primary key,
teacher_name varchar(10),
teacher_department varchar(10),
teacher_number int unique,
);
insert into teacherinfo values(1,'akshay','CSE',326549)
insert into teacherinfo values(2,'ajai','ECE',789456)
insert into teacherinfo values(3,'akil','EEE',123456)
insert into teacherinfo values(4,'ananth','Mech',466213)


create table departmentinfo
(
department_id int constraint FK_departmentinfo_department_id foreign key references teacherinfo(teacher_id),
department_name varchar(10),
department_head varchar(10),
);
insert into departmentinfo values(1,'CSE','kamal')
insert into departmentinfo values(2,'ECE','kayal')
insert into departmentinfo values(3,'EEE','raja')

select*from departmentinfo
select*from teacherinfo


create table departmentinfo
(
department_id int constraint FK_departmentinfo_department_id foreign key references teacherinfo(teacher_id) on delete cascade, -----or no action or set null or set default on the cascade place --------- use to delete the column or its value which is a foreign key
department_name varchar(10),
department_head varchar(10),
);

------------ order by----------
select*from teacherinfo order by teacher_name
select*from teacherinfo order by teacher_name desc
select*from teacherinfo order by teacher_name asc,teacher_id desc --------- it will 1st check the name on that name in asc order it will make the id in asc order -------- if we need the id in desc order we can mention the *desc* near it
select*from teacherinfo where teacher_id>3 order by teacher_name asc,teacher_id



