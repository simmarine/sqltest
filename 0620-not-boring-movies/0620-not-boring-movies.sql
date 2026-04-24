# 영화 제목,장르,평점
# rating은 0 ~ 10사이의 소수점 둘째 자리 값

#ID가 홀수이고 설명이 지루한이 아닌 영화를 찾는 코드
# 평점 높은순서대로 내림차순

SELECT c.id, c.movie, c.description , c.rating
FROM cinema c
WHERE description != 'boring' AND id % 2 = 1
ORDER BY rating DESC