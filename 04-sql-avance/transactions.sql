-- jour 6 - transactions
use bd_scolaire;
-- 1 - transaction simple : ajout securise d'un eleve
start transaction;
insert into eleves (nom, prenom, date_naissance, ecole_id, classe) 
values ('Jean', 'Dupont', '2005-01-01', 1, '6ème');

-- si tout est bon commit;
commit;
-- si il y a une erreur, annuler: rollback;
rollback;
-- 2 - simulation d'erreur avec rollback
start transaction;
insert into eleves (nom, prenom, date_naissance, ecole_id, classe)
values ('Marie', 'Curie', '2004-11-07', 999, '5ème'); -- ecole_id 999 n'existe pas
rollback; 
-- 3 verifier que l'eleve n'a pas ete insere
select * from eleves where nom = 'Curie';