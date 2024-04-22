# SQL
- SQL stands for Structured Query Language. 

- It is used for storing and managing data in relational database management system (RDMS).

- It is a standard language for Relational Database System. It enables a user to create, read, update and delete relational databases and tables.

- All the RDBMS like MySQL, Informix, Oracle, MS Access and SQL Server use SQL as their standard database language.
SQL allows users to query the database in a number of ways, using English-like statements.

- Rules:
    SQL follows the following rules:
    - Structure query language is not case sensitive. 
    - Generally, keywords of SQL are written in uppercase.
    - Statements of SQL are dependent on text lines. 
    - We can use a single SQL statement on one or multiple text line.
    - Using the SQL statements, you can perform most of the actions in a database.

```sql
sql stands for structure query language designed for
accessing and managing the data in the RDBMS

Sql act as interface between user and database.
```

## Why SQL?

- Sql can retrieve records from the database.

- sql can insert record into the database

- sql can update record in to a database

- sql can provides privileges to pprocedures,functions, views, sequences----database objects


## Sql is divided into five categories:


### DDL -- DATA  DEFINITION LANGUAGE     
- CMDS:CREATE,ALTER,TRUNCATE,DROP,RENAME

- which deals with database schemas and descriptions, of how the data should reside in the database.
                            
### DML -- DATA MANIPULATION LANGUAGE

- CMDS:INSERT,UPDATE,DELETE

- which deals with data manipulation and includes most common SQL statements such 
INSERT, UPDATE, DELETE, etc., and it is used to store, modify, retrieve, delete and update data in a database.

### DCL -- DATA CONTROL LANGUAGE
- GRANT,REVOKE

### TCL -- TRANSACTION CONTROL LANGUAGE
- COMMIT,ROLLBACK,SAVEPOINT

### DRL -- DATA RETRIVEAL LANGUAGE
- SELECT

## Oracle Datatypes:

### Number[(p,s)]:
- this data is used to store numeric data
- maxisize we can store up to 38 digits
- p--precision
- s--scale

Example:

```sql
empno number

empno number(5)

sal  number(10,3); -- 10 is precision and 3 is scale.
```

### Char[(size)]:
- this is used to store fixed characters
- maximum size is 2000 bytes.

### Nchar[(size)]:
- this data type is used to store  
national characters, maximum size is 2000 bytes.

### Varchar(size):
- this data type is used to string type of data.
- maximum size is 2000 bytes.

### Varchar2(size):
- this data type is used to store string type of data
- maximum size is 4000 bytes.

### Difference varchar(size) and varchar2(size):

```sql
ename varchar(10);
ename varchar2(10);
```

Suppose a user enters "smith". Internally, if using `varchar`, it will allocate memory based on the variable datatype size, whereas with `varchar2`, it will allocate memory based on the user-entered value. For example, if the user enters "smith", `varchar` will allocate memory as "smithnnnnn", whereas `varchar2` will allocate memory as "smith".

### Date:
- this datatype is used to store valid date
- by default, Oracle uses the date format DD-MON-YYYY.
- Date range: from 1 Jan 4712 BC to 31 Dec 9999 A.D.

### Timestamp:
- this datatype is used to store valid date(year, date, month) and time(HH:MM:SS:MS).

### Ansi (American National Standards Institution):
- Int
- Float
- Decimal
- Varchar
- ...etc

### LOB (large binary objects)datatypes:

- Bfile: it will stores the locations of file.
- BLOB: to store unstructured data -- maximum size is 4gb.
- CLOB: to store character of binary single character or multiple characters of data -- maximum size is 4gb.

### ROWID:
Every record in database contains physical address or rowid

### XML:
to store xml data -- semi-structure data -- Introduced in Oracle11g

Example:

```sql
<empi>
<empno>1001</empno>
<ename>smith</empno>
<sal>3000</3000>
</empid>
```

## Note:
insert the values for varchar,varchar2,date  datatypes
in single code('').

This should format your content in Markdown without altering the content itself. Let me know if you need any further modifications!