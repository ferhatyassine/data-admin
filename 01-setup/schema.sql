-- ==================================================================
-- bd_scolaire : base de donnees d'un conseil scolaire fictif
-- Fichier a executer en premier dans MySQL Workbench
-- ==================================================================
drop database if exists bd_scolaire;
CREATE DATABASE IF NOT EXISTS bd_scolaire
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
use bd_scolaire;

-- ==================================================================
-- ECOLE
-- ==================================================================
CREATE TABLE ecoles (
    ecole_id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    ville VARCHAR(100) NOT NULL,
    niveau ENUM('primaire', 'secondaire') NOT NULL,
    nb_eleves INT NOT NULL,
    date_creation DATE NOT NULL
);

-- eleves
CREATE TABLE eleves (
    eleve_id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    date_naissance DATE NOT NULL,
    ecole_id INT,
    classe VARCHAR(20) NOT NULL,
    FOREIGN KEY (ecole_id) REFERENCES ecoles(ecole_id)
);
-- absences
CREATE TABLE absences (
    absence_id INT AUTO_INCREMENT PRIMARY KEY,
    eleve_id INT,
    date_absence DATE NOT NULL,
    motif VARCHAR(255) NOT NULL,
    justifiee BOOLEAN default FALSE,
    FOREIGN KEY (eleve_id) REFERENCES eleves(eleve_id)
);
-- donnees de test
INSERT INTO ecoles (nom, ville, niveau, nb_eleves, date_creation) VALUES
('Ecole Primaire Jean Moulin', 'Paris', 'primaire', 200, '1990-09-01'),
('Collège Victor Hugo', 'Lyon', 'secondaire', 500, '1985-09-01'),
('Lycée Marie Curie', 'Marseille', 'secondaire', 800, '1980-09-01');

insert into eleves (nom, prenom, date_naissance, ecole_id, classe) values
('Dupont', 'Alice', '2010-05-15', 1, 'CM1'),
('Martin', 'Bob', '2009-08-20', 1, 'CM2'),
('Durand', 'Charlie', '2005-03-10', 2, '4ème'),
('Lefevre', 'David', '2004-11-25', 2, '3ème'),
('Moreau', 'Eve', '2003-02-18', 3, 'Terminale S');
insert into absences (eleve_id, date_absence, motif, justifiee) values
(1, '2024-01-10', 'Maladie', TRUE),
(2, '2024-01-12', 'Rendez-vous médical', FALSE),
(3, '2024-01-15', 'Absence non justifiée', FALSE),
(4, '2024-01-20', 'Voyage scolaire', TRUE),
(5, '2024-01-25', 'Maladie', TRUE);
