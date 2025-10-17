-- =========================================
-- 4_interrogation.sql
-- =========================================

USE banque;


/**

-- ===============================
-- 1. Projections et sélections
-- ===============================

-- a) Liste des clients avec email et téléphone
SELECT nom, prenom, email, telephone_principal
FROM CLIENT;

-- b) Clients avec statut KYC "NON_VERIFIER" ou "EN_COURS"
SELECT *
FROM CLIENT
WHERE statut_KYC IN ('NON_VERIFIER','EN_COURS');

-- c) Transactions entre 1000 et 5000
SELECT *
FROM TRANSACTION
WHERE montant BETWEEN 1000 AND 5000;

-- d) Comptes en devise 'EUR' triés par solde disponible décroissant
SELECT id_compte, solde_disponible, devise_compte
FROM COMPTE
WHERE devise_compte = 'EUR'
ORDER BY solde_disponible DESC;

-- e) Clients dont l'email contient '@gmail.com'
SELECT *
FROM CLIENT
WHERE email LIKE '%@gmail.com';

-- ===============================
-- 2. Fonctions d’agrégation avec GROUP BY et HAVING
-- ===============================

-- a) Nombre de clients par nationalité
SELECT nationalite, COUNT(*) AS nb_clients
FROM CLIENT
GROUP BY nationalite;

-- b) Solde moyen par type de compte
SELECT type_compte, AVG(solde_disponible) AS solde_moyen
FROM COMPTE
GROUP BY type_compte;

-- c) Nombre de transactions par type et statut
SELECT type_transaction, statut_transaction, COUNT(*) AS nb_transactions
FROM TRANSACTION
GROUP BY type_transaction, statut_transaction;

-- d) Total des crédits en cours par compte
SELECT id_compte, SUM(montant_initial) AS total_credits
FROM CREDIT
WHERE statut_credit = 'EN_COURS'
GROUP BY id_compte;

-- e) Agences avec plus de 5 employés
SELECT id_agence, COUNT(*) AS nb_employes
FROM EMPLOYE
GROUP BY id_agence
HAVING COUNT(*) > 5;

-- ===============================
-- 3. Jointures internes et externes
-- ===============================

-- a) Liste des clients avec leurs comptes
SELECT c.nom, c.prenom, co.id_compte, co.type_compte
FROM CLIENT c
JOIN TENANCE t ON c.id_client = t.id_client
JOIN COMPTE co ON t.id_compte = co.id_compte;

-- b) Clients et leurs cartes
SELECT cl.nom, cl.prenom, ca.id_carte_local, ca.type_carte, ca.statut_carte
FROM CLIENT cl
JOIN POSSEDE p ON cl.id_client = p.id_client
JOIN CARTE ca ON p.id_compte = ca.id_compte AND p.id_carte_local = ca.id_carte_local;

-- c) Employés et agences
SELECT e.nom, e.prenom, a.nom_agence
FROM EMPLOYE e
LEFT JOIN AGENCE a ON e.id_agence = a.id_agence;

-- d) Crédit et compte associé
SELECT cr.id_credit, cr.montant_initial, co.id_compte, co.type_compte
FROM CREDIT cr
JOIN COMPTE co ON cr.id_compte = co.id_compte;

-- e) Clients et crédits garantis
SELECT cl.nom, cl.prenom, cr.id_credit, g.type_garant
FROM CLIENT cl
JOIN SOUSCRIRE sc ON cl.id_client = sc.id_client
JOIN CREDIT cr ON sc.id_credit = cr.id_credit
JOIN GARANTIR gr ON cr.id_credit = gr.id_credit
JOIN GARANT g ON gr.id_garant = g.id_garant;

-- ===============================
-- 4. Requêtes imbriquées (NOT IN, EXISTS, ANY, ALL)
-- ===============================

-- a) Clients sans compte
SELECT *
FROM CLIENT
WHERE id_client NOT IN (SELECT id_client FROM TENANCE);

-- b) Comptes sans transactions
SELECT *
FROM COMPTE
WHERE id_compte NOT IN (SELECT id_compte FROM CREDITE);

-- c) Clients ayant au moins un crédit supérieur à 10000
SELECT *
FROM CLIENT
WHERE id_client IN (
    SELECT id_client
    FROM SOUSCRIRE s
    JOIN CREDIT c ON s.id_credit = c.id_credit
    WHERE c.montant_initial > 10000
);

-- d) Cartes expirées
SELECT *
FROM CARTE
WHERE date_expiration < CURDATE();

-- e) Employés supervisant quelqu’un
SELECT *
FROM EMPLOYE e
WHERE EXISTS (
    SELECT 1 FROM SUPERVISION s
    WHERE s.id_employe = e.id_employe
);
**/