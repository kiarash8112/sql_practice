--return productID,name,quantity
--(join products table with orderItem table)
use sql_store;
select p.product_id,
    p.name,
    oi.quantity
from products p
    left join order_items oi on p.product_id = oi.product_id