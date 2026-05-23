# Write your MySQL query statement below
# 연속 세번 이상 나타는 코드
SELECT DISTINCT num as ConsecutiveNums
FROM (  SELECT num,
        LEAD(num,1) OVER(ORDER BY id) as next1,
        LEAD(num,2) OVER(ORDER BY id) as next2
FROM Logs) as t
WHERE num = next1 AND next1 = next2