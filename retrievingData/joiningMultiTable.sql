-- join payments table with payment_methods and client 
use sql_invoicing;
select p.client_id,
    c.name,
    p.invoice_id,
    p.date,
    pm.name
from payments p
    join payment_methods pm on p.payment_method = pm.payment_method_id
    join clients c on c.client_id = p.client_id;