# Write your MySQL query statement below
# 각 교수가 대학에서 가르치는 고유한 과목수를 계산
# dept_id = 학과 / subject_id 과목
SELECT teacher_id , COUNT(DISTINCT subject_id) as cnt
FROM Teacher 
GROUP BY teacher_id 