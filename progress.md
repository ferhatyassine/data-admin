# Progress log

## Day 1 — Setup complete
- MySQL Community Server installed (localhost:3306)
- DBeaver connected, database `cepeo_sim` created
- Schema loaded: 6 tables (ecoles, employes, eleves, absences, incidents_it, ressources_it)
- First query: `SELECT * FROM ecoles;` → 5 rows
- Understood: PRIMARY KEY, FOREIGN KEY, AUTO_INCREMENT, ENUM
- Key insight: ecole_id = NULL on employes = central office staff (like the data admin role)

# Journal de progression

## Jour 1 - Installation complete
- MySQL Community Server 8.0 installé (localhost:3306)
- MySQL Workbench 8.0 CE connecté
- Base de données `bd_scolaire` créée avec 3 tables : ecoles, eleves, absences
- Schéma chargé et données de test insérées
- Premières requêtes exécutées : SELECT, WHERE, ORDER BY, COUNT
- Notion comprise : PRIMARY KEY, FOREIGN KEY, AUTO_INCREMENT, ENUM

## A venir 
- jour 2 : SELECT avance - filtres, tri , agregation