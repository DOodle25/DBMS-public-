# VIEWS

A view is a logical representation of data from one or more tables. It does not contain physical storage and is considered a virtual table. Views do not contain any data; when a select statement is executed on a view, it retrieves data from the underlying tables for the first time.

## Advantages of MySQL Views

MySQL views offer several advantages:

1. **Simplify complex queries**: Views help simplify complex queries by allowing you to create a view based on frequently used complex queries. This enables you to reference the view with a simple SELECT statement instead of typing the query repeatedly.

2. **Make the business logic consistent**: Views can store calculations or complex business logic, making it consistent across queries. This helps hide complexity and ensures consistency in calculations.

3. **Add extra security layers**: Views can restrict access to sensitive data by exposing only necessary information to users. By using views and privileges, you can limit which data users can access.

### Types of Views

1. **Simple View**:
   - Created based on a single table.
   - Does not contain functions or GROUP BY clauses.
   - DML operations are allowed.

   #### Syntax:
   ```sql
   CREATE OR REPLACE VIEW view_name AS SELECT * [specific columns] FROM table_name;
   ```

2. **Complex View**:
   - Created based on more than one table (joins).
   - Can contain functions or GROUP BY clauses.
   - DML operations are not allowed directly.

   #### Syntax:
   ```sql
   CREATE OR REPLACE VIEW view_name AS SELECT * FROM table1 JOIN table2 ON (...);
   ```

### Read Only View (MySQL doesn't support):
   Views that restrict DML operations by creating them as read-only.

### With Check Option View:
   Views that only allow DML operations when the WHERE condition is satisfied.

## Exercises

### Salesman Table

```sql
CREATE TABLE salesman (
  salesman_id INT,
  name VARCHAR(20),
  city VARCHAR(20),
  commission FLOAT
);

INSERT INTO salesman VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.15);
```

1. Create a view for salespeople who belong to the city of New York.
2. Create a view for all salespersons, returning salesperson ID, name, and city.
3. Create a view to locate salespeople in the city 'New York'.

### Customer Table

```sql
CREATE TABLE customer (
  customer_id INT,
  cust_name VARCHAR(20),
  city VARCHAR(10),
  grade INT,
  salesman_id INT
);

INSERT INTO customer VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', NULL, 5005);
```

### Orders Table

```sql
CREATE TABLE orders (
  ord_no INT,
  purch_amt FLOAT,
  ord_date DATE,
  customer_id INT,
  salesman_id INT
);

INSERT INTO orders VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001);
```