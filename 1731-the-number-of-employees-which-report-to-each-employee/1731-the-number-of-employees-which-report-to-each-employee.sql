# 관리자 : 최소 한 명 이상의 직원을 거느리는 직원임
# 모든 관리자 ID 와 , 각 관리자에게 직접 보고하는 직원(하위 관리자) 수, 그리고 하위 관리자 평균연령(소숫점 첫째 자리)
SELECT e.employee_id, e.name, COUNT(emp.reports_to) as reports_count, ROUND(AVG(emp.age),0) as average_age
FROM Employees e
INNER JOIN Employees emp ON e.employee_id = emp.reports_to 
GROUP BY e.employee_id
ORDER BY e.employee_id 