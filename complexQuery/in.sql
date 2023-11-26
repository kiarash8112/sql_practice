--find products that have never been ordered
use sql_store;
select *
from products
where product_id not in (
        select distinct product_id
        from order_items
    ) --find clients without invoices
    use sql_invoicing;
select *
from clients
where clients.client_id not in (
        select distinct client_id
        from invoices
    )