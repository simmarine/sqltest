# 고객의 희망 배달날짜가 주문 날짜와 같으면 -> 즉시(immediate) 주문
# 그렇지 않으면 -> 예약(Scheduled) 주문
# 각 고객의 첫 주문은 가장 이른 order_date의 주문을 의미함
# 모든 고객의 첫번째 주문 중 즉시 주문의 비율(%)을 소숫점 둘째 자리까지 반올림하여 구해야함.
# order_data = customer_pref_delivery_date -> 즉시주문 
SELECT ROUND(SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END)/count(*)*100 ,2) AS immediate_percentage
FROM Delivery d
JOIN (SELECT customer_id,MIN(order_date) as first_order
                FROM Delivery
                GROUP BY customer_id) as fd ON d.customer_id = fd.customer_id

WHERE d.order_date = fd.first_order