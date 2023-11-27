--return customer,phone column
-- customer is concat of firstName and lastName of user
-- is user didn't has phone return Unknown
use sql_store;
select concat(first_name, ' ', last_name) as customer,
    ifnull(phone, "Unknown")
from customers