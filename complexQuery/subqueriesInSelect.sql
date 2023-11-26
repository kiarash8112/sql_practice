--return client_id,name,total_sales,average,difference
use sql_invoicing;
select client_id,
    c.name,
    sum(invoice_total) as total_sales,
    (
        select avg(invoice_total)
        from invoices
    ) as average,
    sum(invoice_total) - (
        select average
    ) as difference
from invoices
    join clients c using (client_id)
group by client_id