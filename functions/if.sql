--return product_id,name,orders,frequency
-- if orders > 1 then frequency is once other wise is 
--Many times
use sql_store;
select distinct product_id,
    p.name,
    count(*) as orders,
    if(count(*) > 1, 'manyTime', 'once') as frequency
from order_items oi
    join products p using (product_id)
group by product_id