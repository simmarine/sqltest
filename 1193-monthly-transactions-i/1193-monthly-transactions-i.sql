# 월(month) + 국가(country) 별로
SELECT 
DATE_FORMAT(trans_date,'%Y-%m') as month, 
country,
COUNT(*) as trans_count,
SUM(state = 'approved') as approved_count,
SUM(amount) as trans_total_amount,
SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) as approved_total_amount
FROM Transactions
GROUP BY 1, country