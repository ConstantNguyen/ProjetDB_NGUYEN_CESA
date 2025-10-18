-- =========================================
-- 4_interrogation.sql
-- =========================================
USE banque;

-- ===============================
-- 1. Projections et sélections
-- ===============================

-- 1. Liste des clients utilisant un email Gmail
SELECT id_client, nom, prenom, email
FROM CLIENT
WHERE email LIKE '%@gmail.com'
ORDER BY nom;

-- 2. Clients nés entre 1980 et 2000
SELECT id_client, nom, prenom, date_naissance
FROM CLIENT
WHERE date_naissance BETWEEN '1980-01-01' AND '2000-12-31';

-- 3. Comptes dont le solde disponible dépasse 10 000 €
SELECT id_compte, solde_disponible, devise_compte
FROM COMPTE
WHERE solde_disponible > 10000
ORDER BY solde_disponible DESC;

-- 4. Employés ayant été embauchés après 2020
SELECT nom, prenom, date_embauche, role
FROM EMPLOYE
WHERE date_embauche > '2020-01-01';

-- 5. Clients dont le statut KYC est en cours de vérification
SELECT nom, prenom, statut_KYC
FROM CLIENT
WHERE statut_KYC IN ('EN_COURS', 'NON_VERIFIER');

WHERE email LIKE '%@gmail.com';

-- ===============================
-- 2. Fonctions d’agrégation avec GROUP BY et HAVING
-- ===============================

-- 1. Montant total des transactions par type
SELECT type_transaction, SUM(montant) AS total_montant
FROM TRANSACTION
GROUP BY type_transaction;

-- 2. Moyenne du solde disponible par type de compte
SELECT type_compte, AVG(solde_disponible) AS solde_moyen
FROM COMPTE
GROUP BY type_compte;

-- 3. Nombre de clients par statut KYC
SELECT statut_KYC, COUNT(*) AS nb_clients
FROM CLIENT
GROUP BY statut_KYC;

-- 4. Moyenne du taux nominal des crédits par statut
SELECT statut_credit, AVG(taux_nominal_annuel) AS taux_moyen
FROM CREDIT
GROUP BY statut_credit;

-- 5. Nombre d’employés par agence (avec filtrage HAVING)
SELECT id_agence, COUNT(*) AS nb_employes
FROM EMPLOYE
GROUP BY id_agence
HAVING COUNT(*) > 3;

-- ===============================
-- 3. Jointures internes et externes
-- ===============================

-- 1. Liste des clients avec leurs comptes
SELECT C.nom, C.prenom, CP.id_compte, CP.type_compte
FROM CLIENT C
JOIN TENANCE T ON C.id_client = T.id_client
JOIN COMPTE CP ON T.id_compte = CP.id_compte;

-- 2. Comptes et leurs cartes associées
SELECT CP.id_compte, CA.id_carte_local, CA.type_carte, CA.statut_carte
FROM COMPTE CP
LEFT JOIN CARTE CA ON CP.id_compte = CA.id_compte;

-- 3. Employés et agences associées
SELECT E.nom, E.prenom, A.nom_agence
FROM EMPLOYE E
JOIN AGENCE A ON E.id_agence = A.id_agence;

-- 4. Clients et leurs crédits
SELECT C.nom, C.prenom, CR.id_credit, CR.montant_initial, CR.statut_credit
FROM CLIENT C
JOIN SOUSCRIRE S ON C.id_client = S.id_client
JOIN CREDIT CR ON S.id_credit = CR.id_credit;

-- 5. Transactions liées à des comptes
SELECT T.id_transaction, T.date_, T.type_transaction, C.id_compte, C.solde_disponible
FROM TRANSACTION T
JOIN CREDITE CRD ON T.id_transaction = CRD.id_transaction
JOIN COMPTE C ON CRD.id_compte = C.id_compte;


-- ===============================
-- 4. Requêtes imbriquées (NOT IN, EXISTS, ANY, ALL)
-- ===============================

-- 1. Clients ayant au moins un crédit en cours
SELECT nom, prenom
FROM CLIENT
WHERE id_client IN (
  SELECT id_client FROM SOUSCRIRE S
  JOIN CREDIT C ON S.id_credit = C.id_credit
  WHERE C.statut_credit = 'EN_COURS'
);

-- 2. Clients sans aucun crédit
SELECT nom, prenom
FROM CLIENT
WHERE id_client NOT IN (SELECT id_client FROM SOUSCRIRE);

-- 3. Comptes dont le solde est supérieur à la moyenne
SELECT id_compte, solde_disponible
FROM COMPTE
WHERE solde_disponible > (SELECT AVG(solde_disponible) FROM COMPTE);

-- 4. Employés supervisant d’autres employés
SELECT nom, prenom
FROM EMPLOYE E
WHERE EXISTS (
  SELECT 1 FROM SUPERVISION S WHERE S.id_employe = E.id_employe
);

-- 5. Crédits dont la durée est plus courte que tous les crédits en cours
SELECT id_credit, duree_mois
FROM CREDIT
WHERE duree_mois < ALL (
  SELECT duree_mois FROM CREDIT WHERE statut_credit = 'EN_COURS'
);

