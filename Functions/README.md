```markdown
# String Functions in MySQL

MySQL provides a variety of string functions to manipulate character string data effectively. Here's an overview of some commonly used string functions:

1. **ASCII(str)**
   Returns the ASCII value of the leftmost character of the string `str`.
   ```sql
   SELECT ASCII('a');
   ```
   
2. **CHAR_LENGTH(str)**
   Returns the length of the string `str` in characters.
   ```sql
   SELECT CHAR_LENGTH('welcome');
   ```

3. **CONCAT(str1, str2, …, strn)**
   Concatenates multiple strings into a single string.
   ```sql
   SELECT CONCAT('hello', 'world');
   ```

4. **SUBSTR(str, pos, len)**
   Returns a substring from the string `str` starting from position `pos` with length `len`.
   ```sql
   SELECT SUBSTR('hello', 2, 3);
   ```

5. **UPPER(str) / LOWER(str)**
   Converts a string to uppercase or lowercase.
   ```sql
   SELECT UPPER('hello'), LOWER('HELLO');
   ```

6. **LENGTH(str)**
   Returns the length of the string `str` in bytes.
   ```sql
   SELECT LENGTH('welcome');
   ```

7. **LEFT(str, len) / RIGHT(str, len)**
   Returns the leftmost or rightmost `len` characters from the string `str`.
   ```sql
   SELECT LEFT('hello', 3), RIGHT('hello', 3);
   ```

8. **LPAD(str, len, padstr) / RPAD(str, len, padstr)**
   Inserts `padstr` at the beginning or end of the string `str` until the resultant string is of length `len`.
   ```sql
   SELECT LPAD('hello', 7, 'x'), RPAD('hello', 7, 'x');
   ```

9. **TRIM(str) / LTRIM(str) / RTRIM(str)**
   Removes leading or trailing whitespace from the string `str`.
   ```sql
   SELECT TRIM('   hello   '), LTRIM('   hello'), RTRIM('hello   ');
   ```

10. **REPLACE(str, from_str, to_str)**
    Replaces all occurrences of `from_str` with `to_str` in the string `str`.
    ```sql
    SELECT REPLACE('hello', 'l', 'r');
    ```
