--프로그래머스 문제 5-5--
--https://school.programmers.co.kr/learn/courses/30/lessons/133024--

select FLAVOR
from FIRST_HALF 
group by FLAVOR
order by TOTAL_ORDER desc, SHIPMENT_ID asc