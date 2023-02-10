create database Employee_DB1;
use Employee_DB1;
Create table Region
(id int primary key,
name varchar(50)
);

Create table Countries
(id varchar(50) primary key,
name varchar(50),
region_id int,
foreign key(region_id) references region(id)
);

Create table location
(id varchar(50) primary key,
street_address varchar(50),
postal_code varchar(50),
city varchar(50),
state varchar(50),
country_id varchar(50),
foreign key(country_id) references countries(id)
);

Create table department
(id int primary key,
name varchar(50),
location_id varchar(50),
foreign key(location_id) references location(id)
);

Create table employee
(id int primary key,
first_name varchar(50),
last_name varchar(50),
email varchar(50),
phone_number varchar(50),
hire_datet date,
salary int,
date_of_birth date,
department_id int ,
foreign key(department_id) references department(id)
);

Create table manager
(employee_id int,
department_id int,
primary key(employee_id,department_id),
foreign key(employee_id) references employee(id),
foreign key(department_id) references department(id)
);




insert into Region values(1,'Europe'),(2,'Americas'),(3,'Asia'),(4,'Middle east and africa');
insert into Countries values 
('AR','ARgentina',2),('AU','Australia',3),('BE','Belgium',1),('BR','BRAZIL',2),
('CA','Canada',2),('CH','Switzerland',1),('CN','China',3),('DE','Germany',1),
('DK','Denmark',1),('EG','Egpty',4),('FR','France',1),('HK','Hongkong',3),
('IL','Isreal',4),('IN','India',3),('IT','Italy',1),('JP','Japan',3),
('KW','Kuwait',4),('Mx','Mexico',2),('NG','Nigeria',4),('NL','Netherlands',1),
('SG','Singapore',3),('UK','United Kingdom',1),('US','United States of America',2),
('ZM','ZAMBIA',4),('zw','Zimbabwe',4);

ALTER TABLE location
NOCHECK CONSTRAINT "FK_locationcountr_29572725";


insert into location values
(1000, '1297 via cola di rie','989', 'Roma','Roma','IT'),
(1100,'93091 Calle della testa', '10934','Venice','venice','IT'),
(1200,'2017 ShinJUKU-KU','1689','Tokyo','Tokyo prefecture','JP'),
(1300,'9450 Kamya-Cho','6823','Hiroshima','hiroshi','JP'),
(1400,'2014 Jabberwocky RD', '26192', 'South lake','Texas','US'),
(1500,'2011 Interiors BLVD','99236','South san Francisco','California','Us'),
(1600,'2007 Zagora ST','50090','South bruncswick','New Jersey','US'),
(1700,'2004 Charade Rd','98199','Seattle','washington','US'),
(1800,'147 Spadna Ave','MSV 2L7','Toronto','Ontario','CA'),
(1900,'6092-BoXwood ST','YSW 9T2','Whitehorse','Yukon','CA'),
(2000,'40-5-12 Laogianggen','190518','Beijing','Beijing','CN'),
(2100, '1298 VILEPARLE ed','490231','BOMBAY','Maharasthra','IN'),
(2200,'12-98 Victoria Street','2901','Sydney','New South wales','AU'),
(2300,'198 Clementi North','540198','Singapore','Singapore','SG'),
(2400,'B204 Arthur ST','2345','London','LOndon','UK'),
(2500,'Magdalen Center','The Oxford','OX9 9ZB','Oxford','OX'),
(2600,'9702 Chester Road','9629850293','Stretford','Manchester','UK'),
(2700,'Schwanthalerstr, 7301','80925','Munich','Bavaria','DE'),
(2800,'RUA FREI Caneca 1360','01307-002','SAO Paulo','SAO Paulo','BR'),
(2900,'20 RUE DES Corps-Saints','1730','Geneva','Geneve','CH'),
(3000,'MURTENSTRASSE 921','3095','BERN','BE','CH'),
(3100,'PIETER BREUGHELSTRAAT B37','3029SK','UTRECHIT','UTRECHIT','NL'),
(3200,'MARIANO ESCOBEDO 9991','11932','Mexico city','Distrito federal','Europe');



insert into department values 
(1,'Accounts',1000),
(2,'HR',1600),
(3,'Business Development',1800),
(4,'IT Support',2400),
(5,'IT',3200);

Insert into employee values(1,'anu','sharma','anu@gmail.com',9864675634,'2015-08-13',20000,'1994-01-12',5);

Insert into employee values(2,'ananthi','sharma','ananthi@gmail.com',8608491910,'2015-08-03',22000,'1994-03-21',3);

Insert into employee values(3,'amarnath','pillai','amarnath@gmail.com',7894589654,'2004-07-03',38000,'1992-01-12',4);

Insert into employee values(4,'clinton','pritheev','clinton@gmail.com',7708480901,'2015-06-01',23000,'1994-09-05',2);

Insert into employee values(5,'collin','paul','collin@gmail.com',9842524655,'2014-06-02',30500,'1993-12-26',1);

Insert into employee values(
6, 'haritha', 'mohan', 'haritha@gmail.com', '7710589123', '2014-07-22', '41000', '1993-06-12', 4);

Insert into employee values
(7, 'shrihari', 'pillai', 'shrihari@gmail.com', '9842512456', '2015-07-01', '21000', '1994-05-01', 2);

Insert into employee values
(8, 'jeeva', 'annath', 'jeeva@gmail.com', '8608491912', '2013-06-02', '28000', '1991-12-23', 3);

Insert into employee values
(9, 'jimesh', 'sharma', 'jimesh@gmail.com', '9634565231', '2012-05-06', '51000', '1992-10-28', 1);

Insert into employee values
(10, 'giruba', 'dharan', 'giri@gmail.com', '9842524655', '2012-06-02', '24000', '1990-11-22', 2);

Insert into employee values
(11, 'karthiga', 'pillai', 'karthi@gmail.com', '8608491510', '2013-08-04', '32000', '1993-08-26', 4);   
	
insert into employee values(12,'MADHU','SHARMA' ,'MADHU@GMAIL.COM',9865478963,'2014-06-03',34000,'1995-05-01',2);
insert into employee values(13,'MADHAN','KUMAR','MADHAN@GMAIL.COM',8608491810,'2014-06-02',25500,'1993-01-11',3);
insert into employee values(14,'MALINI','KENNEDY','MALINI@GMAIL.COM',9965684384,'2015-06-03',27800,'1994-01-02',2);
insert into employee values(15,'PRAVEEN','SINGH','PRAVEEN@GMAIL.COM',9842578910,'2015-09-02',32800,'1993-08-18',4);
insert into employee values(16,'PRABHA','MURUGAN','PRAGHA@GMAIL.COM',9865478963,'2013-06-03',25000,'1994-05-01',2);
insert into employee values(17,'PRADEEP','SINGH','PRADEEP@GMAIL.COM',8604527865,'2004-10-02',76000,'1981-12-23',3);
insert into  employee values(18,'PERICHI','PILLAI','PERICHI@gmail.com',9842578910,'2015-09-02',31780,'1993-08-28',4);


insert into  employee values(19,'PUNITHA','SHARMA','PUNITHA@gmail.com',9865478963,'2008-06-03',44148,'1984-05-01',2);


insert into  employee values(20,'SIVA','PILLAI','SIVA@gmail.com',9845612458,'2013-06-02',19348,'1991-12-23',3);


insert into  employee values(21,'THANA','RATHINAM','PRAGHA@gmail.com',9865478963,'2013-06-03',14148,'1994-05-01',2);


insert into  employee values(22,'YOGESH','SINGH','PRADEEP@gmail.com',8604527865,'2013-06-02',20348,'1991-12-23',3);


insert into  employee values(23,'VIDYA','SINGH','PERICHI@gmail.com',9842578910,'2014-09-02',21780,'1993-08-16',4);


Insert into manager(department_id,employee_id) values (1,9),(2,19),(2,4),(3,17),(3,8),(4,15),(5,1);

Select * from Countries
Select * from department
Select * from location
Select * from employee
Select * from Region


-- 1.	Write a query to display the id, entire street address and the first word of the street address of all entries in the location table. Give an alias to the first word as 'first_word'. Display the records sorted in ascending order based on first_word.

select id,street_address,SUBSTRING(street_address,1,CHARINDEX(' ',street_address)) as 'first_name' from location order by first_name asc;

-- 2.	Write a query to display the names of all states belonging to the country Canada. Display the records sorted in ascending order based on state name.

select * from Countries;
select state from location where country_id='CA';


-- 9.	Write a query to display the names of all countries belonging to region Europe. Display the records sorted in ascending order based on country name.

select * from Countries;
select * from Region; -- Europe -> id=1
select name from Countries where region_id=1 order by name asc;


-- 10.	Write a query to display the id,entire street address and the last word of the street address of all entries in the location table. Give an alias to the last word as 'last_word'. Display the records sorted in ascending order based on last_word.

select * from location;
select id,street_address,Reverse(SUBSTRING(Reverse(street_address),1,CHARINDEX(' ',street_address))) as 'last_word' from location order by last_word asc;

-- 11.Write a query to display the first name and salary for all employees. Format the salary to be 10 characters long, left-padded with the $ symbol. Display the records sorted in ascending order based on first name.

select * from employee;
select first_name,concat('$$$$$ ',salary) as salary from employee order by first_name asc;



-- 13.	Write a query to display the first name and the last 5 characters of phone numbers of all employees. Display the records sorted in ascending order based on first name. Give an alias to the last 5 characters of phone number as phone_number.

select first_name,SUBSTRING(phone_number,6,10) as 'phone_number' from employee order by first_name asc;




-- 14.	Write a query to display the first name of the managers of HR department. Display the records sorted in ascending order based on manager name. 

select * from department; -- HR -> id -> 2
select * from manager; -- manager Name -> HR -> employee_id -> 4,19
select * from employee;
select first_name from employee where department_id=2 and id in(4,19) order by first_name ;

SELECT employee_id, COUNT(*)
FROM department_id
GROUP BY employee_id
HAVING COUNT(*) > 1;

----display number of employees in IT dept

Select * from manager;

Select department_id, count(employee_id) from manager  group by department_id;


-- 1,3,4,5,6,7,8,10,11,12,13,15 from Average
-- 17 in simple questions

-- Problem # 1:
-- Write a query to display the member id, member name of the members, book code and book title of the books taken by them.

select distinct m.member_id,m.member_name,bd.book_code,book_title from LMS_BOOK_DETAILS as bd join LMS_BOOK_ISSUE as bi on bd.BOOK_CODE=bi.BOOK_CODE join LMS_MEMBERS as m on m.MEMBER_ID=bi.MEMBER_ID;

-- Problem # 3:
-- Write a query to display the member id, member name, fine range and fine amount of the members whose fine amount is less than 100.

select m.member_id,member_name,fd.fine_range,fine_amount from LMS_BOOK_ISSUE as bi join LMS_MEMBERS as m on bi.MEMBER_ID=m.MEMBER_ID join LMS_FINE_DETAILS as fd on fd.FINE_RANGE=bi.FINE_RANGE and fd.FINE_AMOUNT<100;

-- Problem # 4:
-- Write a query to display the book code, book title, publisher, edition, price and year of publication and sort based on year of publication, publisher and edition.

select distinct book_code,book_title,publication,book_edition,year(publish_date) as publish_year,price from LMS_BOOK_DETAILS order by publish_year,PUBLICATION,BOOK_EDITION;


-- Problem # 5:
-- Write a query to display the book code, book title and rack number of the books which are placed in rack 'A1' and sort by book title in ascending order.

select book_code,book_title,rack_num from LMS_BOOK_DETAILS where RACK_NUM='A1' order by BOOK_TITLE;

-- Problem # 6:
-- Write a query to display the member id, member name, due date and date returned of the members who has returned the books after the due date. Hint: Date_return is due date and Date_returned is actual book return date.

select m.member_id,member_name,Date_return as due_date,Date_returned from LMS_MEMBERS as m join LMS_BOOK_ISSUE as bi on bi.MEMBER_ID=m.MEMBER_ID where DATE_RETURNED>DATE_RETURN;

-- Problem # 7:
-- Write a query to display the member id, member name and date of registration who have not taken any book.

select * from LMS_MEMBERS;
select * from LMS_BOOK_ISSUE;
select  member_id,member_name,date_register from LMS_MEMBERS
where MEMBER_ID not in(select MEMBER_ID from LMS_BOOK_ISSUE);


-- Problem # 8:
-- Write a Query to display the member id and member name of the members who has not paid any fine in the year 2012.
select member_id,member_name from LMS_MEMBERS where MEMBER_ID in (select MEMBER_ID from LMS_BOOK_ISSUE where year(DATE_RETURNED)=2012 and FINE_RANGE in(select FINE_RANGE from LMS_FINE_DETAILS where FINE_AMOUNT=0 ));



-- Problem # 10:
-- Write a query to list the book title and supplier id for the books authored by “Herbert Schildt" and the book edition is 5 and supplied by supplier ‘S01’.

select book_title,supplier_id from LMS_BOOK_DETAILS where AUTHOR='Herbert Schildt' and BOOK_EDITION=5 and SUPPLIER_ID='S01';


-- Problem # 11:
-- Write a query to display the rack number and the number of books in each rack with alias name “NOOFBOOKS” and sort by rack number in ascending order.

select rack_num,COUNT(book_code) as NOOFBOOKS from LMS_BOOK_DETAILS group by RACK_NUM;

-- Problem # 12:
-- Write a query to display book issue number, member name, date or registration, date of expiry, book title, category author, price, date of issue, date of return, actual returned date, issue status, fine amount.

select distinct book_issue_no,member_name,date_register,date_expire,book_title,category,author,price,date_issue,date_return,date_returned,fine_amount from LMS_BOOK_DETAILS as bd join LMS_BOOK_ISSUE as bi on bd.BOOK_CODE=bi.BOOK_CODE join LMS_MEMBERS as m on m.MEMBER_ID=bi.MEMBER_ID join LMS_FINE_DETAILS as fi on bi.FINE_RANGE=fi.FINE_RANGE;

-- Problem # 13:
-- Write a query to display the book code, title, publish date of the books which is been published in the month of December.
select book_code,book_title,publish_date from LMS_BOOK_DETAILS where MONTH(PUBLISH_DATE)=12 ; 


-- Problem # 14:
-- Write a query to display the book code, book title ,supplier name and price of the book witch takes maximum price based on each supplier.

select distinct book_code,book_title,sd.supplier_name,max(price) as maxPrice from LMS_BOOK_DETAILS as bd join LMS_SUPPLIERS_DETAILS as sd on bd.SUPPLIER_ID=sd.SUPPLIER_ID group by book_code,book_title,sd.SUPPLIER_NAME; 


-- simple Questions
-- Problem#17:
-- Write a query to display the member id, member name, city and member status of members with the total fine paid by them with alias name “Fine”.

select m.member_id,member_name,city,membership_status,fine_amount as Fine from LMS_MEMBERS as m join LMS_BOOK_ISSUE as bi on m.MEMBER_ID=bi.MEMBER_ID join LMS_FINE_DETAILS as fd on bi.FINE_RANGE=fd.FINE_RANGe;
