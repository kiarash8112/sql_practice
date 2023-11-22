--get order items along with name of the product
use sql_store;
select o.order_id,
    o.product_id,
    p.name,
    o.quantity
from order_items o
    join products p on o.product_id = p.product_id;