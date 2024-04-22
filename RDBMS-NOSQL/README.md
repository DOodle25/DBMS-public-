Difference between DBMS and RDBMS
----------------------------------
For example, consider the database which stores employee information. 
In DBMS, all details like empno, ename, job, salary, deptno, dname, location, street, city, state, phone will 
be stored in a single table. 

But in RDBMS, the data model will be designed in such a way that 
like the empno, ename, job, salary and deptno will be stored in emp table and deptno, dname, location will be stored in dept table and location, street, city, state, phone will be stored under locations table. 

Any information to be obtained is done by properly relating the ‘emp’, ‘dept’ 
and ‘locations’ tables.
