# Procedure

A procedure, also known as a stored procedure, is a collection of pre-compiled SQL statements stored inside the database. It consists of a name, parameter lists, and SQL statements. Procedures can be invoked by triggers, other procedures, and various applications.

## Stored Procedure Features

Stored procedures offer several advantages:

- **Performance**: Once stored procedures are created, they are compiled and stored in the database, enhancing application performance.
- **Reduced Traffic**: Stored procedures reduce the traffic between applications and database servers since only the procedure's name and parameters need to be sent.
- **Reusability**: Procedures are reusable across different applications.
- **Security**: Stored procedures provide a secure way to interact with the database without granting direct access to tables.

### Syntax

```sql
DELIMITER //  -- Set the delimiter to //

CREATE PROCEDURE procedure_name [[IN | OUT | INOUT] parameter_name datatype [, parameter datatype]) ]
BEGIN    
    Declaration_section    -- Declare local variables
    Executable_section    -- Execute SQL statements or logic
END //  -- End the procedure definition

DELIMITER ;  -- Restore the delimiter to ;
```

## MySQL Procedure Parameters

MySQL procedures support three types of parameters:

- **IN**: Parameters with values passed to the procedure (read-only).
- **OUT**: Parameters that can be assigned values within the procedure (write-only).
- **INOUT**: Parameters that can be both assigned values and passed to the procedure.

## Calling Procedures

Procedures can be called using the `CALL` statement:

```sql
CALL procedure_name(parameter_values);
```

# Function

A function in MySQL is a stored program that accepts parameters and returns a value. It's similar to a procedure but always returns a value.

### Syntax

```sql
DELIMITER //

CREATE FUNCTION function_name [ (parameter datatype [, parameter datatype]) ]
RETURNS return_datatype
BEGIN
    Declaration_section
    Executable_section
    RETURN value;  -- Return the value
END;

DELIMITER ;
```

## Calling Functions

Functions can be called in SQL statements like:

```sql
SELECT function_name(parameter_values);
```

# Triggers

Triggers in MySQL are special stored programs that automatically execute when specific events occur in the database. They can be invoked before or after INSERT, UPDATE, or DELETE operations.

### Syntax

```sql
CREATE TRIGGER trigger_name
{BEFORE | AFTER}
{INSERT | UPDATE | DELETE}
ON table_name
FOR EACH ROW
BEGIN
    trigger_body
END;
```

## Types of Triggers

- **Row-Level Trigger**: Executed once for each affected row during an operation.
- **Statement-Level Trigger**: Executed once for each transaction regardless of the number of affected rows (not supported in MySQL).

## Pseudo Columns

- **OLD**: Represents the old values of columns affected by an operation.
- **NEW**: Represents the new values of columns affected by an operation.

## Trigger Example

```sql
CREATE TRIGGER trg_emp_13
BEFORE INSERT ON emp13
FOR EACH ROW
BEGIN
    SET NEW.ename = UPPER(NEW.ename);
END;
```

## Managing Triggers

Triggers can be listed using:

```sql
SHOW TRIGGERS FROM database_name;
```

Triggers can be dropped using:

```sql
DROP TRIGGER trigger_name;
```