
-- Task 1 : Show names and marks of students whose marks are greater than 80.

SELECT name, marks FROM Students WHERE marks>80;

--Task 2 : Display all CSE students sorted by age.

SELECT * FROM Students WHERE branch = 'CSE';

-- Task 3 : Show all students ordered by marks from highest to lowest.

SELECT * FROM Students ORDER BY marks DESC;

-- Task 4 : Display the top 3 highest-scoring students.

SELECT * FROM Students ORDER BY marks DESC LIMIT 3;

-- Task 5 : Show names of students whose age is greater than 20.

SELECT name FROM Students WHERE age > 20;

-- Task 6 : Display IT students sorted by marks in descending order.

SELECT * FROM Students WHERE branch = 'IT' ORDER BY marks DESC;

-- Task 7: Show the highest-scoring student.

SELECT * FROM Students ORDER BY marks DESC LIMIT 1;

-- Task 8: Show the lowest-scoring student.

SELECT * FROM Students ORDER BY marks LIMIT 1;

-- Task 9: Display names and branches of students with marks less than 90.

SELECT name, branch FROM Students WHERE marks < 90;

-- Task 10: Show top 2 youngest students. (Hint: sort age ascending 😉)

SELECT * FROM Students ORDER BY age LIMIT 2;

-- Task 11: Display students whose age is 20 and sort by marks descending.

SELECT * FROM Students WHERE age = 20 ORDER BY marks DESC;

-- Task 12: Show the top CSE student based on marks.

SELECT * FROM Students WHERE branch = 'CSE' ORDER BY marks DESC LIMIT 1;

-- Task 13: Display the first 2 students having marks greater than 70.

SELECT * FROM Students WHERE marks > 70 LIMIT 2;

-- Task 14: Show all students except IT students, sorted by marks.

SELECT * FROM Students WHERE branch != 'IT' ORDER BY marks;

-- Task 15 ⭐ Challenge: Find the second-highest-scoring student.

SELECT * FROM Students ORDER BY marks DESC LIMIT 1 OFFSET 1;