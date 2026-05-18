# 처음 로그인한 날 다음에도 로그인한 플레이어의 비율을 소수점 둘째자리까지 구하는 문제
# 처음 로그인한 날 바로 다음 날에 로그인한 플레이어 수를 전체 플레이어 수로 나눠야함
# 메인 쿼리 WHERE 절에서 필터링 된 상태라 SELECT 절에서 COUNT(*)를 해도 전체행이 아닌 필터링된 행의 개수를 카운팅함
SELECT ROUND(COUNT(event_date)/(SELECT COUNT(DISTINCT player_id) FROM Activity),2) as fraction
FROM  (SELECT player_id, event_date, LEAD(event_date,1)OVER(PARTITION BY player_id ORDER BY event_date) as next_date
                FROM Activity) as na # date 기준 현재 행과 다음 행을 출력하는 뷰 테이블

# 최초 로그인 조건 + 첫날과 그 다음날에 접속한 플레이어를 찾는 조건
WHERE event_date = (SELECT MIN(event_date)
                    FROM Activity
                    WHERE player_id = na.player_id) AND DATE_ADD(event_date,INTERVAL 1 DAY) = next_date
                    # 날짜 연산 evnet_date + 1 은 날짜가 아닌 숫자로 처리가 됨
                    # 날짜 연산은 DATE_ADD(대상 컬럼, INTERVAL 연산수 연산기준 )