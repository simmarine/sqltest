# 각 사용자에 대해 팔로워 수를 반환하는 솔루션 작성 
# 결과 테이블을 user_id 기준 오름차순 정렬

SELECT user_id , COUNT(follower_id) as followers_count
FROM Followers
GROUP BY user_id 
ORDER BY user_id 