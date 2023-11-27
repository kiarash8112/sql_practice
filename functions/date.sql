select year(now()),
    curdate(),
    curtime() --currentTime
    --add time to current time
select date_add(now(), interval 1 day)
select date_add(now(), interval -1 day)
select datediff('2019-01-05', '2019-01-01')