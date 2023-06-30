--프로그래머스 문제 5-2--
--https://school.programmers.co.kr/learn/courses/30/lessons/59036--

select ANIMAL_ID, NAME
from ANIMAL_INS
where INTAKE_CONDITION = 'Sick'
order by ANIMAL_ID