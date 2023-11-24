--update order of cusomters who have more than 3000 points
--and add 'golden customer' to comments of their orders
use sql_store;
update orders
set comments = 'golden user'
where customer_id in (
        select customer_id
        from customers
        where points > 3000
    )