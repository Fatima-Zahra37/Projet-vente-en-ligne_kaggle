SELECT
  EXTRACT(YEAR FROM InvoiceDate) AS Annee,
  EXTRACT(MONTH FROM InvoiceDate) AS Mois,
  ROUND(SUM(Quantity * UnitPrice), 2) AS CA_Mensuel
FROM `vente-en-ligne-kaggle.online_retail.online_retail`
WHERE Quantity > 0
  AND UnitPrice > 0
GROUP BY Annee, Mois
ORDER BY Annee, Mois