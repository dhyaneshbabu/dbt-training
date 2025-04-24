select 
productname,
category,
subcategory,
sum(orderprofit) as profit

from {{ ref('stg_orders') }}