# 30일 기간동안의 일일 활성 사용자 수를 구하는 솔루션을 작성
# 2019-07-27, 사용자가 해당일에 최소 한 번 이상 활동을 했다면 해당일에 활성 사용자라고 간주함

SELECT activity_date as day, COUNT(DISTINCT user_id) as active_users
FROM Activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 day) AND '2019-07-27'
GROUP BY activity_date
