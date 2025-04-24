 select 
 o.orderid,
 o.orderdate,
 o.shipdate,
 o.shipmode,
 o.ordersellingprice-o.ordercostprice as orderprofit,
  o.ordersellingprice,
  o.ordercostprice,
  
 --from raw customer
 c.customername,
 c.segment,
 c.country,

 -- from product
p.category,
p.productname,
p.subcategory


 from {{ ref('raw_orders') }} as o
 left join {{ref("raw_customer")}} as  c
 left join {{ ref('raw_products') }} as p