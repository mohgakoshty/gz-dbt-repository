SELECT*, 
quantity*CAST(purchase_price AS FLOAT64) AS purchase_cost,
revenue-(quantity*CAST(purchase_price AS FLOAT64)) AS margin
FROM {{ref("stg_raw__sales")}}
LEFT JOIN {{ref("stg_raw__product")}}
USING (products_id)
LEFT JOIN {{ref("stg_raw__ship")}}
USING (orders_id)