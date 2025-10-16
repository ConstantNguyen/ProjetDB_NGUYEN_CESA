-- =========================================
-- CESA Matthew-Frédérick et NGUYEN Constant 
-- Mini projet sur les banques 
-- Script des contraintes de validations
-- =========================================

-- =========================================
-- 			TABLE CLIENT
-- =========================================
ALTER TABLE CLIENT
ADD CONSTRAINT chk_date_naissance CHECK (date_naissance <= CURDATE());


-- =========================================
-- 			TABLE COMPTE
-- =========================================
ALTER TABLE COMPTE
ADD CONSTRAINT chk_solde_non_negatif CHECK (solde_comptable >= 0 AND solde_disponible >= 0),
ADD CONSTRAINT chk_decouvert_plafond CHECK ((decouvert_autorise = 0 AND plafond_decouvert = 0) OR (decouvert_autorise = 1 AND plafond_decouvert >= 0)),
ADD CONSTRAINT chk_date_ouverture CHECK (date_ouverture <= IFNULL(date_cloture, CURDATE()));



-- =========================================
-- 			TABLE CARTE
-- =========================================
ALTER TABLE CARTE
ADD CONSTRAINT chk_plafond_retrait CHECK (plafond_retrait_quotidien >= 0),
ADD CONSTRAINT chk_plafond_paiement CHECK (plafond_paiement_periodique >= 0),
ADD CONSTRAINT chk_date_expiration CHECK (date_expiration > CURDATE());



-- =========================================
-- 			TABLE CREDIT
-- =========================================
ALTER TABLE CREDIT
ADD CONSTRAINT chk_montant_initial CHECK (montant_initial > 0),
ADD CONSTRAINT chk_duree_positive CHECK (duree_mois > 0),
ADD CONSTRAINT chk_dates_credit CHECK (date_fin_prevue > date_demarrage),
ADD CONSTRAINT chk_taux_nominal CHECK (taux_nominal_annuel >= 0 AND taux_nominal_annuel <= 100);




-- =========================================
-- 			TABLE TRANSACTION
-- =========================================
ALTER TABLE TRANSACTION
ADD CONSTRAINT chk_montant_transaction CHECK (montant > 0),
ADD CONSTRAINT chk_type_transaction CHECK (type_transaction IN ('Virement', 'Retrait', 'Depot', 'Paiement', 'Autre')),
ADD CONSTRAINT chk_statut_transaction CHECK (statut_transaction IN ('En attente', 'Terminee', 'Annulee'));




-- =========================================
-- 			TABLE POSSEDE
-- =========================================
ALTER TABLE POSSEDE
ADD CONSTRAINT chk_possede_client_compte CHECK (id_client IS NOT NULL AND id_compte IS NOT NULL AND id_carte_local IS NOT NULL);



