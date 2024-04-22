# Number Functions

Number functions are used to perform various operations on numeric data in SQL. Here are some commonly used number functions:

1. **ABS**
   - `ABS(NUM)`: Returns the absolute value of an integer.

2. **SQRT**
   - `SQRT(NUM)`: Returns the square root value of a number.

3. **MOD**
   - `MOD(VALUE, DIVISION)`: Returns the remainder when a number is divided by another number.

4. **CEIL**
   - `CEIL(NUM)`: Rounds the value to the nearest higher integer.

5. **FLOOR**
   - `FLOOR(NUM)`: Rounds the value to the nearest lower integer.

### Examples:

1. **ABS Function:**
   ```sql
   SELECT ABS(5), ABS(-5), ABS(NULL) FROM DUAL;
   -- Output: 5, 5, NULL
   ```

2. **SQRT Function:**
   ```sql
   SELECT SQRT(4), SQRT(9), SQRT(5), SQRT(NULL), SQRT(256) FROM DUAL;
   -- Output: 2, 3, 2.236, NULL, 16
   ```

3. **MOD Function:**
   ```sql
   SELECT MOD(4, 2), MOD(5, 2) FROM dual;
   -- Output: 0, 1
   ```

4. **CEIL Function:**
   ```sql
   SELECT CEIL(4.5), CEIL(5), CEIL(4.2) FROM DUAL;
   -- Output: 5, 5, 5
   ```

5. **FLOOR Function:**
   ```sql
   SELECT FLOOR(4.5), FLOOR(4.2), FLOOR(4.7) FROM DUAL;
   -- Output: 4, 4, 4
   ```

## LOGINCAL OPERATORS:
- AND 
- OR
- IS NULL OPERATOR:
    THIS RETRUN THE VALUES BASED ON SEARCH OF NULL VALUES.
