SELECT* EXCEPT(logcost, shipping_fee, ship_cost),
margin+shipping_fee-logcost-CAST(ship_cost AS FLOAT64) AS operational_margin
FROM {{ref("int_orders_margin")}}
LEFT JOIN {{ref("stg_raw__ship")}}
USING (orders_id)
ORDER BY orders_id DESC