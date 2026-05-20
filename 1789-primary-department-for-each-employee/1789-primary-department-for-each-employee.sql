# primary_flag Y,N 열거형  / Y 면 해당 부서 주 부서 N 이면 해당 부서가 주 부서가 아님
# 직원은 여러 부서에 소속될 수 있음
# 직원이 다른 부서에 합류할 경우 주 부서를 결정해야함
# 직원이 한 부서에만 소속되어 있을 경우 주부서 열은 N
# 모든 직원의 소속 부서를 표시하는 솔루션
# 한 부서에만 소속될 경우 해당 직원의 소속 부서만 표시
SELECT employee_id, department_id
FROM Employee
GROUP BY employee_id 
HAVING count(employee_id) = 1 

UNION

SELECT employee_id,department_id
FROM Employee
WHERE primary_flag = 'Y'

# UNION 두 쿼리 결과를 위 아래로 합침. (중복 불가능)
# UNION ALL 중복 허용해서 두 쿼리 결과를 위 아래로 합침
