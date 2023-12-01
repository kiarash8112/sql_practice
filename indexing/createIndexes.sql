--write query to find customers with more than 
--1000 points
use sql_store;
create index idx_points on customers(points);
explain
select customer_id
from customers
where points > 1000;