--return order_date,orderID,first_name,shipper,status
use sql_store;
select o.order_date,
    o.order_id,
    c.first_name,
    s.name as shipper,
    os.name
from orders o
    join customers c on o.customer_id = c.customer_id
    left join shippers s on o.shipper_id = s.shipper_id
    join order_statuses os on o.status = os.order_status_id