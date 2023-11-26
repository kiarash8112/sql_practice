--find the products that have never been ordered
use sql_store;
select *
from products p
where not exists(
        select product_id
        from orders
        where product_id = p.product_id
    )