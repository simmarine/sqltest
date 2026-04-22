-- referee_id 가 2가 아니면서 아무에게도 추천 받지(null)못한 사람

Select name
FROM Customer
WHERE referee_id IS NULL OR referee_id != '2'