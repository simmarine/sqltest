# Write your MySQL query statement below
# 단일 숫자 : 표에 한번만 나타난 숫자를 말함 MyNumbers
# 가장 큰 단일 숫자를 찾아야함. 만약 단일 숫자가 없으면 null
# 단일 숫자 -> num 기준으로 그룹화 해서 카운팅 했을때,1 초과 이면 여러번 있는 수이기 때문에 단일 숫자가 아님
SELECT MAX(mn.num) as num
FROM MyNumbers mn ,(SELECT num
                FROM MyNumbers
                GROUP BY num
                HAVING COUNT(num)<=1) mmn
WHERE  mn.num = mmn.num