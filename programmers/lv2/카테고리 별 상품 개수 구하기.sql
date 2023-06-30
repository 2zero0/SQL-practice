--프로그래머스 문제 5-14--
--https://school.programmers.co.kr/learn/courses/30/lessons/131529--

select substr(PRODUCT_CODE, 1, 2) as CATEGORY,count(PRODUCT_ID) as PRODUCTS
from PRODUCT 
group by CATEGORY
order by CATEGORY