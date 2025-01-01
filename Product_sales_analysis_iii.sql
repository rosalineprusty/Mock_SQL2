--Write your MySQL query statement below
with cte as (select distinct product_id , min(year) over (partition by product_id) as 'first_year' from sales ) 
select s.product_id, s.year as 'first_year', s.quantity, s.price from sales s inner join cte c on c.product_id = s.product_id and s.year = c.first_year 

