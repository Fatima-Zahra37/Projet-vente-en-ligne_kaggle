SELECT
  COUNT(DISTINCT InvoiceNo) AS Nb_Commandes,
  COUNT(DISTINCT CustomerID) AS Nb_Clients,
  ROUND(SUM(Quantity * UnitPrice) / COUNT(DISTINCT InvoiceNo), 2) AS Panier_Moyen
FROM `vente-en-ligne-kaggle.online_retail.online_retail`
WHERE Quantity > 0
  AND UnitPrice > 0