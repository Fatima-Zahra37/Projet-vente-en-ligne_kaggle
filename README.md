# 🛒 Analyse Vente en Ligne — Dataset Kaggle

## 📌 Contexte

Ce projet analyse la performance commerciale d'un e-commerce B2B britannique
(Online Retail Dataset — UCI Machine Learning Repository) sur la période 2010-2011.
Il simule une mission d'analyse complète : exploration, nettoyage, KPI, segmentation
clients et restitution dans un tableau de bord Power BI interactif.

## 🎯 Objectifs

- Analyser l'évolution du chiffre d'affaires et la saisonnalité des ventes
- Identifier les produits et marchés les plus performants
- Segmenter les clients par valeur (récence, fréquence, montant)
- Valider les KPI Python via des requêtes SQL BigQuery
- Restituer les enseignements dans un tableau de bord Power BI interactif

## 📐 Périmètre d'étude

| Paramètre | Valeur |
|-----------|--------|
| Marché | Royaume-Uni (B2B) |
| Période | Décembre 2010 → Décembre 2011 |
| Source | Online Retail Dataset — Kaggle / UCI |
| Volume initial | 541 909 transactions |
| Volume après nettoyage | 524 878 transactions |

## 📂 Structure du dépôt

```text
Projet-vente-en-ligne_kaggle/
│
├── data/
│   └── online_retail_clean.csv       ← Dataset source (Kaggle)
│
├── notebooks/
│   └── analyse.ipynb                 ← EDA, nettoyage, analyses, segmentation clients
│
├── powerbi/
│   └── dashboard_kaggle.pbix         ← Dashboard Power BI interactif
│
├── requirements.txt                  ← Librairies Python utilisées
└── README.md                         ← Documentation du projet
```


## 📊 Conventions métier

| Règle | Définition |
|-------|-----------|
| Vente | Ligne avec Quantity > 0 et UnitPrice > 0 |
| Retour | Ligne avec Quantity < 0 |
| CA | Quantity × UnitPrice (sur les ventes uniquement) |
| Panier moyen | CA ÷ nombre de commandes distinctes |
| Client actif | CustomerID non nul |

## 📈 KPI suivis

| KPI | Définition |
|-----|-----------|
| Chiffre d'affaires | Somme de Quantity × UnitPrice |
| Nb commandes | Nombre de InvoiceNo distincts |
| Nb clients | Nombre de CustomerID distincts |
| Panier moyen | CA ÷ Nb commandes |
| Score de valeur client | Score Récence + Fréquence + Montant (1 à 4 par dimension) |

## 📊 Résultats clés

### 💰 Chiffre d'affaires
- **CA total** : £10,642,110
- **Meilleur mois** : Novembre 2011 — £1,336,139
- **Heure de pointe** : 10h → clientèle B2B confirmée

### 🛍️ Produits
- **Top produit CA** : REGENCY CAKESTAND 3 TIER — £175,000
- **Top produit volume** : PAPER CRAFT LITTLE BIRDIE — 80,000 unités
- **Produit le plus cher** : PICNIC BASKET WICKER 60 PIECES — £635

### 👤 Clients
- **4 048 clients uniques** analysés
- **Champions** : génèrent £6,613,137 (76% du CA total)
- **Loi de Pareto confirmée** : 20% des clients = 80% du CA

### 🌍 Géographie
- **Royaume-Uni** : marché dominant
- **Netherlands** : n°1 international, panier moyen £3,052
- **Germany & France** : plus grand nombre de clients internationaux

## 🔧 Décisions techniques

**Nettoyage des données :**
Suppression des doublons (5 268 lignes), des retours (Quantity < 0),
des prix aberrants (UnitPrice ≤ 0) et des descriptions manquantes.
Les CustomerID manquants (~25%) ont été conservés avec un flag `ClientConnu`
pour ne pas fausser le CA total.

**Segmentation clients :**
Découpage en quartiles (1 à 4) sur trois dimensions : récence, fréquence et montant.
Score global → 5 segments de Champion à Inactif.

**Validation BigQuery :**
Les KPI calculés en Python ont été recalculés en SQL BigQuery.
Écart CA : £11,062 (0,1%) — expliqué par une ligne ignorée à l'import.
Les ratios restent stables, confirmant la cohérence de l'analyse.

**Dashboard Power BI :**
Modèle avec table `Dim_Date` reliée à la table de faits `Online_Retail`.
Mesures DAX pour CA N-1 et évolutions en %.
Filtre Année interactif (2010 / 2011).

## 💡 Principaux enseignements

- Le CA progresse fortement de 2010 à 2011, porté par une clientèle B2B fidèle.
- **Novembre concentre 12,5% du CA annuel** — saisonnalité pré-fêtes très marquée.
- **20% des clients (Champions) génèrent 76% du CA** — risque de concentration élevé.
- Les **Pays-Bas** sont le marché international le plus rentable malgré un faible volume de clients.
- Le **panier moyen néerlandais (£3,052)** est 8× supérieur au panier moyen global (£376).
- Les clients commandent **le matin en semaine** → comportement B2B confirmé.

## 🛠️ Stack technique

| Outil | Usage |
|-------|-------|
| Python 3.14 | Langage principal |
| Pandas | Manipulation des données |
| NumPy | Calculs numériques |
| Matplotlib / Seaborn | Visualisations |
| BigQuery (Google Cloud) | Requêtes SQL de validation |
| Power BI | Dashboard interactif |
| Git / GitHub | Versioning |

## ⚙️ Installation et reproduction

**Prérequis :**
- Python 3.10+
- VS Code avec extension Jupyter
- Power BI Desktop
- Compte Google Cloud (BigQuery)

```bash
# Cloner le dépôt
git clone https://github.com/Fatima-Zahra37/Projet-vente-en-ligne_kaggle.git

# Créer et activer l'environnement virtuel
python -m venv venv
venv\Scripts\activate

# Installer les dépendances
pip install -r requirements.txt
```

**Étapes de reproduction :**
1. Placer le fichier CSV dans `data/`
2. Exécuter `notebooks/analyse.ipynb` pour l'analyse complète
3. Importer `data/online_retail_bigquery.csv` dans BigQuery
4. Exécuter les requêtes SQL dans BigQuery
5. Ouvrir `powerbi/dashboard_kaggle.pbix` avec Power BI Desktop

## 📁 Source des données

- **Dataset** : Online Retail Dataset
- **Source** : [Kaggle](https://www.kaggle.com/)
- **Origine** : UCI Machine Learning Repository
- **Période** : Décembre 2010 — Décembre 2011
- **Volume** : 541,909 transactions initiales → 524,878 après nettoyage

---

## 👩‍💻 Auteure

**Fatima-Zahra FRINDOU** — Data Analyst
[GitHub](https://github.com/Fatima-Zahra37)