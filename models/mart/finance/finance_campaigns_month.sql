SELECT extract(year from date_date) ||"-"|| extract(month from date_date) AS date_month, 
SUM(nb_transactions) AS nb_transactions,
ROUND(SUM(ads_margin),2) AS ads_margin, 
ROUND(AVG(average_basket),2) AS average_basket,
ROUND(SUM(operational_margin),2) AS operational_margin
FROM {{ref("finance_campaigns_day")}}
GROUP BY extract(year from date_date) ||"-"|| extract(month from date_date) 
