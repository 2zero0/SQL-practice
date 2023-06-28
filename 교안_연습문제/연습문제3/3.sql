--연습문제 3-1
select * 
from products
where category = 'Swim';

--연습문제 3-2
select id, cost, brand
from products
where brand='2EROS';

--연습문제 3-3
select *
from products
where cost<=30 and department='Men'
limit 10;

--연습문제 3-4
select distinct category
from products 
where retail_price>=40;

--연습문제 3-5
select *
from products
where cost>=50 and cost<=70;
--
select *
from products
where cost between 50 and 70

--연습문제 3-6
select *
from products
where name like '%Men%' and 
name like '%Sport%';

--연습문제 3-7
select *, (cost/retail_price)*100 as sale_price
from products
where not (brand='TRY') and 
	name like '%Suit%' and 
	(cost/retail_price)*100>=50;
--	
select *, cost / retail_price * 100 as sale_price
from products 
where brand != 'TYR'
and name like '%Suit%'
and cost / retail_price * 100 >= 50