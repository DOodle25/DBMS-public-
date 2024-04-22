# Subqueries

Subqueries () are used to get results based on unknown values. They come in different types:

1. **Single Row Subquery**: Returns one row (1 value).
2. **Multiple Row Subquery**: Returns multiple rows.
3. **Multiple Column Subquery**: Returns more than one column.
4. **Co-Related Subquery**: Executed in relation to the parent query.
5. **Scalar Subquery**: Used in the SELECT clause.
6. **Inline View**: Used in the FROM clause.

## Single Row Subquery

```sql
SELECT * FROM emp WHERE sal > (SELECT sal FROM emp WHERE ename = 'ALLEN');
```

### Level Two Query

```sql
SELECT * FROM emp WHERE job = (SELECT job FROM emp WHERE ename = 'ALLEN') AND job = (SELECT job FROM emp WHERE ename = 'BLAKE');
```

### Level Three Query (Nested Sub-query)

```sql
SELECT * FROM emp WHERE sal > (SELECT sal FROM emp WHERE ename = (SELECT ename FROM emp WHERE empno = 7499));
```

## Multiple Row Subquery

### ALL

```sql
SELECT * FROM emp WHERE sal > ALL(SELECT sal FROM emp WHERE deptno = 30);
```

### ANY

```sql
SELECT * FROM emp WHERE sal > ANY(SELECT sal FROM emp WHERE deptno = 30);
```

### IN

```sql
SELECT * FROM emp WHERE ename IN ('ALLEN', 'KING', 'FORD');
```

## Multiple Column Subquery

```sql
SELECT * FROM emp WHERE (job, sal) IN (SELECT job, sal FROM emp WHERE deptno = 30);
```

## Exercises on Subqueries

1. Display employee names and hire dates for all employees in the same department as Blake, excluding Blake.
2. Display employee numbers and names for all employees who earn more than the average salary, sorted in descending order of salary.
3. Display employee numbers and names for all employees who work in a department with any employee whose name contains a 'T'.
4. Display employee names, department numbers, and job titles for all employees whose department location is Dallas.
5. Display employee names and salaries for all employees who report to King.

## EXISTS Operator

```sql
SELECT ename, deptno FROM emp WHERE EXISTS (SELECT * FROM emp WHERE sal > 3500);
```
