--write query against invoices table
--to generate (data_range , total_sales,total_payment,
--what_we_expect(different total_sales and total_payment))
use sql_invoicing;
select 'first half of 2019' as date_range,
    sum(invoice_total),
    sum(payment_total),
    sum(invoice_total - payment_total) as what_we_expect
from invoices
where invoice_date between '2019-01-01' and '2019-06-01'
union
select 'second half of 2019' as date_range,
    sum(invoice_total),
    sum(payment_total),
    sum(invoice_total - payment_total) as what_we_expect
from invoices
where invoice_date between '2019-06-01' and '2020-01-01'
union
select 'total' as date_range,
    sum(invoice_total),
    sum(payment_total),
    sum(invoice_total - payment_total) as what_we_expect
from invoices
where invoice_date between '2019-01-01' and '2020-01-01'