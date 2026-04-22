-- low_fats Y: 저지방 N: 저지방 아님
-- recyclable Y:재활용가능 N: 재활용 불가
-- 저지방이면서 재활용 가능한 제품 ID
SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y'