# position 1~ 500 사이값
# rating 1 ~ 5 사이값, 3 미만이면 불량 쿼리 
# quality(품질) = rating / position 의 평균값
# poor_query_percentage(불량 쿼리 ㅣ비율) : rating <3인 쿼리의 비율 
SELECT query_name, ROUND(AVG(rating/position),2) as quality, ROUND((sum(rating<3)/count(query_name)) * 100,2) as poor_query_percentage
FROM Queries
GROUP BY query_name