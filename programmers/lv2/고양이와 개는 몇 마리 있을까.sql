--프로그래머스 문제 5-13--
--https://school.programmers.co.kr/learn/courses/30/lessons/59040

SELECT ANIMAL_TYPE, count(ANIMAL_TYPE)
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE
HAVING ANIMAL_TYPE='Cat' OR ANIMAL_TYPE='Dog'
ORDER BY ANIMAL_TYPE 

SELECT ANIMAL_TYPE, count(ANIMAL_TYPE)
FROM ANIMAL_INS
WHERE ANIMAL_TYPE='Cat' OR ANIMAL_TYPE='Dog'
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE

--두 쿼리는 결과적으로는 같은 결과를 반환하지만, 작동 방식에서 약간의 차이가 있습니다. 

--첫 번째 쿼리는 HAVING 절을 사용하여 그룹화된 결과에 대한 조건을 설정합니다. 먼저 전체 데이터를 그룹화한 후 ANIMAL_TYPE이 'Cat' 또는 'Dog'인 경우에만 결과를 반환합니다. 그룹화된 ANIMAL_TYPE 별로 해당하는 동물의 수를 세는 COUNT 함수를 사용하고, 최종 결과는 ANIMAL_TYPE을 오름차순으로 정렬합니다.

--두 번째 쿼리는 WHERE 절을 사용하여 그룹화되기 전에 조건을 설정합니다. ANIMAL_TYPE이 'Cat' 또는 'Dog'인 데이터만 선택하고, 그 후에 그룹화를 수행합니다. 그룹화된 ANIMAL_TYPE 별로 해당하는 동물의 수를 세는 COUNT 함수를 사용하고, 최종 결과는 ANIMAL_TYPE을 오름차순으로 정렬합니다.

--즉, 두 쿼리는 같은 결과를 반환하지만 데이터베이스 엔진의 작동 순서에 차이가 있습니다. HAVING은 그룹화된 결과에 조건을 적용하는 반면, WHERE는 그룹화되기 전에 조건을 적용합니다.