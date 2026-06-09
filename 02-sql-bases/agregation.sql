-- jour 2 - agregation etg regroupement 
use bd_scolaire;

-- 1 - combien d'eleves au total
select count(*) as nb_eleves from eleves;

-- 2 - combien d'eleve par ecole
select ecole_id, count(*) as nb_eleves 
from eleves group by ecole_id;
-- 3 - nombre d'absences par eleve
select eleve_id, count(*) as nb_absences
from absences
group by eleve_id;
-- 4 - absences justifiees vs non justifiees
select justifiee, count(*) as nb_absences
from absences
group by justifiee;
-- 5 - eleves avec plus d'une absence (having)
select eleve_id, count(*) as nb_absences
from absences
group by eleve_id
having nb_absences > 1;
-- 6 - nombre d'ecoles par niveau
select niveau, count(*) as nb_ecoles
from ecoles
group by niveau;
order by nb_ecoles desc;