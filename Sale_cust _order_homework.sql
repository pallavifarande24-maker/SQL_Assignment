-----Sale_cust_order---- 



create table Salespeople(
Snum number Primary key,
Sname varchar(20) ,
city varchar(10),
Comm number); 

select * from Salespeople 


insert into Salespeople values (1001, 'peel','Londan', .12)
insert into Salespeople values (1002, 'Serres','San Jose',.13)
insert into Salespeople values (1004,'Monika','London',.11)
insert into Salespeople values (1007,'Rifkin','Barcelona',.15)
insert into Salespeople values (1003,'Axelrod','New York',.10)
insert into Salespeople values (1005,'France','London',.26)

delete  from salespeople where Snum =1001 ;commit;  

 Create table Customers(
 Cnum number primary key,
 Cname varchar2(20),
 City varchar2 (10),
 Rating number ,
 Snum number , 
  Constraint fk_salesperson foreign key (Snum) references  Salespeople (Snum)
 );


  select * from Customers




