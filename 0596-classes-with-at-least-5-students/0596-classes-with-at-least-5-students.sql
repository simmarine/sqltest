# 학생 수가 5명 이상인 모든 학급을 찾는 문제

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5