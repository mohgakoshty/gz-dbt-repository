SELECT*
FROM {{ref("finance_days")}}
JOIN LEFT {{ref("int_campaigns_day")}}
USING (date_date)