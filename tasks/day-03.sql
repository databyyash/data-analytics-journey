-- Task 1: Count total students.

SELECT COUNT(*) FROM Students

-- Task 2: Count students from CSE branch.

SELECT COUNT(*) FROM Students WHERE branch = 'CSE';

-- Task 3: Count students having marks above 80.

SELECT COUNT(*) FROM Students WHERE marks > 80;

-- Task 4: Find total marks of all students.

SELECT SUM(marks) FROM Students;

-- Task 5: Find total marks of IT students.

SELECT SUM(marks) FROM Students WHERE branch = 'IT';

-- Task 6: Find average marks of all students.

SELECT AVG(marks) FROM Students;

-- Task 7: Find average age of CSE students.

SELECT AVG(age) FROM Students WHERE branch = 'CSE';

-- Task 8: Find highest marks.

SELECT MAX(marks) FROM Students;

-- Task 9: Find lowest marks.

SELECT MIN(marks) FROM Students;

-- Task 10: Find youngest student age.

SELECT MIN(age) FROM Students;

-- Task 11: Find oldest student age.

SELECT MAX(age) FROM Students;

-- Task 12: Count students in each branch.

SELECT branch, COUNT(*) FROM Students GROUP BY branch;

-- Task 13: Find average marks branch-wise.

SELECT branch, AVG(marks) FROM Students GROUP BY branch;

-- Task 14: Find maximum marks in each branch.

SELECT branch, MAX(marks) FROM Students GROUP BY branch;

-- Task 15: Find minimum age branch-wise.

SELECT branch, MIN(age) FROM Students GROUP BY branch;

-- Task 16: Find total marks branch-wise.

SELECT branch, SUM(marks) FROM Students GROUP BY branch;

-- Task 17: Show branches having more than 1 student.

SELECT branch, COUNT(*) FROM Students GROUP BY branch HAVING COUNT(*) > 1;

-- Task 18: Show branches whose average marks are above 80.

SELECT branch, AVG(marks) FROM Students GROUP BY branch HAVING AVG(marks) > 80;

-- Task 19: Show branches whose total marks exceed 150.

SELECT branch, SUM(marks) FROM Students GROUP BY branch HAVING SUM(marks) > 2100;

-- Task 20: Find branch with highest average marks.

SELECT branch, AVG(marks) FROM Students GROUP BY branch ORDER BY AVG(marks) DESC LIMIT 1;

-- Task 21: Show top 2 branches by total marks.

SELECT branch, SUM(marks) FROM Students GROUP BY branch ORDER BY SUM(marks) DESC LIMIT 2;

-- Task 22: Find branches where minimum marks are greater than 70.

SELECT branch, MIN(marks) FROM Students GROUP BY branch HAVING MIN(marks) > 70;

-- Task 23: Count students in each age group and show only ages having more than 1 student.

SELECT age, COUNT(*) FROM Students GROUP BY age HAVING COUNT(*) > 1;

-- Task 24 🔥: Find the second-highest average branch marks.

SELECT branch, AVG(marks) FROM Students GROUP BY branch ORDER BY AVG(marks) DESC LIMIT 1 OFFSET 1;