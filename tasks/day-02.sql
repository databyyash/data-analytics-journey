
-- Task 1: Show all student names.

SELECT name FROM Students;

-- Task 2: Display students sorted by marks descending.

SELECT * FROM Students ORDER BY marks DESC;

-- Task 3: Show top 3 students.

SELECT * FROM Students ORDER BY marks DESC LIMIT 3;

-- Task 4: Show all unique branches.

SELECT DISTINCT branch FROM Students;

-- Task 5: Display distinct ages.

SELECT DISTINCT age FROM Students;

-- Task 6: Show CSE students with marks greater than 80.

SELECT * FROM Students WHERE branch = 'CSE' AND marks > 80;

-- Task 7: Show IT students whose age is 20.

SELECT * FROM Students WHERE age = 20 AND branch ='IT';

-- Task 8: Show students from CSE or IT branch.

SELECT * FROM Students WHERE branch IN ('CSE','IT');

-- Task 9: Display students having marks above 90 or age below 20.

SELECT * FROM Students WHERE marks > 90 or age < 20;

-- Task 10: Show students who are not from ECE branch.

SELECT * FROM Students WHERE NOT branch IN ('ECE');

-- Task 11: Display students whose marks are not below 80.

SELECT * FROM Students WHERE NOT marks < 80;

-- Task 12: Show students whose names start with 'A'.

SELECT * FROM Students WHERE name LIKE 'A%';

-- Task 13: Show students whose names end with 'a'.

SELECT * FROM Students WHERE name LIKE '%a';

-- Task 14: Display students whose names contain 'ah'.

SELECT * FROM Students WHERE name LIKE '%ah%';

-- Task 15: Show students from CSE and ECE branches.

SELECT * FROM Students WHERE branch IN ('ECE', 'CSE');

-- Task 16: Display students whose age is either 19, 20, or 22.

SELECT * FROM Students WHERE age IN (19, 20, 22);

-- Task 17: Show students with marks between 70 and 90.

SELECT * FROM Students WHERE marks BETWEEN 70 and 90;

-- Task 18: Display students whose age is between 19 and 21.

SELECT * FROM Students WHERE age BETWEEN 19 and 21;

-- Task 19: Show top 2 CSE students by marks.

SELECT * FROM Students WHERE branch = 'CSE' ORDER BY marks DESC LIMIT 2;

-- Task 20: Display students whose branch is IT or CSE AND marks are above 75. Sort by marks descending.

SELECT * FROM Students WHERE branch IN ('IT', 'CSE') AND marks > 75 ORDER BY marks DESC;

-- Task 21: Show students whose names start with 'N' and marks are between 80 and 100.

SELECT * FROM Students WHERE name LIKE 'N%' AND marks BETWEEN 80 and 100;

-- Task 22: Display unique branches excluding IT.

SELECT DISTINCT branch FROM Students WHERE branch != 'IT';

-- Task 23: Show students not belonging to CSE or ECE.

SELECT name, branch FROM Students WHERE NOT branch IN ('ECE', 'CSE');

-- Task 24 🔥: Find the second-highest scorer from IT branch.

SELECT * FROM Students WHERE branch = 'IT' ORDER BY marks DESC LIMIT 1 OFFSET 1;