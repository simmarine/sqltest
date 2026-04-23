-- 두 조건중 하나만이라도 만족하는 직원의 이름과 보너스 금액 출력
-- 보너스가 1000 미만인 직원
-- 보너스를 받지 못한 직원

SELECT emp.name, bo.bonus
FROM Employee emp
LEFT JOIN Bonus bo ON emp.empId = bo.empId  
WHERE bo.bonus < 1000 OR bo.bonus IS NULL