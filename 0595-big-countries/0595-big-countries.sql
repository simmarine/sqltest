# Write your MySQL query statement below
-- 면적이 300만 이상이거나 인구가 2500만명인 경우 
SELECT name, population, area
FROM World
WHERE area >= 3000000 or population >= 25000000

