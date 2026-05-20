# x,y,z 세개의 선분이 있음
# 세 개의 선분 각각에 대해 삼각형을 이룰 수 있는지 판단
# 삼각형 조건 : 두변의 합이 한 변보다 크면됨
SELECT x,y,z,
CASE WHEN x+y > z AND x+z > y AND y+z > x THEN 'Yes' Else 'No' END as triangle
FROM Triangle