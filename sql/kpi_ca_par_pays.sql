SELECT
  Country,
  ROUND(SUM(Quantity * UnitPrice), 2) AS CA_Pays,
  COUNT(DISTINCT InvoiceNo) AS Nb_Commandes,
  COUNT(DISTINCT CustomerID) AS Nb_Clients
FROM `vente-en-ligne-kaggle.online_retail.online_retail`
WHERE Quantity > 0
  AND UnitPrice > 0
GROUP BY Country
ORDER BY CA_Pays DESC
LIMIT 10