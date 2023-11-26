--select clients with at least two invoices
use sql_invoicing;
select *
from clients
where client_id = any (
        select client_id
        from invoices
        group by client_id
        having count(*) > 2
    )