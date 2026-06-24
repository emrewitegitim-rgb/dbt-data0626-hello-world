select
    s.*
    , p.purchase_price
FROM {{ ref("stg_raw__sales")}} as s
JOIN {{ ref("stg_raw__products")}} as p
    on s.products_id = p.products_id
