# Write your MySQL query statement below
# 사용자의 확인률은 confirmed 메시지 / 전체 메시지
# 확인 메시지를 요청하지 않은 사용자의 확인률은 0이다.
# user_id 별로 그룹화 진행
# 해당 그룹의 action 개수를 카운트 하고 timeout 개수 카운팅해서 나눠서 확인률 뽑는다.
# IF 조건문을 사용해서 cf.action의 값이 confirmed 일때 1 아닐때 0을 출력하게 함. 그리고 이를 더하고 더한값을 해당 그룹의 전체의 action 개수로 나눠서 확인률을 구함
SELECT sg.user_id, IFNULL(ROUND(SUM(IF(cf.action = 'confirmed',1,0))/COUNT(cf.action),2),0)AS confirmation_rate
FROM Signups sg LEFT JOIN Confirmations cf ON sg.user_id = cf.user_id
GROUP BY sg.user_id