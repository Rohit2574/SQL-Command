create database girraj
use girraj


create table employee
(
id int primary key identity,
Name varchar(20),
City varchar(10),
Age int,
Salary int
)

Select * from employee

insert into employee(name,City,Age,Salary)values('Ankit','Bijnor',25,20000)
update  employee set Name='Kajal' where id=6
select name,city,age from employee
delete from  employee where id=1
alter table employee drop column age
Alter table Employee add Gender varchar (20)

-------------------------------------------------------------------
Create Table Manager
(
Id int primary key identity,
Name varchar (20),
Dept varchar (10)
)
select * From Manager
insert into Manager(Name,Dept) values('Asheesh Barua','IT')
delete from Manager where dept='it' 
truncate table Manager
drop table Manager
----------------------------------------------------
select gender as Gender,count(Gender) as Total from employee group by gender

 select getdate()
select * from sys.tables

 Select * from employee where Name ='rohit' or City='Etah'
 select Name,Gender from employee
select Name Id from employee where Id>3
alter table employee drop column salary
update employee set Mobile='7500363273' where id =3
alter table employee Add Mobile varchar(20)
select Name,City From employee
select * From employee
------------------------------------------------------------------------
Create Table Employees1
(Id int primary key identity,EmpName varchar(20),Salary int,Address varchar(20))
select * from Employees1
insert into Employees1(EmpName,Salary,Address) values('Rakesh',200000,'Noida'),
('Ramesh',300000,'Gaziabad'),
('Kajal',350000,'Delhi'),
('Rahul',400000,'Bijnor')

Create table Company1
(Id int primary key identity,TLName varchar(20),Salary int,Address varchar(20),TlId varchar(20))
select * from Company1
sp_rename 'Company1.TlId','TLId','column'
insert into Company1(TLName,Salary,Address,TLId) values('Virender Kumar',600000,'Bihar','2'),
('Rahul Raj',700000,'Etah','4'),
('Ruhi Megha',650000,'Faridabad','1'),
('Sunil Bansal',800000,'Agra','3')
select * From Employees1
select * From Company1
select * From Employees1 inner Join Company1 on Employees1.Id=Company1.TLId
select * From Employees1 left Join Company1 on Employees1.Id=Company1.TLId
select * From Company1 right Join Employees1 on Company1.TLId=Employees1.Id order by EmpName asc;
select Max(Salary)as HighestSalary From Company1
select count(Salary)as CountSalary From Company1
select avg(Salary)as AVGSalary From Employees1
select TLName,Salary from Company1
create proc getsalary 
as 
begin
select salary from company1
end
getsalary
create proc getdata 
as 
begin
select * from company1
end
getdata
select * From Company1
select * from Company1 where TLName Like 'R%';
select * from Company1 where Address Like '[AFB]%';
select * from Company1 where TLName='Rahul Raj' or Address='Agra';















