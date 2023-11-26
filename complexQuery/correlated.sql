--select employees whose salary is 
--above the average in their office
use sql_hr;
select *
from employees e
where salary > (
        select avg(salary)
        from employees
        where e.office_id = office_id
    ) --get invoices that are larger than the
    --client's average invoice amount
select *
from invoices i
where invoice_total > (
        select avg(invoice_total)
        from invoices
        where client_id = i.client_id
    )
order by client_id