SELECT 
  ROUND(SUM(Quantity * UnitPrice), 2) AS CA_Total
FROM `vente-en-ligne-kaggle.online_retail.online_retail`
WHERE Quantity > 0
  AND UnitPrice > 0