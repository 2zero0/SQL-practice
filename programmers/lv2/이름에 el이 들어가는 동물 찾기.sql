--프로그래머스 문제 5-12--
--https://school.programmers.co.kr/learn/courses/30/lessons/59047--

select ANIMAL_ID, NAME
from ANIMAL_INS
where ANIMAL_TYPE='Dog' and name like '%el%'
order by NAME