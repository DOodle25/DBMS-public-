# Locking Tables in MySQL

In MySQL, you can restrict access to records of tables by locking them. These locks prevent other sessions from modifying the tables in the current session, helping to solve concurrency problems. There are two types of table locks in MySQL:

1. **READ LOCK**: Restricts write operations on a table, allowing only the session that holds the lock to write into the table.
2. **WRITE LOCK**: Restricts both read and write operations on a table, preventing sessions that do not possess the lock from performing any operations on the table.

## Syntax:

### Locking Tables:
```
LOCK TABLES table_name [READ | WRITE];
```

### Unlocking Tables:
```
UNLOCK TABLES;
```

## Example:

```sql
LOCK TABLES my_table WRITE;
-- Perform operations on the locked table
UNLOCK TABLES;
```

# Creating and Managing Users in MySQL

To create and manage users in MySQL, you can use various commands. Here's an overview:

## Creating a User:

### Syntax:
```
CREATE USER 'username'@'host' IDENTIFIED WITH BY 'password';
```

### Example:
```sql
CREATE USER 'sarath'@'localhost' IDENTIFIED BY 'sarath';
```

## Granting Privileges:

You can grant privileges to users using the `GRANT` statement.

### Syntax:
```
GRANT ALL PRIVILEGES ON * . * TO 'new_user'@'localhost';
```

### Example:
```sql
GRANT ALL PRIVILEGES ON * . * TO 'sarath'@'localhost';
```

## Listing Users:

You can list all users in MySQL using a query on the `mysql.user` table.

```sql
SELECT user, host, account_locked FROM mysql.user;
```

## Dropping a User:

To remove a user, you can use the `DROP USER` statement.

### Syntax:
```
DROP USER 'username'@'localhost';
```

### Example:
```sql
DROP USER 'lucky'@'localhost';
```

## Locking and Unlocking Users:

You can lock and unlock users to restrict or allow their access to MySQL.

### Locking User:
```sql
ALTER USER 'username'@'localhost' ACCOUNT LOCK;
```

### Unlocking User:
```sql
ALTER USER 'username'@'localhost' ACCOUNT UNLOCK;
```

### Checking User Lock Status:
```sql
SELECT user, host, account_locked FROM mysql.user WHERE user = 'sarath' AND host = 'localhost';
```