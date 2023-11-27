--return customerID,first_name,points,type
use sql_store;
select first_name,
    points,
    case
        when points > 3000 then 'gold'
        when points > 2000
        and points < 3000 then 'silver'
        else 'broonze'
    end as type
from customers