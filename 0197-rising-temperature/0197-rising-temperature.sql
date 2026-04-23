-- 어제보다 온도가 높은 행 출력
-- 이전행 과 현재행의 temperature 값을 비교해서 높은것만 출력시키면 됨
-- DATEDIFF 함수 활용해서 어제 온도와 오늘 온도 차이 비교 (현재 일자 - 어제 일자 ) = 1 로 설정 / DATEDIFF(현재 일자,어제일자)
SELECT W1.id
FROM Weather W1
JOIN Weather W2 ON DATEDIFF(W1.recordDate,W2.recordDate) = 1
WHERE W1.temperature > W2.temperature 
