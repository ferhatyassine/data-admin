-- ========================================
-- jour 1 - premieres requetes
-- executer apres schema.sql dans MysQL Workbench
-- ========================================

use bd_scolaire;
-- 1. voir toutes les ecoles
select * from ecoles;
-- 2 voir toutes les eleves
select * from eleves;
-- 3. voir les nom, prenom et classe de tous les eleves
select nom, prenom, classe from eleves;
-- 4 combien d'eleves au total
select count(*) as total_eleves from eleves;
-- 5. voir les noms et villes des écoles secondaires
select nom, ville from ecoles where niveau = 'secondaire';
-- 6. voir les prenoms et noms des eleves ordonnes par nom
select prenom, nom from eleves order by nom asc;
-- 7 voir les absences non justifiees
select * from absences where justifiee = false;


-- Jour 2 — Filtres et tri
USE bd_scolaire;

-- 1. Élèves d'une école précise
SELECT prenom, nom FROM eleves WHERE ecole_id = 1;

-- 2. Absences non justifiées
SELECT * FROM absences WHERE justifiee = FALSE;

-- 3. Écoles avec plus de 300 élèves
SELECT nom, nb_eleves FROM ecoles WHERE nb_eleves > 300;

-- 4. Élèves dont le prénom commence par 'E'
SELECT prenom, nom FROM eleves WHERE prenom LIKE 'E%';

-- 5. Absences entre deux dates
SELECT * FROM absences
WHERE date_abs BETWEEN '2025-01-01' AND '2025-02-01';

-- 6. Écoles de niveau élémentaire ou secondaire
SELECT nom, niveau FROM ecoles
WHERE niveau IN ('elementaire', 'secondaire')
ORDER BY nom ASC;

-- 7. Les 3 premiers élèves par ordre alphabétique
SELECT prenom, nom FROM eleves ORDER BY nom ASC LIMIT 3;