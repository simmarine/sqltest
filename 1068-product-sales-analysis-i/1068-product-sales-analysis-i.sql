-- sale_id 에 대해 product_name,year,price 출력 SQL 

SELECT product_name, year,price
FROM Sales LEFT JOIN Product ON Sales.product_id = Product.product_id