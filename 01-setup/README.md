# jour 1 - Installation et premier schema

## Ce que j'ai installe
- MySQL Community server 8.0(localhost, port 3306)
- MySQL Workbranch 8.0 CE (interface graphique SQL)
- VS Code avec l'extention SQLTools

## ce que j'ai appris 
- une **base de donnees** contient des tables
- une **table** = lignes  (enregistrements) + colonnes (champs)
- `PRIMARY KEY` = identifiant unique de chaque ligne 
- `FOREIGN KEY` = lien entre deux tables
- `AUTO_INCREMENT` = MySQL attribue les IDs automatiquement (1,2,3...)
- `ENUM` = liste de valeurs autorisees pour un champs

## commande a utilisees 
```sql
    CREATE DATABASE bd_scolaire
    CHARACTER SET utf8mb4
    collate utf8mb4_unicode_ci;

    use bd_scolaire;
    SHOW TABLES;
    DESCRIBE eleve;
    SELECT * FROM eleves;
```