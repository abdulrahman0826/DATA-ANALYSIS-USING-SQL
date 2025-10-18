#find top 10 highest revenue generating products.
select Product_id,sum(sales_price) as sales from orders group by Product_id order by sales DESC LIMIT 10;
#find top 5 highest selling products in each region..
with cte as(select Region,Product_id,sum(sales_price) as sales from orders group by Region,Product_id)
select * from(select * ,row_number() over (partition by Region order by sales DESC) as rn from cte) A where rn<=5;
#find month over month growth comparison foe 2022 and 2023 sales ..
with cte as (select year(`Order Date`) as order_year,month(`Order Date`) as order_month,sum(sales_price)as sales
from orders 
group by year(`Order Date`),month(`Order Date`)
order by  year(`Order Date`),month(`Order Date`)
)
select order_month
, sum(case when order_year=2022 then sales else 0 end) as sales_2022
, sum(case when order_year=2023 then sales else 0 end) as sales_2023
from cte 
group  by order_month 
order by order_month
#for each category which month had highest sales
with cte as (
select Category, format(`Order Date`,'yyyyMM') as order_year_month, sum(sales_price) as sales from orders
group by Category,format(`Order Date`,'yyyyMM')
)
select * from(
select *,
row_number()over (partition by Category order by sales desc) as rn
from cte 
) a where rn=1
# which sub-cat had the highest growth by  profit in 2023 compare to 2022
with cte as (
select `Sub Category`, year(`Order Date`) as order_year,sum(sales_price)as sales
from orders 
group by `Sub Category`,year(`Order Date`)
)
select `Sub Category`
, sum(case when order_year=2022 then sales else 0 end) as sales_2022
, sum(case when order_year=2023 then sales else 0 end) as sales_2023
from cte 
group  by `Sub Category` 


