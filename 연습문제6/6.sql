--연습문제 6-1
select id, name, round(retail_price, 2)
from products

--연습문제 6-2
select id, first_name, last_name, age
from users
where age%2=1
--
select id, first_name, last_name, age
from users
where mod(age,2) = 1;

--연습문제 6-3
select concat(first_name, ', ' ,upper(last_name)) as full_name
from users

--연습문제 6-4
select 
	id, 
	email, 
	extract(year from created_at) as signup_year
from users

--연습문제 6-5
select *
from users
where created_at::DATE between '2020-07-01' and '2020-07-10';
--
select *
from users
where DATE(created_at) >= '2020-07-01' and DATE(created_at) <= '2020-07-11';

--연습문제 6-7
select 
	extract(year from created_at) as signup_year,
	count(id) as user_count
from users
group by signup_year

--연습문제 6-10
select id, first_name,
	length(first_name) as name_length,
	left(first_name, 3) as part_name,
	replace(first_name, left(first_name, 3), '***') as name_with_asterisk
from users

--연습문제 6-12
select extract(hour from created_at) as hour,
	count(id) as user_count
from users
where country='Brasil' and gender='F'
group by hour
order by hour

--연습문제 6-14
--1)
select left(email, position('@' in email)-1)
from users;
--2)
select replace(email, 
	substr(left(email, position('@' in email) - 1), 4), 
	'*****')
from users