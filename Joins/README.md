# JOINS

Joins are used to retrieve records from multiple tables by creating a temporary relationship between them based on a common column. If we have n tables, then the possible join conditions are at least n-1. Joins are performed based on a common column datatype.

## Types of Joins:

### Equi-Joins:
- Inner Join (or Simple Join or Equi Join)
- Outer Join: Left, Right, Full
- Self Join

### Non-Equi-Joins:
- Cross Join

### Inner Join:

This join returns all records where the join condition is met.

#### Syntax:

```sql
SELECT * [specific columns]
FROM table1
JOIN table2 ON (table1.commoncolumname=table2.commoncolumnname);
```

#### Examples:

```sql
-- Using ANSI Syntax:
SELECT e.deptno, e.empno, e.ename, e.sal, d.deptno, d.dname
FROM dept d
JOIN emp e ON (d.deptno=e.deptno);

-- Using old style:
SELECT e.deptno, e.empno, e.ename, e.sal, d.deptno, d.dname
FROM emp e, dept d
WHERE e.deptno=d.deptno;
```

### Left Outer Join:

This join retrieves all matched records from both tables and non-matched records from the left-hand side table in the join.

#### Syntax:

```sql
SELECT * [specific columns]
FROM table1
LEFT JOIN table2 ON (table1.commoncolumname=table2.commoncolumnname);
```

#### Example:

```sql
SELECT e.empno, e.ename, e.sal, d.deptno, d.dname
FROM dept d
LEFT OUTER JOIN emp e ON (d.deptno=e.deptno);
```

### Right Outer Join:

This join retrieves all matched records from both tables and non-matched records from the right-hand side table in the join.

#### Syntax:

```sql
SELECT * [specific columns]
FROM table1
RIGHT JOIN table2 ON (table1.commoncolumname=table2.commoncolumnname);
```

#### Example:

```sql
SELECT e.empno, e.ename, e.sal, d.deptno, d.dname
FROM dept d
RIGHT OUTER JOIN emp e ON (d.deptno=e.deptno);
```

### Full Outer Join:

This join retrieves all matched and non-matched records from both tables.

#### Syntax:

```sql
SELECT * [specific columns]
FROM table1
FULL JOIN table2 ON (table1.commoncolumname=table2.commoncolumnname);
```

#### Example:

```sql
SELECT e.empno, e.ename, e.sal, d.deptno, d.dname
FROM dept d
FULL OUTER JOIN emp e ON (d.deptno=e.deptno);
```

### Self Join:

A self join is a join of a table with itself.

#### Example:

```sql
SELECT e.ename, m.ename AS manager
FROM emp e, emp m
WHERE e.mgr=m.empno;
```

### Cross Join:

This performs a Cartesian product.

#### Syntax:

```sql
SELECT * [specific columns]
FROM table1
CROSS JOIN table2;
```

#### Example:

```sql
SELECT e.empno, e.ename, d.deptno, d.dname
FROM dept d
CROSS JOIN emp e;
```

### Non-Equi Join:

This type of join uses operators other than '=' (like BETWEEN, IN, etc.).

#### Example:

```sql
SELECT e.empno, e.ename, e.sal, s.grade
FROM emp e, salgrade s
WHERE e.sal BETWEEN s.losal AND s.hisal;