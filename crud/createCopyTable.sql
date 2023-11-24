--create copy of invoices and instead of client_id use client name
use sql_invoicing;
create table invoices_arch as
select i.invoice_id,
    i.number,
    c.name,
    i.invoice_total,
    i.payment_total
from invoices i
    join clients c using (client_id)