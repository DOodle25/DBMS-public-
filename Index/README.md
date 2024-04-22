# Indexes

An index is a database object that acts as a pointer to locate the physical data of a table. Creating indexes can improve the performance of SQL statements by allowing faster data retrieval.

## Types of Indexes

1. **Simple Index**: Created based on a single column.
2. **Complex or Composite Index**: Created based on more than one column.
3. **Unique Index**: Ensures uniqueness of values in indexed columns.

### Simple Index

#### Syntax

```sql
CREATE INDEX index_name ON table_name(column_name);
```

#### Example

Before Index Created:
```sql
SELECT * FROM employees WHERE hire_date > '2000-01-01';
```

After Index Created:
```sql
CREATE INDEX i_hire_date ON employees(hire_date);
SELECT * FROM employees WHERE hire_date > '2000-01-01';
```

### Composite Index

#### Syntax

```sql
CREATE INDEX index_name ON table_name(col1, col2, ..., col32);
```

#### Example

Before Index Created:
```sql
SELECT * FROM employees WHERE first_name = 'Georgi' AND last_name = 'Facello';
```

After Index Created:
```sql
CREATE INDEX i_composite ON employees(first_name, last_name);
SELECT * FROM employees WHERE first_name = 'Georgi' AND last_name = 'Facello';
```

### Unique Index

#### Syntax

```sql
CREATE UNIQUE INDEX index_name ON table_name(columns);
```

#### Example

```sql
CREATE UNIQUE INDEX infy_fn_ln_uq ON info_1(first_name, last_name);
```

To list indexes on a table:

```sql
SHOW INDEX FROM tablename FROM databasename;
```

To drop an index:

```sql
DROP INDEX index_name ON table_name;
```

### Ranking Functions

#### DENSE_RANK()

Assigns a rank to each row within a partition in a consecutive manner.

```sql
SELECT empno, ename, sal, DENSE_RANK() OVER (ORDER BY sal) my_rank FROM emp;
```

#### RANK()

Assigns a rank to each row within a partition with gaps.

```sql
SELECT empno, ename, sal, RANK() OVER (ORDER BY sal) my_rank FROM emp;
```

If you need further assistance or have any questions, feel free to ask!
```