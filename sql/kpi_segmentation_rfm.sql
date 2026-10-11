-- Segmentation simplifiée, basée uniquement sur le montant dépensé par client.
-- Elle sert de contrôle rapide en SQL et diffère de la segmentation du notebook,
-- qui combine récence, fréquence et montant (notes de 1 à 4).
-- Les chiffres de référence du README sont ceux du notebook.
WITH rfm AS (
  SELECT
    CustomerID,
    DATE_DIFF(DATE('2011-12-10'), DATE(MAX(InvoiceDate)), DAY) AS Recence,
    COUNT(DISTINCT InvoiceNo) AS Frequence,
    ROUND(SUM(Quantity * UnitPrice), 2) AS Montant
  FROM `vente-en-ligne-kaggle.online_retail.online_retail`
  WHERE Quantity > 0
    AND UnitPrice > 0
    AND CustomerID IS NOT NULL
  GROUP BY CustomerID
)
SELECT
  CASE 
    WHEN Montant >= 5000 THEN 'Champion'
    WHEN Montant >= 1000 THEN 'Fidele'
    WHEN Montant >= 500  THEN 'A developper'
    WHEN Montant >= 100  THEN 'A risque'
    ELSE 'Inactif'
  END AS Segment,
  COUNT(*) AS Nb_Clients,
  ROUND(SUM(Montant), 2) AS CA_Segment
FROM rfm
GROUP BY Segment
ORDER BY CA_Segment DESC