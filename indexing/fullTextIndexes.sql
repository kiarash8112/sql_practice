use sql_blog;
create fulltext index idx_title_body on posts(title, body);
select *,
    match(title, body) against('react redux')
from posts
where match(title, body) against('react' in boolean mode)