SELECT
  Description,
  ROUND(SUM(Quantity * UnitPrice), 2) AS CA_Produit,
  SUM(Quantity) AS Quantite_Vendue
FROM `vente-en-ligne-kaggle.online_retail.online_retail`
WHERE Quantity > 0
  AND UnitPrice > 0
    AND Description NOT IN ('DOTCOM POSTAGE', 'POSTAGE', 'Manual', 'Adjust bad debt', 'AMAZON FEE', 'CRUK Commission')
GROUP BY Description
ORDER BY CA_Produit DESC
LIMIT 10