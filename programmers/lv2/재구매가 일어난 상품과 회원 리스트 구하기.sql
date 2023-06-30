--프로그래머스 문제 5-17--
--https://school.programmers.co.kr/learn/courses/30/lessons/131536--

select USER_ID, PRODUCT_ID
from ONLINE_SALE
group by PRODUCT_ID, USER_ID
having count(PRODUCT_ID)>=2
order by USER_ID asc, PRODUCT_ID desc