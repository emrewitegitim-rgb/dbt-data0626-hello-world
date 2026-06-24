select
    date_date
    , orders_id
    , ROUND(SUM(revenue), 2) as total_revenue
    , ROUND(SUM(quantity * purchase_price),2) as total_cost
    , ROUND(SUM(revenue - (quantity * purchase_price)),2)  as margin
FROM {{ ref("int_sales_product")}}
GROUP BY date_date, orders_id
