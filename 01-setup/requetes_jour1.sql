--========================================
--jour 1 - premieres requetes
-- executer apres schema.sql dans MysQL Workbench
--========================================

use bd_scolaire;
--1. voir toutes les ecoles
select * from ecoles;
--2 voir toutes les eleves
select * from eleves;
--3. voir les nom, prenom et classe de tous les eleves
select nom, prenom, classe from eleves;
--4 combien d'eleves au total
select count(*) as total_eleves from eleves;
--5. voir les noms et villes des écoles secondaires
select nom, ville from ecoles where niveau = 'secondaire';
--6. voir les prenoms et noms des eleves ordonnes par nom
select prenom, nom from eleves order by nom asc;
--7 voir les absences non justifiees
select * from absences where justifiee = false;