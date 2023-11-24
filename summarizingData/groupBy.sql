--return date,payment_method,total_payment
use sql_invoicing;
select p.date,
    pm.name,
    sum(p.amount) as total_payment
from payments p
    join payment_methods pm on p.payment_method = pm.payment_method_id
group by date,
    pm.name
order by date