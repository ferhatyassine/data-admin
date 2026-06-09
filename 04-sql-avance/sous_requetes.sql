-- jour 4 - sous requetes
use bd_scolaire;
-- 1 - eleves qui sont dans une ecole de niveau secondaire
select prenom, nom
from eleves
where ecole_id in 
(select ecole_id 
from ecoles 
where niveau = 'secondaire');
-- 2 - eleve qui ont au moins une absence
select prenom, nom
from eleves
where eleve_id in
(select distinct eleve_id
from absences);
-- 3 - eleves qui n'ont aucune absence
select prenom, nom
from eleves
where eleve_id not in
(select distinct eleve_id
from absences);
-- 4 - ecole avec le plus grand nombre d'eleves
select nom, nb_eleves
from ecoles
where ecole_id = 
(select max(nb_eleves) from ecoles);
--5 - eleves avec plus d'absences que la moyenne
select eleve_id,count(*) as nombre_absences
from absences
group by eleve_id
having nombre_absences >
(select avg(nombre_absences) from
(select count(*) as nombre_absences
from absences
group by eleve_id) as absences_par_eleve);
