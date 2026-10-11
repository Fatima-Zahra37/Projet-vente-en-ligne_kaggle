-- Validation : comparaison des KPI Python et BigQuery sur le dataset nettoyé
-- Résultat attendu : 524 876 lignes, CA total 10 396 457,60 £, CA novembre 2011 1 503 866,78 £
SELECT
  COUNT(*) AS nb_lignes,
  ROUND(SUM(Quantity * UnitPrice), 2) AS ca_total,
  ROUND(SUM(IF(EXTRACT(YEAR FROM InvoiceDate) = 2011
               AND EXTRACT(MONTH FROM InvoiceDate) = 11,
               Quantity * UnitPrice, 0)), 2) AS ca_novembre_2011,
  COUNT(DISTINCT InvoiceNo) AS nb_commandes
FROM `vente-en-ligne-kaggle.online_retail.online_retail`