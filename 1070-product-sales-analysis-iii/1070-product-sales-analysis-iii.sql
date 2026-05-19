# 각 제품이 판매되기 시작한 첫 해에 발생한 모든 판매량을 찾는 방법
# product_id 별로 Sales 테이블에서 가장 이른 연도 (첫 판매 연도)를 찾아라
# 해당 제품의 첫 판매 연도에 해당하는 모든 판매 내역을 반환
# 같은 product_id 중에서 연도중 최소 연도를 찾으면 첫 판매 년도가 나옴

SELECT s.product_id, fs.first_year, quantity, price
FROM Sales s
JOIN (  SELECT product_id,MIN(year) as first_year
        FROM Sales
        GROUP BY product_id) as fs ON s.product_id = fs.product_id
WHERE s.year = fs.first_year
