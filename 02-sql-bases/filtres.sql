-- jour 2 - filtres et tri
use bd_scolaire;
-- 1 eleves d'une ecole precise
select prenom, nom from eleves where ecole_id = 1;
-- 2 absences non justifiees
select * from absences where justifiee = false;
-- 3 écoles avec plus de 300 eleves
select nom, nb_eleves from ecoles where nb_eleves > 300;
-- 4 eleves dont le prenom commence par E
select prenom, nom from eleves where prenom like 'E%';
-- 5 absences entre le 1er et le 31 janvier 2025
select * from absences 
where date_absence between '2025-01-01' and '2025-01-31';
-- 6 écoles de niveau primaire ou secondaire, triées par nom
select nom, niveau from ecoles 
where niveau in ('primaire', 'secondaire')
order by nom;
-- 7 les 3 premiers eleves triés par nom
select prenom, nom from eleves order by nom asc limit 3;


-- jour 2 - agregation et regroupement 
use bd_scolaire;
-- 1 combien d'eleves au total
select count(*) as total_eleves from eleves;
-- 2 nombre d'eleves par ecole
select ecole_id, count(*) as nb_eleves from eleves 
group by ecole_id;
-- 3 nombre d'absences par eleve
select eleve_id, count(*) as nb_absences from absences
group by eleve_id;
-- 4 nombre d'absences justifiees et non justifiees
select justifiee, count(*) as nb_absences from absences
group by justifiee;
-- 5 les eleves avec plus de 1 absence
select eleve_id, count(*) as nb_absences from absences
group by eleve_id
having count(*) > 1;
-- 6 nombre d'ecole par niveau
select niveau, count(*) as nb_ecoles from ecoles
group by niveau
order by nb_ecoles desc;
-- 7 nombre d'eleves par classe
select classe, count(*) as nb_eleves from eleves
group by classe
order by nb_eleves desc;