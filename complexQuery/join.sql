--Find customers who have ordered lettuce(id == 3)
-- select customer_id,first_name,last_name
use sql_store;
select distinct c.first_name,
    c.last_name,
    c.customer_id
from order_items
    join orders using (order_id)
    join customers c using (customer_id)
where product_id = 3