--연습문제 5-1
select country, count(id) as user_count
from users
group by country
having count(id)>=3000
order by user_count desc

--연습문제 5-2
select *
from products
where category='Sweaters' and department='Women'
order by retail_price 
limit 5;

--연습문제 5-3
select brand , avg(retail_price) as retail_price_avg
from products
where category='Sweaters' and department='Women'
group by brand
having avg(retail_price)<=100
order by retail_price_avg

--연습문제 5-4
select 
	id, 
	name, 
	category, 
	brand, 
	cost, 
	retail_price,
	(retail_price-cost) as profit,
	(retail_price-cost)/retail_price*100 as profit_rate
from products

--연습문제 5-5
select 
	brand,
	min((retail_price-cost)/retail_price*100) as min_profit_rate,
	max((retail_price-cost)/retail_price*100) as max_profit_rate,
	avg((retail_price-cost)/retail_price*100) as avg_profit_rate
from products
where category = 'Swim'
group by brand 

--연습문제 5-6
select 
	brand,
	avg((retail_price-cost)/retail_price*100) as avg_profit_rate
from products
where category = 'Swim'
group by brand
order by avg_profit_rate desc
limit 5;

--연습문제 5-7
select count(*), category
from products
where department='Men'
group by category
having category not like '%Sport%'
order by count(*) desc