--Do a cross join between shippers and products
-- using the implicit syntax
-- and then using the explicit syntax
use sql_store;
select s.name,
    p.name
from shippers s,
    products p;
select s.name,
    p.name
from shippers s
    cross join products p