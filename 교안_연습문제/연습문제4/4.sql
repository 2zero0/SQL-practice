-- 연습문제 4-1
select avg(age)
from users

--연습문제 4-2
select avg(age)
from users
where gender = 'F'

--연습문제 4-3
select country, count(id)
from users
group by country 

--연습문제 4-4
select country,
	count(id) as country_user_count
from users
where gender = 'M'
group by country

--연습문제 4-5
select country, count(id) as country_user_count
from users
where created_at between '2020-01-01' and '2020-02-01'
group by country;
--
select 
    country,
    count(id) as country_user_count
from users
where created_at >= '2020-01-01'
and created_at < '2020-02-01'
group by country

--연습문제 4-6
select 
    country,
    gender,
    count(id) as country_user_count
from users
where created_at >= '2020-01-01'
and created_at < '2020-02-01'
group by country, gender

--연습문제 4-7
select user_id, sum(num_of_item) 
from orders 
where created_at >= '2022-01-01' 
and created_at < '2023-01-01' 
and status = 'Returned' 
group by user_id;