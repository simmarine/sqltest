# Write your MySQL query statement below
# 각 제품의 평균 판매 가격을 구하는 솔루션 
# average_price는 소수점 둘째자리까지 반올림 (ROUND)
# 판매량 없는 제품은 평균 판매량 O (IFNULL)
# 제품ID, 시작일 , 마지막일 , 가격

SELECT p.product_id, IFNULL(ROUND(SUM(p.price*u.units)/SUM(u.units),2),0) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u ON p.product_id = u.product_id AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id 