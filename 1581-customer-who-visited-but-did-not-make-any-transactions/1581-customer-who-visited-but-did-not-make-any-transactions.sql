-- 거래 없이 방문한 사용자 ID와 해당 사용자의 방문 횟수

SELECT vi.customer_id, count(vi.visit_id) AS count_no_trans
FROM Visits vi LEFT JOIN Transactions ts ON vi.visit_id = ts.visit_id
WHERE ts.transaction_id IS NULL 
GROUP BY vi.customer_id