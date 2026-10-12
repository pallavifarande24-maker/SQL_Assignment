
------Garage_data_homework-------

 

------create a customer_table 
        
       
    CREATE TABLE Customer_Table (
    CID NUMBER(10) PRIMARY KEY,
    CNAME VARCHAR2(50),
    CADD VARCHAR2(50),
    C_CONTACT NUMBER(15),
    C_CREDITDAYS NUMBER(5),
    CJ_DATE DATE,
    SEX VARCHAR2(10)); 
    
    
----insert a data into customer_table
     
     INSERT INTO Customer_Table VALUES (1001, 'Cyona blake', 'NEW YORK', 1235684, 20, '20-JAN-11', 'FEMALE');
     INSERT INTO Customer_Table VALUES (1002, 'JOHN SMITH', 'NEW JERSI', 1341684, 20, '21-FEB-11', 'MALE');
     INSERT INTO Customer_Table VALUES (1003, 'JORDAN WOOD', 'PRAG', 1805184, 20, '22-MAR-11', 'MALE');
     INSERT INTO Customer_Table VALUES (1004, 'CHRISTNA', 'MANHATTON', 1125684, 31, '23-APR-13', 'FEMALE');
     INSERT INTO Customer_Table VALUES (1005, 'TOM HILL', 'LONDON', 1239284, 10, '25-JUN-15', 'MALE');
     INSERT INTO Customer_Table VALUES (1006, 'KAMILA JOSEF', 'PARISE', 124568, 9, '28-JUL-11', 'FEMALE');
     INSERT INTO Customer_Table VALUES (1007, 'ANDRU SYMON', 'TAXES', 125654, 15, '01-APR-16', 'MALE');
     INSERT INTO Customer_Table VALUES (1008, 'SANJU SAMSUNG', 'NEW YORK', 12346341, 4, '20-JAN-16', 'MALE');
     COMMIT; 
     
     
   select * from customer_Table 
   
-----vendors table  

    CREATE TABLE VENDOR (
    VID INT PRIMARY KEY,
    VNAME VARCHAR(100),
    VADD VARCHAR(100),
    VCONTACT VARCHAR(15),
    VCREDITDAYS INT,
    VJ_DATE DATE
);   

-----insert data into vendor table

    insert into vendor values(2001, 'KIRAN PATIL', 'PUNE', '20535535', 20, '20-Jan-10');
    insert into vendor values(2002, 'PRAKASH JAIN', 'MUMBAI', '2063564', 10, '05-Nov-11');
    insert into vendor values(2003, 'SWAPNIL THETE', 'NASHIK', '25355352', 15, '18-Mar-10');
    insert into vendor values(2004, 'AMOL SHENDE', 'SATARA', '23674776', 18, '07-Apr-15');
    insert into vendor values(2005, 'KARAN SINTRE', 'BULDHANA', '256756', 30, '22-Apr-09');
    insert into vendor values(2006, 'RAM KULKARNI', 'OSMANABAD', '20367454', 21, '09-Jul-10');

  select * from vendor    
  
  
-----create the Employee table

    CREATE TABLE Employee_table (
    EID INT PRIMARY KEY,
    ENAME VARCHAR(50),
    EJOB VARCHAR(30),
    EADD VARCHAR(50),
    ECONTACT VARCHAR(15),
    ESAL INT,
    EDOJ DATE,
    EDOL DATE
);    

-------insert the data into Employee_table 

        INSERT INTO Employee_table VALUES (3001, 'STEVEN KING', 'PAINTER', 'NEW YORK', 10367454, 1200, TO_DATE('09-Jul-10', 'DD-MON-YY'), NULL);

        INSERT INTO Employee_table VALUES (3002, 'DAVID AUSTIN', 'FITTER', 'MAN HATON', 10367434, 1100, TO_DATE('19-Aug-10', 'DD-MON-YY'), NULL);

        INSERT INTO Employee_table VALUES (3003, 'BRUCE ERNST', 'MECHANIC', 'NEW JERCY', 10367264, 2200, TO_DATE('08-Sep-10', 'DD-MON-YY'), NULL);

        INSERT INTO Employee_table VALUES (3004, 'LUIS POPP', 'MECHANIC', 'NEW JERCY', 10367264, 1700, TO_DATE('19-Oct-09', 'DD-MON-YY'), TO_DATE('06-Sep-10', 'DD-MON-YY'));

       INSERT INTO Employee_table VALUES (3005, 'SHERI GOMES', 'FITTER', 'PARIS', 10327264, 1000, TO_DATE('19-Oct-09', 'DD-MON-YY'), TO_DATE('01-Aug-10', 'DD-MON-YY'));

        INSERT into Employee_table VALUES (3000, 'JAMES PHILLIP', 'FITTER', 'PARIS', 10322264, NULL, TO_DATE('01-Jan-08', 'DD-MON-YY'), NULL);

         select * from employee_table  


------ create data Sparepart Table-----  


     CREATE TABLE Sparepart_Table (
    SPID INT PRIMARY KEY,
    SPNAME VARCHAR(100),
    SPRATE INT,
    SPUNIT VARCHAR(20)
      );

-----insert data into sparepart table 



   
           insert into Sparepart_table values (4001, 'TWO WHEELER TUBE', 250, 'NOS');
           insert into Sparepart_table values (4002, 'TWO WHEELER ENGINE OIL', 400, 'LTRS');
           insert into Sparepart_table values (4003, 'FOUR WHEELER ENGINE OIL', 5000, 'LTRS');
           insert into Sparepart_table values (4004, 'TWO WHEELER CARBORATOR', 680, 'NOS');
           insert into Sparepart_table values (4005, 'TWO WHEELER CLUTCH WIRE', 129, 'MTRS');
           insert into Sparepart_table values (4006, 'TWO WHEELER TAIL LIGHT', 100, 'NOS');
           insert into Sparepart_table values (4007, 'TWO WHEELER INDICATORS', 150, 'NOS');
           insert into Sparepart_table values (4008, 'FOUR WHEELER GASKIT', 1340, 'NOS');
           insert into Sparepart_table values (4009, 'WHITE COLOUR', 340, 'LTRS');
           insert into Sparepart_table values (4010, 'BLACK COLOUR', 240, 'LTRS');
           insert into Sparepart_table values (4011, 'TWO WHEELER SIDE MIRROR', 250, 'NOS');
           insert into Sparepart_table values (4012, 'FOUR WHEELER SIDE MIRROR', 450, 'NOS');
           insert into Sparepart_table values (4013, 'TWO WHEELER SHOCKUP', 1320, 'PAIR');
           insert into Sparepart_table values (4014, 'FOUR WHEELER BUMPER', 6000, 'NOS');
            insert into Sparepart_table values (4015, 'FOUR WHEELER FRONT GLASS', 7000, 'PCS');

     select * from Sparepart_table   
      s
     
 ------- create Purchase Table 
                -------------PK(PID),FK(VID),FK(SPID),FK(eid or RCV_eid)  
                
                
                
      CREATE TABLE Purchase_Table (
    PID NUMBER(10) PRIMARY KEY,
    VID NUMBER(10), 
    foreign key (VID) references vendor(vid)
    SPID NUMBER(10), 
    foreign key (SPID) REFERENCES Sparepart_table(SPID)
    PQTY NUMBER(10),
    SPRATE NUMBER(10, 2),
    SPGST NUMBER(10, 2),
    PDATE DATE,
    TRANCOST NUMBER(10),
    TOTAL NUMBER(10, 2),
    RCV_EID NUMBER(10) 
    FOREIGN KEY (RCV_EID) REFERENCES Employee_table(eid)
    );
  
 
 -------insert data into Purchase_Table 
 
 
          INSERT ALL 
    INTO Purchase_Table VALUES (5001, 2001, 4001, 10, 250, 350, TO_DATE('01-JAN-11', 'DD-MON-YY'), 1300, 4150, 3001)
    INTO Purchase_Table VALUES (5002, 2002, 4002, 4, 400, 288, TO_DATE('02-MAR-11', 'DD-MON-YY'), 100, 1988, 3001)
    INTO Purchase_Table VALUES (5003, 2003, 4004, 8, 680, 761.6, TO_DATE('12-JUN-11', 'DD-MON-YY'), 50, 6251.6, 3003)
    INTO Purchase_Table VALUES (5004, 2004, 4005, 10, 129, 154.8, TO_DATE('22-AUG-11', 'DD-MON-YY'), 125, 1569.8, 3004)
    INTO Purchase_Table VALUES (5005, 2005, 4006, 20, 100, 300, TO_DATE('07-SEP-11', 'DD-MON-YY'), 20, 2320, 3003)
    INTO Purchase_Table VALUES (5006, 2006, 4007, 30, 150, 630, TO_DATE('12-OCT-11', 'DD-MON-YY'), 60, 5190, 3000)
    INTO Purchase_Table VALUES (5007, 2001, 4003, 20, 5000, 14000, TO_DATE('07-SEP-11', 'DD-MON-YY'), 1000, 115000, 3000)
    INTO Purchase_Table VALUES (5008, 2006, 4005, 1, 129, 15.48, TO_DATE('12-OCT-11', 'DD-MON-YY'), 50, 194.48, 3005)
    INTO Purchase_Table VALUES (5009, 2006, 4005, 1, 129, 15.48, TO_DATE('15-OCT-11', 'DD-MON-YY'), 50, 194.48, 3005)
    INTO Purchase_Table VALUES (5010, 2006, 4009, 5, 340, 238, TO_DATE('20-OCT-11', 'DD-MON-YY'), 0, 2938, 3005) 
    
     
      select * from Purchase_Table 
      
------create table SER_DET Table -------PK(SID),FK(cid), FK(EID) ,FK(SPID)

     CREATE TABLE Ser_Det_Table (
    SID NUMBER PRIMARY KEY,
    CID NUMBER, 
    foreign key (cid) references 
    EID NUMBER,
    SPID NUMBER,
    TYP_VEH VARCHAR2(50),
    VEH_NO VARCHAR2(20),
    TYP_SER VARCHAR2(100),
    SER_DATE DATE,
    QTY NUMBER(10,2),
    SP_RATE NUMBER(10,2),
    SP_AMT NUMBER(10,2),
    SP_GST NUMBER(10,2),
    SER_AMT NUMBER(10,2),
    COMM NUMBER(10,2),
    TOTAL NUMBER(10,2)
);
      

------ insert data 

       INSERT ALL
    INTO Ser_Det_Table VALUES (6001, 1001, 3001, 4001, 'TWO WHEELER', 'MH15CA3228', 'TUBE DAMAGED', TO_DATE('02-JAN-11', 'DD-MON-YY'), 1, 250, 250, 35, 50, 0, 335)
    INTO Ser_Det_Table VALUES (6002, 1002, 3002, 4002, 'TWO WHEELER', 'MH-16U5713', 'FULL SERVICING', TO_DATE('04-MAR-11', 'DD-MON-YY'), 1, 400, 400, 52, 300, 50, 752)
    INTO Ser_Det_Table VALUES (6003, 1003, 3004, 4005, 'TWO WHEELER', 'MH12PQ1313', 'CLUCH WIRE', TO_DATE('22-AUG-11', 'DD-MON-YY'), 1, 129, 129, 0, 10, 0, 139)
    INTO Ser_Det_Table VALUES (6004, 1002, 3002, 4002, 'TWO WHEELER', 'MH-16U5713', 'FULL SERVICING', TO_DATE('05-MAY-11', 'DD-MON-YY'), 1, 400, 400, 52, 300, 50, 752)
    INTO Ser_Det_Table VALUES (6005, 1004, 3001, 4009, 'TWO WHEELER', 'MH-14PA335', 'COLOR', TO_DATE('21-OCT-11', 'DD-MON-YY'), 2.5, 340, 850, 119, 500, 150, 1469)
    INTO Ser_Det_Table VALUES (6006, 1006, 3001, 4009, 'TWO WHEELER', 'MH-12WE334', 'COLOR', TO_DATE('01-DEC-11', 'DD-MON-YY'), 2.5, 340, 850, 119, 500, 150, 1469)
    INTO Ser_Det_Table VALUES (6007, 1007, 3001, 4001, 'FOUR WHEELER', 'MH17BB1345', 'TUBE DAMAGED', TO_DATE('01-JAN-12', 'DD-MON-YY'), 1, 250, 250, 35, 150, 0, 435)
SELECT * FROM dual;
COMMIT;  
      
      select * from Ser_Det_Table   
      
      


---------1. List all the customers serviced
           
          SELECT DISTINCT c.CNAME 
          FROM Customer_Table c 
          JOIN Ser_Det_Table s ON c.CID = s.CID;


---------Q.2. Customers who are not serviced. 

           SELECT CNAME FROM Customer_Table
             WHERE CID NOT IN (SELECT CID FROM Ser_Det_Table);

------Q.3 Employees who have not received the commission..
           
       
         SELECT ENAME FROM Employee_table 
        WHERE EID NOT IN (SELECT EID FROM Ser_Det_Table WHERE COMM > 0);


------Q.4 Name the employee who have maximum Commission. 

         SELECT ENAME FROM Employee_table 
         WHERE EID IN (SELECT EID FROM Ser_Det_Table 
         WHERE COMM = (SELECT MAX(COMM) FROM Ser_Det_Table));         
              
      
-----Q.5 Show employee name and minimum commission amount received by an employee. 

        SELECT e.ENAME, MIN(s.COMM) FROM Employee_table e 
      JOIN Ser_Det_Table s ON e.EID = s.EID 
        GROUP BY e.ENAME;     
        
----Q.6 Display the Middle record from any table. 

        SELECT * FROM 
          (SELECT t.*, ROWNUM r FROM Employee_table t)
         WHERE r = (SELECT CEIL(COUNT(*)/2) FROM Employee_table); 
         
         
         
-----Q.7 Display last 4 records of any table. 


    SELECT * FROM 
    (SELECT * FROM Customer_Table ORDER BY CID DESC) 
       WHERE ROWNUM <= 4;
         
-----Q.8 Count the number of records without count function.
  
           SELECT MAX(ROWNUM) FROM Sparepart_table;
  

-----Q.9 Delete duplicate records from "Ser_det" table on cid.
   
        DELETE FROM Ser_Det_Table 
        WHERE ROWID NOT IN (SELECT MIN(ROWID) FROM Ser_Det_Table GROUP BY CID);


-----Q.10 Show the name of Customer who have paid maximum amount.
--------
        SELECT CNAME  FROM Customer_Table 
            WHERE CID = (SELECT CID FROM Ser_Det_Table 
             WHERE TOTAL = (SELECT MAX(TOTAL) FROM Ser_Det_Table)); 
             
             
             
---------Q.11 Display Employees who are not currently working.
     
             SELECT ENAME FROM Employee_table WHERE EDOL IS NOT NULL; 
             
             
             
------Q.12 How many customers serviced their two wheelers. 

          SELECT COUNT(DISTINCT CID) FROM Ser_Det_Table 
            WHERE TYP_VEH = 'TWO WHEELER';
    
---------Q.13 List the Purchased Items used for Customer Service with Unit.


          SELECT DISTINCT sp.SPNAME, sp.SPUNIT FROM Sparepart_table sp 
             JOIN Purchase_Table p ON sp.SPID = p.SPID 
              JOIN Ser_Det_Table s ON sp.SPID = s.SPID;  
              
------Q.14 Customers who have Colored their vehicles. 
       
           
             SELECT DISTINCT c.CNAME FROM Customer_Table c 
               JOIN Ser_Det_Table s ON c.CID = s.CID 
                 WHERE s.TYP_SER = 'COLOR';

------Q.15 Find the annual income of each employee inclusive of Commission.


        SELECT e.ENAME, 
       (NVL(e.ESAL, 0) * 12) + NVL((SELECT SUM(COMM) FROM Ser_Det_Table WHERE EID = e.EID), 0) AS Annual_Income 
         FROM Employee_table e;
           
       
-------- Q.16 Find the annual income of each employee inclusive of Commission.

      SELECT e.ENAME, 
       (NVL(e.ESAL, 0) * 12) + NVL((SELECT SUM(COMM) FROM Ser_Det_Table s WHERE s.EID = e.EID), 0) AS ANNUAL_INCOME
               FROM Employee_table e;  
  

----Q.17 Vendor Names who provides the engine oil. 

       SELECT DISTINCT v.VNAME FROM Vendor v
             JOIN Purchase_Table p ON v.VID = p.VID
               JOIN Sparepart_table sp ON p.SPID = sp.SPID
                   WHERE sp.SPNAME LIKE '%ENGINE OIL%'; 
                   
                   
------Q.18 Total Cost to purchase the Color and name the color purchased.

  
            SELECT sp.SPNAME, SUM(p.TOTAL) AS TOTAL_COST FROM Sparepart_table sp
            JOIN Purchase_Table p ON sp.SPID = p.SPID
            WHERE  sp.SPNAME LIKE '%COLOUR%'   
            GROUP BY sp.SPNAME;
        
-------Q.19 Purchased Items which are not used in "Ser_det". 

            
           SELECT SPNAME FROM Sparepart_table 
                WHERE SPID IN (SELECT SPID FROM Purchase_Table)
                  AND SPID NOT IN (SELECT SPID FROM Ser_Det_Table);
          

--------Q.20 Spare Parts Not Purchased but existing in Sparepart.



           SELECT SPNAME FROM Sparepart_table 
                   WHERE SPID NOT IN (SELECT SPID FROM Purchase_Table);
          
-------Q.21 Calculate the Profit/Loss of the Firm (considering one month salary).
------

       SELECT (SELECT SUM(TOTAL) FROM Ser_Det_Table) - 
       ((SELECT SUM(TOTAL) FROM Purchase_Table) + (SELECT SUM(ESAL) FROM Employee_Table)) AS PROFIT_LOSS
            FROM DUAL;
            
----------Q.22 Specify the names of customers who have serviced their vehicles more than one time.
  
        SELECT c.CNAME FROM Customer_Table c
              JOIN  s ON c.CID = s.CID
               GROUP BY c.CNAME
                  HAVING COUNT(s.SID) > 1;   
                  
                  
------Q.23 List the Items purchased from vendors locationwise.

             
             SELECT v.VADD, sp.SPNAME, v.VNAME FROM Vendor v
              JOIN Purchase_Table p ON v.VID = p.VID
             JOIN Sparepart_table sp ON p.SPID = sp.SPID;

--------Q.24 Display count of two wheeler and four wheeler from ser_details.

  
        SELECT TYP_VEH, COUNT(*) FROM Ser_Det_Table 
             GROUP BY TYP_VEH;


-----Q.25 Display name of customers who paid highest SPGST and for which item.


      SELECT c.CNAME, sp.SPNAME FROM Ser_Det_Table s
           JOIN Customer_Table c ON s.CID = c.CID
            JOIN Sparepart_table sp ON s.SPID = sp.SPID
             WHERE s.SP_GST = (SELECT MAX(SP_GST) FROM Ser_Det_Table);
     


--------Q.26 Display vendors name who have charged highest SPGST rate for which item.

 

                SELECT v.VNAME, sp.SPNAME FROM Purchase_Table p
                JOIN Vendor v ON p.VID = v.VID
                   JOIN Sparepart_table sp ON p.SPID = sp.SPID
                      WHERE p.SPGST = (SELECT MAX(SPGST) FROM Purchase_Table);
   

--------  Q.27 List name of item and employee name who have received item.



              SELECT sp.SPNAME, e.ENAME FROM Purchase_Table  p
              JOIN Sparepart_table sp ON p.SPID = sp.SPID
               JOIN Employee_Table e ON p.RCV_EID = e.EID;  
     

------Q.28 & Q.29 Vehicle Number "MH-14PA335" details.



            SELECT c.CNAME, s.VEH_NO, sp.SPNAME, p.PDATE, v.VNAME, sp.SPUNIT, v.VADD, e.ENAME FROM Ser_Det_Table s
             JOIN Customer_table c ON s.CID = c.CID
              JOIN Sparepart_table  sp ON s.SPID = sp.SPID
                 JOIN Purchase_table p ON sp.SPID = p.SPID
                  JOIN Vendor v ON p.VID = v.VID
                   JOIN Employee_Table e ON s.EID = e.EID
                       WHERE s.VEH_NO = 'MH-14PA335'; 
                       

------Q.30 From whom we have purchased items having maximum cost? 


                 SELECT v.VNAME FROM Vendor v
                 JOIN Purchase_table p ON v.VID = p.VID
                 WHERE p.TOTAL = (SELECT MAX(TOTAL) FROM Purchase_table); 
        

------Q.31 Customer from New York service date.


                SELECT c.CNAME, s.SER_DATE FROM Customer_table c
                     JOIN Ser_Det_Table s ON c.CID = s.CID
                      WHERE c.CADD = 'NEW YORK';
            

-------Q.32 Jobs with more than two employees.


                   SELECT EJOB, COUNT(*) FROM Employee_Table
                      GROUP BY EJOB
                        HAVING COUNT(*) > 2;
                


-------Q.33 Rank employees according to number of services.
------


                   SELECT ENAME, COUNT(s.SID) AS SERVICE_COUNT,
                    RANK() OVER (ORDER BY COUNT(s.SID) DESC) AS RANKING FROM Employee_table e
                      JOIN Ser_Det_Table s ON e.EID = s.EID
                       GROUP BY ENAME;
                       
                       
----------Q.34 Count of service by Painter and Fitter.


                    SELECT e.EJOB, COUNT(s.SID) FROM Employee_Table e
                     JOIN Ser_Det_Table s ON e.EID = s.EID
                      WHERE e.EJOB IN ('PAINTER', 'FITTER')
                          GROUP BY e.EJOB;

------- Q.35 Employee salary Grade. 


                    SELECT ENAME, ESAL,
                    CASE 
                     WHEN ESAL >= 2000 THEN 'A'
                       WHEN ESAL >= 1500 THEN 'B'
                          ELSE 'C'
                    END AS GRADE
                     FROM Employee_table;


--------Q.36 Display the 4th record of emp table.

 
                         SELECT * FROM 
                           (SELECT e.*, ROWNUM r FROM Employee_table e)
                              WHERE r = 4;   
                              
-------Q.37 Provide commission 100 to employees earning no commission.

          UPDATE Ser_Det_Table SET COMM = 100 WHERE COMM = 0 OR COMM IS NULL;   
          
          
          
------- Q.38 Total services for each day in descending order.


                 
          SELECT SER_DATE, COUNT(*) FROM Ser_Det_Table
           GROUP BY SER_DATE
              ORDER BY SER_DATE DESC;
          
-------Q.39 Service details of customers from same city.


           SELECT s.* FROM Ser_Det_Table s
            JOIN Customer_table c ON s.CID = c.CID
                  WHERE c.CADD IN (SELECT CADD FROM Customer_table GROUP BY CADD HAVING COUNT(*) > 1);      
                  
                  
--------- Q.40 Pairs of customers serviced by single employee.

                        
        SELECT s1.CID, s2.CID, s1.EID FROM Ser_Det_Table s1
           JOIN Ser_Det_Table s2 ON s1.EID = s2.EID AND s1.CID < s2.CID;
           
           
           
-------Q.41 Service number followed by customer name.

          
         SELECT s.SID, c.CNAME FROM Ser_Det_Table s
           JOIN Customer_table c ON s.CID = c.CID;
           
           
------Q.42 Rating based on maximum services.


       SELECT ENAME, COUNT(SID),
       CASE 
         WHEN COUNT(SID) >= 3 THEN 'A'
         WHEN COUNT(SID) = 2 THEN 'B'
         ELSE 'C'
       END AS RATING
      FROM Employee_table e
        JOIN Ser_Det_Table s ON e.EID = s.EID
          GROUP BY ENAME;


-------Q.43 Maximum service amount of each customer with details.

        SELECT c.*, (SELECT MAX(TOTAL) FROM Ser_Det_Table s WHERE s.CID = c.CID) AS MAX_AMT
           FROM Customer_table c; 
           
           
           
------Q.44 Customer details with total number of services.



            SELECT c.*, COUNT(s.SID) AS TOTAL_SERVICES FROM Customer_table c
               LEFT JOIN Ser_Det_Table s ON c.CID = s.CID
                GROUP BY c.CID, c.CNAME, c.CADD, c.C_CONTACT, c.C_CREDITDAYS, c.CJ_DATE, c.SEX;
                
-----Q.45 Location with highest spare part purchase cost.


          SELECT v.VADD FROM Vendor v
            JOIN Purchase_table p ON v.VID = p.VID
               WHERE p.TOTAL = (SELECT MAX(TOTAL) FROM Purchase_table);


-----Q.46 Employee details with service where salary is null.


          SELECT e.*, s.* FROM Employee_table e
              JOIN Ser_Det_Table s ON e.EID = s.EID
                        WHERE e.ESAL IS NULL; 
                        
------Q.47 Sum of purchase location wise.


             SELECT v.VADD, SUM(p.TOTAL) FROM Vendor v
               JOIN Purchase_table p ON v.VID = p.VID
              GROUP BY v.VADD;       
              
-----Q.48 Sum of purchase amount in words.------Error yet aahe -------
--------
    
           SELECT VADD, TO_CHAR(TO_DATE(SUM(TOTAL), 'J'), 'Jsp') AS AMT_IN_WORDS FROM Vendor v
            JOIN Purchase_table p ON v.VID = p.VID
            GROUP BY VADD;   
            
------






-------Q.50 Total service amount > largest single service amount.


               SELECT CID, SUM(TOTAL) FROM Ser_Det_table
               GROUP BY CID
              HAVING SUM(TOTAL) > (SELECT MAX(TOTAL) FROM Ser_Det_table); 
             

-------Q.51 Customer name, sparepart name and vehicle type.

             SELECT c.CNAME, sp.SPNAME, s.TYP_VEH FROM Ser_Det_table s
               JOIN Customer_table  c ON s.CID = c.CID
                JOIN Sparepart_table  sp ON s.SPID = sp.SPID; 
                
-------- Q.52 Get spname, ename, cname, quantity, rate, service amount.
  
         
            SELECT sp.SPNAME, e.ENAME, c.CNAME, s.QTY, s.SP_RATE, s.SER_AMT
            FROM Ser_Det_table s
            JOIN Sparepart_table sp ON s.SPID = sp.SPID
             JOIN Employee_table e ON s.EID = e.EID
            JOIN Customer_table c ON s.CID = c.CID;
  
-----Q.53 Owners whose tube damaged.


              SELECT c.CNAME  FROM Customer_table c
                JOIN Ser_Det_table s ON c.CID = s.CID
                WHERE s.TYP_SER = 'TUBE DAMAGED'; 
                
-----Q.54 Details of full service. 


        SELECT * FROM Ser_Det_table WHERE TYP_SER = 'FULL SERVICING';
        
-----Q.55 Employees who have not worked and left. 


          SELECT * FROM Employee_table 
               WHERE EID NOT IN (SELECT EID FROM Ser_Det_table)
               AND EDOL IS NOT NULL;   
               
               
------Q.56 Employee who worked first ever.

        SELECT ENAME FROM Employee_table
            WHERE EID = (SELECT EID FROM Ser_Det_table WHERE SER_DATE = (SELECT MIN(SER_DATE) FROM Ser_Det_table));
            
            
------Q.57 & Q.58 Odd and Even dates.


       -- Odd Dates
           SELECT * FROM Ser_Det_table WHERE MOD(TO_CHAR(SER_DATE, 'DD'), 2) != 0;
           -- Even Dates
               SELECT * FROM Ser_Det_table WHERE MOD(TO_CHAR(SER_DATE, 'DD'), 2) = 0;    
               
----Q.59 Vendors whose material is not yet used. 

                    SELECT VNAME FROM Vendor 
                     WHERE VID IN (SELECT VID FROM Purchase_table 
                       WHERE SPID NOT IN (SELECT SPID FROM Ser_Det_table));  
                       
------  Q.60 Difference between purchase date and used date.



                     SELECT sp.SPNAME, (s.SER_DATE - p.PDATE) AS DAYS_DIFF FROM Ser_Det_table s
                    JOIN Purchase_table p ON s.SPID = p.SPID
                 JOIN Sparepart_table sp ON s.SPID = sp.SPID;                
