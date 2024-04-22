# String Functions

String functions are used to manipulate character data in SQL. Here are some commonly used string functions:

1. **UPPER**
   - `UPPER('string')`: Converts the lowercase characters in the string to uppercase.

2. **LOWER**
   - `LOWER('string')`: Converts the given string into lowercase.

3. **INITCAP** (Not available in MySQL)
   - `INITCAP('string')`: Displays the given string with the first letter in capital.

4. **LENGTH**
   - `LENGTH('string')`: Returns the number of characters in the string.

5. **LPAD**
   - `LPAD('string', length, chars)`: Adds characters to the left end of the string to make it the specified length.

6. **RPAD**
   - `RPAD('string', length, chars)`: Adds characters to the right end of the string to make it the specified length.

7. **LTRIM**
   - `LTRIM('string', chars)`: Removes the specified characters from the left end of the string.

8. **RTRIM**
   - `RTRIM('string', chars)`: Removes the specified characters from the right end of the string.

9. **TRIM**
   - `TRIM(unused FROM 'string')`: Removes the specified characters from both ends of the string.

10. **SUBSTR**
    - `SUBSTR('string', startposition, no of characters)`: Displays a part of the string from the given start position.

11. **REPLACE**
    - `REPLACE('string', 'oldchars', 'newchars')`: Replaces the old characters in the string with new characters.

### Exercises:

1. **Display ENAME column in lowercase from EMP:**
   ```sql
   SELECT LOWER(ENAME) FROM EMP;
   ```

2. **Replace ENAME 'SCOTT' with 'TIGER' from EMP:**
   ```sql
   SELECT REPLACE(ENAME, 'SCOTT', 'TIGER') FROM EMP;
   ```

3. **Display the first three characters of all ENAME from EMP:**
   ```sql
   SELECT SUBSTR(ENAME, 1, 3) FROM EMP;
   ```
