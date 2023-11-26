-- Select invoices larger than all invoices of 
-- client 3
use sql_invoicing;
select *
from invoices
where invoice_total > all (
        select invoice_total
        from invoices
        where client_id = 3
    )