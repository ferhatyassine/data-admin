-- jour 5 vues
use bd_scolaire;
-- 1 vue : liste complete eleve + ecole
create or replace view vue_eleves_ecoles as
select e.eleve_id, e.prenom, e.nom,e.classe, ec.nom as ecoles,
ec.ville, ec.niveau
from eleves e
inner join ecoles ec on e.ecole_id = ec.ecole_id;
-- utiliser la vue
select * from vue_eleves_ecoles;
select * from vue_eleves_ecoles where niveau = 'secondaire';

--2 - vue : resume des absences par eleve
create or replace view vue_absences_resume as
select e.prenom, e.nom, count(a.absence_id) as total_absences,
sum(a.justifiee = true) as justifiees,
sum(a.justifiee = false) as non_justifiees
from eleves e
left join absences a on e.eleve_id = a.eleve_id
group by e.eleve_id, e.prenom, e.nom;
-- utiliser la vue
select * from vue_absences_resume;
select * from vue_absences_resume where non_justifiees > 0;
-- 3 - supprimer une vue 
--drop view vue_eleves_ecoles;