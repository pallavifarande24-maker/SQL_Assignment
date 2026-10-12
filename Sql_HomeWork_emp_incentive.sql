------------Employee and incentive Homework-----------------------

----QUE 1 ---CREATE table syntax for emp_table -----
create table Employee(
emp_id number,
First_name varchar(20),
Last_name varchar(20),
Salary number,
Joining_Date date ,
Department varchar(20)
); 
-----------------------------------------
select * from Employee 
----------------------------------- 

------create table syntax for Incentives_table------- 
create table Incentives(
Employee_ref_id number,
Incentive_date date, 
Incentive_amount  number
);
--------------------------------------------
select * from Incentives
--------------------------------------------------


--################### Que 2) insert data into employee_table######################

insert into Employee values(1, 'John','Abraham', 1000000,'01-JAN-13', 'Banking')
insert into Employee values(2, 'Michael', 'Clarke', 800000, '01-JAN-13','Insurance')
insert into Employee values(3,'Roy','Thomas', 700000,'01-FEB-13','Banking');
insert into Employee values (4,'Tom','Jose',600000,'01-FEB-13','Insurance');
insert into Employee values (5,'Jerry','Pinto',650000,'01-FEB-13','Insurance');
insert into Employee values (6,'Philip', 'Mathew', 750000,'01-FEB-13','Services'); 

----------------------------------------------------------------------------------------
----insert data into Incentive_table------------------ 

insert into Incentives values (1,'01-Feb-13',5000);
insert into Incentives values (2,'01-Feb-13',3000);
insert into Incentives values (3,'01-Feb-13',4000);
insert into Incentives values (1,'01-Jan-13',4500);
insert into Incentives values (2,'01-Jan-13',3500);
----------------------------------------------------------------------------
--------------------Que 3) get all employee_details################################### 

                select * from Employee 
                 select Emp_id,First_name,Last_name, salary,Joining_date,department from Employee ---when column name is known 
 
 -----------Que 4) Get first name and last name from Employee table ###############
 
              nnselect First_name,Last_name from Employee 
 
 ------------------Que 5) get first name from employee table using alis name "Employee Name"#########
  
                     select (First_name) as Employee_Name from Employee 
 
------------------Que 6) Get first name from employee table in upper case#############
 
                  select upper(First_name )from Employee  
  
------------------ QUe 7) select first 3 characters of First_name from Employee#############
 
                        select  substr(First_name,1,3) from employee  
  
------------------ Que 8) get position of 'o' in name of john from employee table ############### 
  
                         select instr('John', 'o') from employee 
  
-----------------Que 9) get first_name from emp table after removing white sapce from right side ####################### 
  
                 select Rtrim(First_name) as First_name from employee
  
----------------------Que 10) get first name from employee table after repplacing 'o' with '$'#################### 
  
                   select replace(first_name,'o','$') from employee  
  
----------------------que 11) get first name and last name as single column  from emp table seperated by a'_'####### 
  
                     select first_name || '_' || last_name from employee  
  
------------------- Que 12) get first_name,Joingyear ,joining month and joining date from employee table 
  
                         select first_name,joining_date from employee  
  
------------------ que 13) get all emp details from emp table order by first name  asending 
  
                    select * from employee order by first_name 
    
---------------que 14)	Get all employee details from the employee table order by First_Name Ascending and Salary Descending?########
   
                    select * from employee order by first_name asc, salary desc  
  
  
  
----------------que) 15) Get employee details from employee table whose employee name is “John”##### 
  
     
                 select * from employee where First_name ='John'

--------------- Que 16) get employee details from employee table whose employee name are “John” and “Roy”

                  select * from employee where First_name in ('John','Roy') 
 
 
 ----------------Que 17)Get employee details from employee table whose employee name are not “John” and “Roy


                select * from employee where first_name not in ('John','Roy')

----------------- Que 18)get employee details from employee table whose first name starts with 'J'.

                  select * from employee where first_name like 'J%' 
  
-------------- Que 19) get employee details from employee table whose first name contains 'o'.

                  select * from Employee where first_name like '%o%' 
 

-------------Que 20) Get employee details from employee table whose first name ends with 'n' and name contains 4 letters. 
   
                 select * from employee where first_name like '%n' 
   
   
-------------Que 21) Get employee details from employee table whose first name ends with 'n' and name contains 4 letters.

                select * from employee where first_name like '____n'

---------- Que 22) Get employee details from employee table whose first name starts with 'J' and name contains 4 letters. 
  
             select * from employee where first_name like 'J____' 
 
----------- 23) 	Get employee details from employee table who’s Salary greater than 600000. 


             select * from Employee where salary > 600000




----------que)24 Get employee details from employee table whose joining year is “2013”. 


            select * from employee where joining_date between 2013-01-01 and 2013-12-31 


---------Que 25) Get employee details from employee table whose joining month is “January 

            select * from employee where Month(joining_date)='Jan' 

--------Que 26)Get employee details from employee table who joined before January 1st 2013. 

             select * from employee where joining_date < 2013-01- 01 


    



---------Que31) Get department, total salary with respect to a department from employee table.

         select department,sum(salary) as total_salary  from employee group by department 



------- 32)	Get department, total salary with respect to a department from employee table order by total salary descending.


         select department, sum(salary) as total_salary from employee group by department order by sum(salary) desc 

--------Que)33) Get department, no of employees in a department, total salary with respect to a department from employee table order by total salary descending.
  
          select department,count(*), sum(salary) as total_salary from employee group by department order by sum(salary) desc


-------Que 34) Get department wise average salary from employee table order by salary ascending? 

       select department,avg(salary) as average_salary  from employee group by department order by average_salary 

------Que 35) Get department wise maximum salary from employee table order by salary ascending?

        select department,max(salary) as Max_salary from employee group by department order by Max_salary

-----Que 36) 	Get department wise minimum salary from employee table order by salary ascending?

         select department ,min(salary) as Min_salary from employee group by department  order by Min_salary 

-------Que 37) Select no of employees joined with respect to year and month from employee table.

           select year(joining_date) as join_year ,month(joining_date)as join_month count(*) as no_of_emp from employee group by join_year,join_month 




--------38.	Select department,total salary with respect to a department from employee table where total salary greater than 800000 order by Total_Salary descending


       SELECT Department, SUM(Salary) AS Total_Salary FROM Employee 
       GROUP BY Department 
           HAVING SUM(Salary) > 800000 
          ORDER BY Total_Salary DESC; 
          
          
-------- 39.	Select employee details from employee table if data in incentive table?


           SELECT * FROM Employee 
                 WHERE Emp_id IN (SELECT Employee_ref_id FROM Incentives);
                 
                 
 ---------40.	Select 20 % of salary from John, 10% of Salary for Roy and for other 15 % of salary from employee table
 
 
            SELECT First_name, Salary,
              CASE 
                 WHEN First_name = 'John' THEN Salary * 0.20
              WHEN First_name = 'Roy' THEN Salary * 0.10
               ELSE Salary * 0.15
                 END AS Calculated_Salary
                FROM Employee; 
                
                
                
------41.	Select Banking as 'Bank Dept', Insurance as 'Insurance Dept' and Services as    'Services Dept' from employee table.


       
       SELECT First_name, DECODE(Department, 'Banking', 'Bank Dept', 'Insurance', 'Insurance Dept', 'Services', 'Services Dept') AS Department_Alias
          FROM Employee;
 
------42.	Delete employee data from employee table who got incentives in incentive table

       

            DELETE FROM Employee 
                    WHERE Emp_id IN (SELECT Employee_ref_id FROM Incentives);

 
-----43.	Select first_name, incentive amount from employee and incentives table for those employees who have incentives.

  
              SELECT E.First_name, I.Incentive_amount FROM Employee E 
            INNER JOIN Incentives I ON E.Emp_id = I.Employee_ref_id; 
            
            
            
------ 44.	Select first_name, incentive amount from employee and incentives table for those employees who have incentives and incentive amount greater than 3000 

        
       SELECT E.First_name, I.Incentive_amount FROM Employee E 
           JOIN Incentives I ON E.Emp_id = I.Employee_ref_id 
            WHERE I.Incentive_amount > 3000;     
            
-----45.	Select first_name, incentive amount from employee and incentives table for all employees even if they didn't get incentives

         SELECT E.First_name, I.Incentive_amount  FROM Employee E 
            LEFT JOIN Incentives I ON E.Emp_id = I.Employee_ref_id;
             
            
-----46.	Select first_name, incentive amount from employee and incentives table for all employees even if they didn't get incentives and set incentive amount as 0 for those employees who didn't get incentives.


                SELECT E.First_name, NVL(I.Incentive_amount, 0) AS Incentive_Amount
                FROM Employee E 
                      LEFT JOIN Incentives I ON E.Emp_id = I.Employee_ref_id;
                
                
-----47.	Select first_name, incentive amount from employee and incentives table for all employees who got incentives using left join

              SELECT E.First_name, I.Incentive_amount FROM Employee E 
               LEFT JOIN Incentives I ON E.Emp_id = I.Employee_ref_id 
                 WHERE I.Incentive_amount IS NOT NULL;                    
                   
                
---- 48.	Select max incentive with respect to employee from employee and incentives table using sub query.



          SELECT First_name, 
          (SELECT MAX(Incentive_amount) FROM Incentives WHERE Employee_ref_id = Emp_id) AS Max_Incentive
             FROM Employee;
