# 직속 부하가 5명 이상인 관리자를 출력
# employee id 와 employee managerid 기준으로 조인 진행
SELECT e1.name
FROM Employee e1
JOIN Employee e2 ON e1.id = e2.managerId
GROUP BY e2.managerId
HAVING COUNT(*) >= 5