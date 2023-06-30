--프로그래머스 문제 5-16--
--https://school.programmers.co.kr/learn/courses/30/lessons/59041--

select NAME, count(NAME) as count
from ANIMAL_INS 
where NAME is not null
group by NAME
having count(NAME)>=2
order by NAME