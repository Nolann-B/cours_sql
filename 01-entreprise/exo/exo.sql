-- ##################### EXERCICE #########################
-- 1 -- Afficher la profession de l'employé 547.
SELECT service FROM employes WHERE id_employes = 547;
-- 2 -- Afficher la date d'embauche d'Amandine.
SELECT date_embauche FROM employes WHERE prenom = 'Amandine';
-- 3 -- Afficher le nom de famille de Guillaume
SELECT nom FROM employes WHERE prenom = 'Guillaume';
-- 4 -- Afficher le nombre de personne ayant un n° id_employes commencant par le chiffre 5.
SELECT COUNT(*) FROM employes WHERE id_employes LIKE '5%';
-- 5 -- Afficher le nombre de commerciaux.
SELECT COUNT(*) FROM employes WHERE service = 'commercial';
-- 6 -- Afficher le salaire moyen des informaticiens (+arrondie).
SELECT ROUND(AVG(salaire), 2) FROM employes WHERE service = 'informatique';
-- 7 -- Afficher les 5 premiers employés aprés avoir classer leur nom de famille par ordre alphabétique.
SELECT * FROM employes ORDER BY nom LIMIT 5;
-- 8 -- Afficher le coût des commerciaux sur 1 année.
SELECT SUM(salaire*12) AS 'Cout commerciaux' FROM employes WHERE service = 'commercial';
-- 9 -- Afficher le salaire moyen par service. (service + salaire moyen)
SELECT service, ROUND(AVG(salaire), 2) AS 'Salaire moyen' FROM employes GROUP BY service;
-- 10 -- Afficher le nombre de recrutement sur l'année 2010 (+alias)
SELECT COUNT(*) AS 'Nombre de recrutement 2010' FROM employes WHERE date_embauche LIKE '2010%';
-- 11 -- Afficher le salaire moyen appliqué lors des recrutements sur la période allant de 2005 a 2007
SELECT ROUND(AVG(salaire), 2) AS 'Salaire moyen recrutement 2005-2007' FROM employes WHERE date_embauche BETWEEN '2005-01-01' AND '2007-12-31';
-- 12 -- Afficher le nombre de service différent
SELECT COUNT(DISTINCT service) AS 'Nombre de service différent' FROM employes;
-- 13 -- Afficher tous les employés (sauf ceux du service production et secrétariat)
SELECT * FROM employes WHERE service NOT IN ('production', 'secretaire');
-- 14 -- Afficher conjoitement le nombre d'homme et de femme dans l'entreprise
SELECT sexe, COUNT(*) FROM employes GROUP BY sexe;
-- 15 -- Afficher les commerciaux ayant été recrutés avant 2005 de sexe masculin et gagnant un salaire supérieur a 2500€
SELECT * FROM employes WHERE service = 'commercial' AND date_embauche < '2005-01-01' AND sexe = 'm' AND salaire > 2500;
-- 16 -- Qui a été embauché en dernier
SELECT * FROM employes ORDER BY date_embauche DESC LIMIT 1;
-- 17 -- Afficher les informations sur l'employé du service commercial gagnant le salaire le plus élevé
 SELECT *, MAX(salaire) AS 'salaires max' FROM empoyes WHERE service = 'commercial';
-- 18 -- Afficher le prénom du comptable gagnant le meilleur salaire
SELECT prenom FROM employes WHERE service = 'comptabilite' ORDER BY salaire DESC LIMIT 1;
-- 19 -- Afficher le prénom de l'informaticien ayant été recruté en premier
SELECT prenom FROM employes WHERE service = 'informatique' ORDER BY date_embauche ASC LIMIT 1;
-- 20 -- Augmenter chaque employé de 100€
UPDATE employes SET salaire = salaire + 100;
-- 21 -- Supprimer les employés du service secrétariat
DELETE FROM employes WHERE service = 'secretariat';
