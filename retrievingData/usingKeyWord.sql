--use payments and return date,client,amount,name
use sql_invoicing;
select p.date,
    c.name as client,
    p.amount,
    pm.name as method
from payments p
    join clients c using (client_id)
    join payment_methods pm on p.payment_id = pm.payment_method_id