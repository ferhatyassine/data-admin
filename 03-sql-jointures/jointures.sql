-- jour 3  - jointures
use bd_scolaire;

-- inner join : nom de l'eleve avec le nom de l'ecole
select e.prenom, e.nom, ec.nom as ecole
from eleves e
inner join ecoles ec on e.ecole_id = ec.ecole_id;

-- 2 - nombre d'eleve par nom d'ecole (pas juste par id)
select ec.nom as ecole, count(e.eleve_id) as nombre_eleves
from ecoles ec
inner join eleves e on e.ecole_id = ec.ecole_id
group by ec.nom;
-- 3 - liste des absences avec le prenom et nom de l'eleve et le nom de l'ecole
SELECT e.prenom, e.nom, a.date_absence, a.motif, a.justifiee, ec.nom AS ecole
FROM absences a
INNER JOIN eleves e ON a.eleve_id = e.eleve_id
INNER JOIN ecoles ec ON e.ecole_id = ec.ecole_id;
-- 4 - left join : toutes les ecoles, meme sans eleves
select ec.nom as ecole, count(e.eleve_id) as nombre_eleves
from ecoles ec
left join eleves e on e.ecole_id = ec.ecole_id
group by ec.nom;
-- 5 - eleves avec leurs absences non justifiees (meme ceux sans absences)
select e.prenom, e.nom, count(a.absence_id) as nombre_absences_non_justifiees
from eleves e
left join absences a on e.eleve_id = a.eleve_id and a.justifiee = false
group by e.eleve_id,e.prenom, e.nom
order by nombre_absences_non_justifiees desc;