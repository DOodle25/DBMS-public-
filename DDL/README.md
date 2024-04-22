# DDL (Data Definition Language)

- DDL stands for Data Definition Language.

- It's utilized to define the structure or schema of the database and to modify its definitions or schema.

- DDL commands are auto-commit commands.

### DDL Commands:

- **CREATE**
- **ALTER**
- **RENAME**
- **TRUNCATE**
- **DROP**

## CREATE

The `CREATE` command is used to define various database objects such as tables, views, sequences, and procedures.

### Syntax for Creating a Table:

```sql
CREATE TABLE <tablename>(
    column_name1 datatype(size) [constraints],
    column_name2 datatype(size) [constraints],
    ...
);
```

### Example:

```sql
CREATE TABLE emp11(
    empno NUMBER(5),
    ename VARCHAR2(10),
    sal NUMBER(10,2)
);
```

### Table Naming Conventions:

- Table name should be maximum 30 characters.
- It can contain numbers and underscores but cannot start with a number.
- Table names are not case-sensitive and cannot contain spaces.

### Inserting Records:

```sql
INSERT INTO emp11 VALUES(1001, 'smith', 20000);
INSERT INTO emp11 VALUES(1002, 'martin', 30000);
INSERT INTO emp11 VALUES(1003, 'chaitnaya', 20000);
INSERT INTO emp11 VALUES(1004, 'raju', 10000);
INSERT INTO emp11 VALUES(1005, 'harsha', 40000);
```

### Displaying Records:

```sql
SELECT * FROM emp11;
```

### Clear Screen:

- Oracle: `CL SCR`
- MySQL: `CLEAR` or `Ctrl+L`

## ALTER

The `ALTER` command is used to modify the definition or structure of a table.

### Example Alterations:

1. **Adding a New Column**:

```sql
ALTER TABLE emp11 ADD mobileno NUMBER(10);
```

2. **Modifying Column Datatype or Size**:

```sql
ALTER TABLE emp11 MODIFY ename VARCHAR2(20);
```

3. **Dropping a Column**:

```sql
ALTER TABLE emp11 DROP COLUMN address;
```

4. **Renaming a Column**:

```sql
ALTER TABLE emp11 RENAME COLUMN job TO designation;
```

5. **Adding a Constraint**:

```sql
ALTER TABLE emp11 ADD CONSTRAINT pk_empno PRIMARY KEY (empno);
```

## RENAME (for Table Name)

The `RENAME` command is used to rename a table.

### Syntax:

Oracle:

```sql
RENAME old_table_name TO new_table_name;
```

MySQL:

```sql
RENAME TABLE old_table_name TO new_table_name;
```

### Example:

MySQL:

```sql
RENAME TABLE product_11 TO product_22;
```

## TRUNCATE

The `TRUNCATE` command is used to delete all records from a table but not its schema.

### Syntax:

```sql
TRUNCATE TABLE tablename;
```

### Example:

```sql
TRUNCATE TABLE emp11;
```

## DROP

The `DROP` command is used to drop database objects, including tables, views, sequences, and procedures.

### Syntax to Drop a Table:

```sql
DROP TABLE tablename;
```

If the table contains constraints:

```sql
DROP TABLE tablename CASCADE CONSTRAINTS;
```
```

This version includes clarifications and formatting improvements. Let me know if you need further adjustments!