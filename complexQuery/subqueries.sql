--find products that are more 
-- expensive than Lettuce(id == 3)
use sql_store;
select *
from products
where unit_price > (
        select unit_price
        from products
        where product_id = 3
    ) --in sql_hr database:
    --find employees whose earn more than average
    use sql_hr;
select *
from employees
where salary > (
        select avg(salary)
        from employees
    )