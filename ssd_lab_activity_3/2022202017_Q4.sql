SHOW DATABASES;
USE COMPANY;
SHOW TABLES;
SELECT DISTINCT DEPT_LOCATIONS.Dnumber, Dname, count(*) FROM DEPT_LOCATIONS JOIN (SELECT DISTINCT * FROM DEPARTMENT JOIN DEPENDENT ON Mgr_ssn=Essn WHERE Sex='F') AS Dnum ON DEPT_LOCATIONS.Dnumber=Dnum.Dnumber GROUP BY DEPT_LOCATIONS.Dnumber;
