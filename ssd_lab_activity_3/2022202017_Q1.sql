SHOW DATABASES;
USE COMPANY;
SHOW TABLES;
SELECT * FROM PROJECT JOIN WORKS_ON ON Pnumber=Pno WHERE Hours < 40;
SELECT DISTINCT * FROM DEPARTMENT AS t2 JOIN (SELECT * FROM PROJECT JOIN WORKS_ON ON Pnumber=Pno WHERE Hours < 40) AS t3 ON t2.Dnumber=t3.Dnum;
SELECT DISTINCT Fname,Minit,Lname,Ssn,Dnumber,Dname FROM EMPLOYEE AS t1 JOIN (SELECT DISTINCT * FROM DEPARTMENT AS t2 JOIN (SELECT * FROM PROJECT JOIN WORKS_ON ON Pnumber=Pno WHERE Hours < 40) AS t3 ON t2.Dnumber=t3.Dnum) AS t4 WHERE t1.Ssn=t4.Mgr_ssn AND t1.Dno=t4.Dnumber;

