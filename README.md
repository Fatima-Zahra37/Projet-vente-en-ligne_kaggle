# 🛒 Analyse Vente en Ligne — Dataset Kaggle

## 📌 Présentation du projet

Ce projet est une analyse complète d'un dataset de vente en ligne
issu de Kaggle (Online Retail Dataset — UCI Machine Learning Repository).
Il a été réalisé dans le cadre de ma reconversion professionnelle
en tant que Data Analyst.

L'objectif est d'analyser la performance commerciale d'un e-commerce
B2B britannique sur la période 2010-2011, d'identifier les leviers
de croissance, la saisonnalité et le profil client.

---

## 🎯 Sous-périmètre métier

> Analyser les ventes, les produits et les clients d'un e-commerce B2B
> pour identifier les opportunités de croissance et optimiser
> la stratégie commerciale.

---

## 📂 Structure du projet
```text
Projet-vente-en-ligne_kaggle/
│
├── data/
│   └── online_retail_clean.csv       # Dataset source (Kaggle)
│
├── notebooks/
│   └── analyse.ipynb                 # Notebook principal d'analyse
│
├── requirements.txt                  # Librairies Python utilisées
└── README.md                         # Documentation du projet
```

## 🗺️ Plan d'analyse

| Étape | Description | Statut |
|-------|-------------|--------|
| 1 | Exploration & aperçu général | ✅ Terminé |
| 2 | Nettoyage des données | ✅ Terminé |
| 3 | Analyse temporelle des ventes | ✅ Terminé |
| 4 | Analyse produits | ✅ Terminé |
| 5 | Segmentation clients RFM | ✅ Terminé |
| 6 | Analyse géographique | ✅ Terminé |
| 7 | KPI en SQL — BigQuery | ✅ Terminé |
| 8 | Dashboard Power BI | ✅ Terminé |

---

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

---

## 🛠️ Stack technique

| Outil | Usage |
|-------|-------|
| Python 3.14 | Langage principal |
| Pandas | Manipulation des données |
| NumPy | Calculs numériques |
| Matplotlib / Seaborn | Visualisations |
| BigQuery (Google Cloud) | Requêtes SQL |
| Power BI | Dashboard interactif |
| Git / GitHub | Versioning |

---

## 📁 Source des données

- **Dataset** : Online Retail Dataset
- **Source** : [Kaggle](https://www.kaggle.com/)
- **Origine** : UCI Machine Learning Repository
- **Période** : Décembre 2010 — Décembre 2011
- **Volume** : 541,909 transactions initiales → 524,878 après nettoyage

---

## 👩‍💻 Auteure

**Fatima-Zahra** — En reconversion vers le métier de Data Analyst
[GitHub](https://github.com/Fatima-Zahra37)