--return column payment_method and total
use sql_invoicing;
select pm.name,
    sum(p.amount) as total
from payments p
    join payment_methods pm on p.payment_method = pm.payment_method_id
group by pm.name with rollup;