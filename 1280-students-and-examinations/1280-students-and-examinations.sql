# 각 학생이 각 시험에 응시한 횟수를 찾는 솔루션
# student 테이블과 examinatiors의 studet_id 로 left 조인하면 student테이블의 student_id에 맞는 subject_name이 매칭이됨


SELECT st.student_id,st.student_name,sub.subject_name,COUNT(ex.subject_name) AS attended_exams
FROM Students st
CROSS JOIN Subjects sub
LEFT JOIN Examinations ex ON st.student_id = ex.student_id
AND sub.subject_name = ex.subject_name
GROUP BY st.student_id,ex.subject_name,sub.subject_name
ORDER BY st.student_id,sub.subject_name