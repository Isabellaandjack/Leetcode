/*
Write a SQL query to get the nth highest salary from the Employee table.
+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
For example, given the above Employee table, the nth highest salary where n = 2 is 200. If there is no nth highest salary, then the query should return null.
*/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M INT;
SET M=N-1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT M, 1
  );
END

/*
Reference:
https://leetcode.com/discuss/21311/accpted-solution-for-the-nth-highest-salary
https://leetcode.com/discuss/21529/accepted-solution-of-nth-highest-salary
https://leetcode.com/discuss/21320/why-using-limit-n-1-1-will-cause-error?show=21366#a21366
https://github.com/kamyu104/LeetCode/blob/master/MySQL/nth-highest-salary.sql
*/