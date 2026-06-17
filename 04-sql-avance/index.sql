-- index--
use bd_scolaire;

-- 1. voir les index existants
SHOW INDEX FROM eleves;
show index from absences;

-- 2 creer un index sur le nom des eleves (recherches frequentes )
create index idx_nom on eleves(nom);
-- 3 creer un index sur la date d'absence (filtre par date)
create index idx_absence_date on absences(date_absence);
-- 4 index compose : recharche par ecole et classe
create index idx_eleve_ecole_classe on eleves(ecole_id, classe);
-- 5 verifier que les index ont bien été créés
SHOW INDEX FROM eleves;
-- 6 voir si MySQL utilise les index pour optimiser les requêtes (EXPLAIN)
EXPLAIN SELECT * FROM eleves WHERE nom = 'Dupont';
-- 7 supprimer un index
DROP INDEX idx_nom ON eleves;