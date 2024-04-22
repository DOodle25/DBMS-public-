# Normalization

Normalization is the process of organizing data in a database efficiently. This includes creating tables and establishing relationships between those tables according to rules designed both to protect the data and to make the database more flexible by eliminating redundancy and inconsistent dependency.

## First Normal Form (1NF)

A database is in 1NF if it satisfies the following rules:
1. Each cell should have a single value.
2. Each table should have a primary key.

## Second Normal Form (2NF)

A database is in 2NF if it satisfies the following rules:
1. It is in 1NF.
2. There should be no partial dependency.

## Third Normal Form (3NF)

A database is in 3NF if it satisfies the following rules:
1. It is in 2NF.
2. There should be no transitive dependency.

### Exercise Normalization

The given table needs to be normalized to the third normal form (3NF). Let's analyze and normalize it:

Original Table:
- UnitID
- StudentID
- Date
- TutorID
- Topic
- Room
- Grade
- Book
- TutEmail

Normalized Form:
- **Unit Table:**
  - UnitID (Primary Key)
  - Topic
  - Date
  - Room
  - Book
- **Tutor Table:**
  - TutorID (Primary Key)
  - TutEmail
- **StudentGrade Table:**
  - StudentID (Primary Key)
  - Grade
  - UnitID (Foreign Key)

Explanation:
- The Unit Table contains information about units, including the topic, date, room, and book.
- The Tutor Table contains information about tutors, including their email.
- The StudentGrade Table contains information about student grades, including the grade itself and the unit it pertains to (identified by UnitID).
  
This normalization eliminates redundancy and ensures data integrity.
