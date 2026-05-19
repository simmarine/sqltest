# 모든 제품을 구매한 고객 ID 출력하는 솔루션 작성
SELECT customer_id
FROM Customer c
LEFT JOIN Product p ON c.product_key = p.product_key 
GROUP BY c.customer_id 
HAVING COUNT(DISTINCT c.product_key) = (SELECT COUNT(*) FROM Product)