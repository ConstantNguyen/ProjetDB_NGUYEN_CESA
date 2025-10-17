-- =========================================
-- CESA Matthew-Frédérick et NGUYEN Constant 
-- Mini projet sur les banques 
-- Script des contraintes de validations
-- =========================================

-- =========================================
-- 			TABLE CLIENT
-- =========================================


ALTER TABLE CLIENT 
ADD CONSTRAINT  chk_email CHECK (email REGEXP '^[A-Za-z0-9._-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,6}$') ,
ADD CONSTRAINT chk_elephone_principal CHECK (telephone_principal REGEXP '^[0-9+]{8,15}$'),
ADD CONSTRAINT chk_statut_KYC CHECK (statut_KYC IN ('NON_VERIFIER','EN_COURS','VERIFIER','REFUSE')),
ADD CONSTRAINT chk_indicateur_AML CHECK(indicateur_AML IN('OUI','NON'));
DROP TRIGGER IF EXISTS trg_check_date_naissance;

/** 
Ne pouvant pas utiliser la fonction CURDATE() dans un check nous avons opte pour un trigger dans le bu de verifier les dates.
**/
DELIMITER //
CREATE TRIGGER trg_chk_date_naissance 
BEFORE INSERT ON CLIENT
FOR EACH ROW
BEGIN
  IF NEW.date_naissance > CURDATE() THEN
    SIGNAL SQLSTATE '45000';
  END IF;
END;
// 

-- =========================================
-- 			TABLE AGEENCE
-- =========================================
ALTER TABLE AGENCE
ADD CONSTRAINT chk_horaires_ouverture CHECK (horaires_ouverture REGEXP '^[0-9]{2}h-[0-9]{2}h$');

-- =========================================
-- 			TABLE COMPTE
-- =========================================
ALTER TABLE COMPTE
ADD CONSTRAINT chk_solde_non_negatif CHECK (solde_comptable >= 0 AND solde_disponible >= 0),
ADD CONSTRAINT chk_decouvert_plafond CHECK ((decouvert_autorise = 0 AND plafond_decouvert = 0) OR (decouvert_autorise = 1 AND plafond_decouvert >= 0));
DROP TRIGGER IF EXISTS trg_chk_date_ouverture;

DELIMITER //
CREATE TRIGGER trg_chk_date_ouverture
BEFORE INSERT ON COMPTE
FOR EACH ROW
BEGIN
  IF NEW.date_ouverture >= CURDATE() THEN
    SIGNAL SQLSTATE '45000';
  END IF;
END;
// 



-- =========================================
-- 			TABLE EMPLOYE
-- =========================================
ALTER TABLE EMPLOYE
DROP CHECK chk_role,
ADD CONSTRAINT chk_role CHECK  (role IN ('CONSEILLER', 'DIRECTEUR', 'GESTIONNAIRE', 'CAISSIER', 'AUTRE'));


-- =========================================
-- 			TABLE CARTE
-- =========================================
ALTER TABLE CARTE

ADD CONSTRAINT chk_plafond_retrait CHECK (plafond_retrait_quotidien >= 0),
ADD CONSTRAINT chk_plafond_paiement CHECK (plafond_paiement_periodique >= 0),
ADD CONSTRAINT chk_statu_carte CHECK (statut_carte IN ('ACTIVE', 'BLOQUEE', 'EXPIREE')),
ADD CONSTRAINT chk_plafond_retrati CHECK (plafond_retrait_quotidien >= 0),
ADD CONSTRAINT chk_plafond_paiement_periodique CHECK (plafond_paiement_periodique >= 0);

DELIMITER //
CREATE TRIGGER trg_chk_date_expiration
BEFORE INSERT ON CARTE
FOR EACH ROW
BEGIN
  IF NEW.date_expiration < CURDATE() THEN
    SIGNAL SQLSTATE '45000';
  END IF;
END;
// 


-- =========================================
-- 			TABLE CREDIT
-- =========================================
ALTER TABLE CREDIT
ADD CONSTRAINT chk_montant_initial CHECK (montant_initial > 0),
ADD CONSTRAINT chk_duree_positive CHECK (duree_mois > 0),
ADD CONSTRAINT chk_dates_credit CHECK (date_fin_prevue > date_demarrage),
ADD CONSTRAINT chk_taux_nominal CHECK (taux_nominal_annuel >= 0 AND taux_nominal_annuel <= 100),
ADD CONSTRAINT chk_statut_credit CHECK (statut_credit IN ('EN_COURS', 'REMBOURSE', 'SUSPENDU', 'ANNULE'));


-- =========================================
-- 			TABLE TRANSACTION
-- =========================================
ALTER TABLE TRANSACTION
ADD CONSTRAINT chk_montant_transaction CHECK (montant > 0),
ADD CONSTRAINT chk_type_transaction CHECK (type_transaction IN ('Virement', 'Retrait', 'Depot', 'Paiement', 'Autre')),
ADD CONSTRAINT chk_statut_transaction CHECK (statut_transaction IN ('En attente', 'Terminee', 'Annulee'));



