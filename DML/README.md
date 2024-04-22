# DML (Data Manipulation Language)

DML stands for Data Manipulation Language.

DML commands are not auto-commit commands; we need to explicitly commit the DML statements.

### DML Commands:

- **INSERT**
- **UPDATE**
- **DELETE**

## INSERT

The `INSERT` command is used to add records into a table.

### Syntax:

```sql
INSERT INTO tablename VALUES(value1, value2, ..., valueN);
```

### Example:

```sql
INSERT INTO emp11 VALUES(1001, 'smith', 20000);
INSERT INTO emp11 VALUES(1002, 'martin', 30000);
INSERT INTO emp11 VALUES(1003, 'chaitnaya', 20000);
INSERT INTO emp11 VALUES(1004, 'raju', 10000);
INSERT INTO emp11 VALUES(1005, 'harsha', 40000);
```

### Inserting with Specific Columns:

```sql
INSERT INTO tablename (column1, column2, ..., columnN) VALUES(value1, value2, ..., valueN);
```

## UPDATE

The `UPDATE` command is used to modify column values.

### Syntax:

```sql
UPDATE tablename SET column1=value1, column2=value2, ... WHERE condition;
```

### Example:

```sql
UPDATE emp11 SET ename='rajuhadoop' WHERE empno=1004;
```

### Assignment:

- **Update as Select**: It involves updating records based on the result of a select query.
- **Difference between `TRUNCATE` and `DELETE`?**

## DELETE

The `DELETE` command is used to delete specific records or all records from a table.

### Syntax:

```sql
DELETE FROM tablename WHERE condition; -- Delete specific record
```

```sql
DELETE FROM tablename; -- Delete all records
```

### Example:

```sql
DELETE FROM emp11 WHERE empno=1006;
```

### Restrictions on Foreign Key:

- **On Delete Cascade**: Deletes records from the child table if corresponding records in the parent table are deleted.

### To List All Constraints on a Table:

```sql
SHOW CREATE TABLE tablename;
```

## Relational Operators:

- `>`: Greater than
- `<`: Less than
- `<=`: Less than or equal to
- `>=`: Greater than or equal to
- `==`: Equal to
- `!=`, `<>`: Not equal to
- `BETWEEN`: Returns values within a specified range.
- `IN`: Returns values that are within a specified list of values.

### Examples:

- Write a query to display records where SAL is less than 2000 from EMP table.
- Write a query to find the maximum SAL from EMP.
- Write a query to find the second maximum SAL.
- Write a query to perform the sum of salaries of all employees in the EMP table.
- Select distinct SAL from EMP.

## GROUP BY Clause:

The `GROUP BY` clause is used to group related information.

### Syntax:

```sql
SELECT * FROM tablename WHERE [GROUP BY COLUMNNAME] [ORDER BY COLUMNS];
```

### Examples:

- Write a query to perform the sum of salaries based on each DEPARTMENT NO from EMP table.
- Write a query to perform the sum of salaries and count the number of employees in each DEPARTMENT from EMP.
- Write a query to perform the sum of salaries based on each DEPARTMENT NO and each JOB.

## HAVING Clause:

The `HAVING` clause is used to filter grouped data.

### Syntax:

```sql
SELECT * FROM tablename WHERE [GROUP BY] [HAVING] [ORDER BY]
```

### Example:

- Write a query to perform the sum of salaries based on each DEPARTMENT NO greater than 8750.

## LIKE Operator:

The `LIKE` operator is used to return values based on a search pattern.

### Patterns:

- `%`: Represents one or more characters.
- `_`: Represents a single character.

### Syntax:

```sql
LIKE 'PATTERN'
```

### Example:

- Write a query to display all ENAMES from EMP where ENAME starts with 'S'.

```sql
SELECT ENAME FROM EMP WHERE ENAME LIKE 'S%';
```

- Write a query to display all ENAMES starting with 'A' followed by any character and then 'L'.

```sql
SELECT ENAME FROM EMP WHERE ENAME LIKE 'A_L%';
```


