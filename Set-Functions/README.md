# Set Operators

Set operators are used to combine the result sets of two or more SELECT statements. There are two main set operators in SQL:

## UNION

The UNION operator retrieves the output of two queries and removes duplicate records.

### Rules for UNION
1. The number of columns used in the queries should match.
2. The column data types should match for the queries in set operators.

Example:

```sql
CREATE TABLE DEPT_U1 AS SELECT * FROM DEPT;
CREATE TABLE DEPT_U2 AS SELECT * FROM DEPT;

-- Insert some records into the above two tables

-- Retrieve unique records from both tables
SELECT * FROM DEPT_U1
UNION
SELECT * FROM DEPT_U2;
```

## UNION ALL

The UNION ALL operator retrieves the output of two queries and includes duplicate records.

Example:

```sql
-- Retrieve all records including duplicates
SELECT * FROM DEPT_U1
UNION ALL
SELECT * FROM DEPT_U2;
```

Remember to ensure that the number of columns and their data types match when using set operators.