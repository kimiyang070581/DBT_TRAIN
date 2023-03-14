select
    -- TRUNC(orderdate, 'Month') AS ordermonth,
    -- region,
    custmktsegment,
    sum(orderpartquantity) as totalqty,
    sum(orderpartprice) as totalprice,
    avg(ordercycletime) as avgcycletime
from {{ ref("sdm_orderdetail") }}
where returnflag = 'N'
group by
    -- TRUNC(orderdate, 'Month')
    -- region,
    custmktsegment
order by
    -- TRUNC(orderdate, 'Month')
    -- region,
    custmktsegment
