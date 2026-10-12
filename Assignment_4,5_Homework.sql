-----Assignment 4,5--------------------- 



      create table employees_dual(
       employee_id number(3)primary key,
        full_name varchar(50),
         salary number(10,2),
         hire_date date );
    

      select * from  employees_dual

      insert into employees_dual values (100,'S.King',24000,to_date('06/17/2003','MM/DD/YYYY'));
      insert into employees_dual values (116,'S.Baida',2900,to_date('12/24/2005','MM/DD/YYYY'));
      insert into employees_dual values (117,'S.Tobias',2800,to_date('7/24/2005','MM/DD/YYYY'));
      insert into employees_dual values (123,'S.Vollman',6500,to_date('10/10/2005','MM/DD/YYYY'));
      insert into employees_dual values (128,'S.Markle',2200,to_date('03/08/2008','MM/DD/YYYY'));
      insert into employees_dual values (138,'S.Stiles',3200,to_date('10/26/2005','MM/DD/YYYY'));
      insert into employees_dual values (161,'S.Sewll',7000,to_date('11/03/2006','MM/DD/YYYY'));




 -----Q1: Write a query to display the Full name only those employees whose first name start with ‘S’ character.
 
 
 
         SELECT employee_id,(substr(first_name,1,1))||'.'||last_name Full_Name,salary,hire_date
         FROM employees_dual
           WHERE first_name like 'S%'
   
 
----Q2. Find the highest, lowest, sum, and average salary of all employees. Label the columns Maximum
-----,Minimum, Sum, and Average, respectively. Round your results to the nearest whole number. 

  
     SELECT round(max(salary)) highest,
            round(min(salary)) lowest,
            round(sum(salary)) sum,
              round(avg(salary)) avg
                 FROM employees_dual; 
                 
                 
------Q3. Display following output .
---Employee Details
--------------------------------------------------------------------------------------
-----King earns $24,000.00 monthly but wants $72,000.00.
-----Kochhar earns $20,000.00 monthly but wants $60,000.00.
----De Haan earns $17,000.00 monthly but wants $51,000.00.
-----Hunold earns $9,000.00 monthly but wants $27,000.00.
----Ernst earns $6,000.00 monthly but wants $18,000.00.
-----Austin earns $4,800.00 monthly but wants $14,400.00.  

         SELECT last_name||' '||'earns'||to_char(salary,'$99999.00')||' '||'but wants'||' '||(to_char(salary*3,'$99999.00'))
           FROM employees_dual;

-----Q4. Determine the number of managers without listing them. Label the column  Number of Managers Hint: Use the MANAGER_ID column to determine the number of managers. 

          SELECT count(manager_id) number_of_managers
            FROM employees_dual;


-----Q5. Find the difference between the highest and lowest salaries. Label the column DIFFERENCE


         SELECT max(salary)-min(salary) difference
                 FROM employees_dual;
                 
                 
----Q6. Display how many employees joined in each month
----Hint: Grouping by month and count the employees .use TO_CHAR functions also

             SELECT to_char(hire_date,'Month')month,count(employee_id)
             FROM employees_dual
              group by to_char(hire_date,'Month')
              order by month;

------Q7. Display employee id , full name of employees and their hire date only those employees that has greater than 10 year experience in company.

         SELECT employee_id,first_name||' '||last_name Full_name,hire_date
              FROM employees_dual
             WHERE (to_char(hire_date)<sysdate-365*10);

-----Q8. Write a query to multipley  salary to commission and calculate the average salary of employees.
---Hint: Commission column contain null values

---Q9.Write a query to display department_id and number of manager under the particular department exclude the null department.
---Hint: Grouping on department id
   

       SELECT department_id,count(manager_id)
           FROM departments
          WHERE department_id is not null
              group by department_id;

----Q10.Display job title and number of employees working those job and number of manager they perform job.


       SELECT count(employee_id),count(manager_id),j.job_title
        FROM employees e,jobs j
              WHERE e.job_id=j.job_id and manager_id is not null
              group by j.job_title;



--=Q11. Display employee full name and pad both side asterisk sing 10 time . Example 

       

---Q12. Display following output. (Hint: Use Months_between Function)

        SELECT employee_id,last_name,hire_date,round(months_between(sysdate,hire_date)/7) weeks,
          round(months_between(sysdate,hire_date)) months,
          round(months_between(sysdate,hire_date)/12) years
             FROM employees;

              

-----Assignment---------- 

   

