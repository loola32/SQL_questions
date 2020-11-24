
--Q1 Answer
select brand_name,
avg(price) as avg_price,
count (distinct product_id) as nr_products
from products
group by brand_name
having nr_products>1

--Q2 Answer
select
(sales_with_promotions/total_sales)*100 as pct_transactions_with_discounts
from
(
select sum(store_sales) as total_sales,
sum (case when promotion_id is not null THEN store_sales end) as sales_with_promotions
from sales)T

--Q3 Answer

select product_class_id,
sum(store_sales) as total_sales
from
(
select P.product_class_id, store_sales
from sales S left join products P
on S.product_id=P.product_id
)T 
group by product_class_id
order by sum(store_sales) desc
limit 3

--Q4 Answer
select --P.brand_name,
distinct S.customer_id
from sales S left join products P
on S.product_id=P.product_id
where P.brand_name in ('Nike', 'New_B')