-- procedures stockees
use bd_scolaire;

-- procedure simple : afficher tous les eleves d'une ecole 
DELIMITER //
create procedure eleves_par_ecole(IN p_ecole_id int)
begin
    select prenom, nom, classe
    from eleves
    where ecole_id = p_ecole_id;
end //
DELIMITER ;

-- appel de la procedure
call eleves_par_ecole(1);

--2 procedure avec parametre de sortie : compter les absences d'un eleve 
DELIMITER //
create procedure compter_absences(IN p_eleve_id int, OUT p_nb_absences_total int)
begin 
    select count(*) into p_nb_absences_total
    from absences
    where eleve_id = p_eleve_id;
end //
DELIMITER ;
-- appel avec recuperation du resultat
call compter_absences(1, @nb_absences);
select @nb_absences as nb_absences_total;

-- 3 procedure avec logique conditionnelle : statut d'assiduite
DELIMITER //
create procedure statut_assiduite(IN p_eleve_id int)
begin
declare nb int;
select count(*) into nb from absences
where eleve_id = p_eleve_id and justifiee = false;
if nb = 0 then 
    select 'Bonne Assiduite' as statut;
elseif nb <= 2  then
    select 'A surveiller' as statut;
else 
    select 'Preocupant' as statut;
end if;
end //
DELIMITER ;
call statut_assiduite(2);
-- 4 lister toutes les procedures crees
show procedure status where db = 'bd_scolaire';

-- 5 supprimer une procedure
-- drop procedure if exists eleves_par_ecole;