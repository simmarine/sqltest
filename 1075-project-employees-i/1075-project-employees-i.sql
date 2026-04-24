# Write your MySQL query statement below
# employee_id 기준으로 레프트 조인
# 각 프로젝트 = 프로젝트 ID 별로 그룹화 진행
# 그룹 별 모든 직원의 평균 경력 ROUND((sum(experience_years)/ count(employee_id)),2)

SELECT p.project_id, ROUND((sum(e.experience_years)/count(e.experience_years)),2) AS average_years
FROM Project p LEFT JOIN Employee e ON p.employee_id = e.employee_id
GROUP BY p.project_id