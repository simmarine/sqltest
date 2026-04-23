-- start 는 머신이 지정된 타임 스탬프 프로세스 시작을 의미
-- end 는 머신이 지정된 타임스탬프에 프로세스를 종료함을 의미
-- 모든 (machine_id,process_id) 쌍에 대해 start 타임스탬프는 항상 end 타임스탬프보다 앞선다

-- 각 머신이 프로세스를 완료하는데 걸리는 평균시간을 구하는 솔루션
-- 프로세스 완료 시간은 종료 타임스탬프 - 시작 타임스탬프
-- 평균 시간은 해당 머신에서 실행된 모든 프로세스의 완료 시간을 합산한 후 프로세스 수로 나눈값

-- 결과 machine_id 와 평균 시간(processing_time)이 포함되어야하며 평균 시간은 소수점 셋째 자리까지 반올림
WITH ProcessTime AS(
    SELECT machine_id, process_id, activity_type, timestamp,
    LEAD(timestamp) OVER(PARTITION BY machine_id,process_id ORDER BY timestamp) AS end_time
    FROM Activity
)

SELECT machine_id, ROUND(AVG(end_time-timestamp),3) AS processing_time
FROM ProcessTime
WHERE activity_type = 'start'
GROUP BY machine_id

