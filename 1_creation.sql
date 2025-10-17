-- =========================================
-- CESA Matthew-Frédérick et NGUYEN Constant 
-- Mini projet sur les banques 
-- =========================================

DROP SCHEMA if exists banque; 
CREATE SCHEMA if not exists banque  ;
USE banque;

-- =========================================
-- 			TABLE CLIENT
-- =========================================
CREATE TABLE CLIENT (
	id_client CHAR(50) PRIMARY KEY,
	nom VARCHAR(50) NOT NULL,
	prenom VARCHAR(50),
	date_naissance DATE NOT NULL,
	lieu_naissance VARCHAR(50) NOT NULL,
	nationalite VARCHAR(50) NOT NULL,
	numero_piece_identite VARCHAR(50) NOT NULL,
	date_delivrance_piece VARCHAR(50) NOT NULL,
	adresse_postale VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	telephone_principal VARCHAR(50) NOT NULL,
	statut_KYC VARCHAR(50) NOT NULL,
	indicateur_AML varchar(50) NOT NULL,
	date_derniere_mise_a_jour_dossier DATE,
    unique(numero_piece_identite,email)
);

-- =========================================
-- 			TABLE AGENCE
-- =========================================
CREATE TABLE AGENCE(
	id_agence CHAR(50) PRIMARY KEY,
    nom_agence VARCHAR(50) NOT NULL,
    adresse_agence VARCHAR(50) NOT NULL,
    responsable_agence VARCHAR(50) NOT NULL,
    horaires_ouverture VARCHAR(50) NOT NULL
);
-- =========================================
-- 			TABLE EMPLOYE
-- =========================================
CREATE TABLE EMPLOYE(
	id_employe CHAR(50) PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    role VARCHAR(50) NOT NULL, 
    date_embauche DATE NOT NULL,
    habilitations VARCHAR(50) NOT NULL,
    id_agence CHAR(50) NOT NULL,
    FOREIGN KEY (id_agence) REFERENCES AGENCE(id_agence)
);
-- =========================================
-- 			TABLE TRANSACTION
-- =========================================
CREATE TABLE TRANSACTION(
	id_transaction CHAR(50) PRIMARY KEY,
    date_ DATE NOT NULL,
    heure TIME NOT NULL,
    canal_initiation VARCHAR(50) NOT NULL,
    type_transaction VARCHAR(50) NOT NULL,
    montant DECIMAL(15,2) NOT NULL,
    devise_transaction VARCHAR(50) NOT NULL,
    statut_transaction VARCHAR(50) NOT NULL,
    motif_libelle VARCHAR(50) NOT NULL
);

-- ==========================================
-- TABLE : GARANT
-- ==========================================
CREATE TABLE GARANT (
    id_garant CHAR(50) PRIMARY KEY,
    type_garant VARCHAR(50) NOT NULL
);

-- ==========================================
-- TABLE : COMPTE
-- ==========================================
CREATE TABLE COMPTE (
    id_compte CHAR(50) PRIMARY KEY,
    type_compte VARCHAR(50) NOT NULL,
    devise_compte VARCHAR(50) NOT NULL,
    date_ouverture DATE NOT NULL,
    date_cloture DATE,
    solde_comptable DECIMAL(15,2) NOT NULL,
    solde_disponible DECIMAL(15,2) NOT NULL,
    decouvert_autorise BOOLEAN NOT NULL,
    plafond_decouvert DECIMAL(15,2) NOT NULL,
    taux_interet_applicable VARCHAR(50) NOT NULL,
    id_transaction CHAR(50),
    FOREIGN KEY (id_transaction) REFERENCES TRANSACTION(id_transaction)
);

-- =========================================================
-- TABLE : CREDIT
-- =========================================================
CREATE TABLE CREDIT (
    id_credit CHAR(50) PRIMARY KEY,
    montant_initial DECIMAL(15,2) NOT NULL,
    taux_nominal_annuel DECIMAL(15,2) NOT NULL,
    duree_mois INT NOT NULL,
    mensualite VARCHAR(50) NOT NULL,
    date_demarrage DATE NOT NULL,
    date_fin_prevue DATE NOT NULL,
    statut_credit VARCHAR(50) NOT NULL,
    id_compte CHAR(50) NOT NULL,
    FOREIGN KEY (id_compte) REFERENCES COMPTE(id_compte)
);

-- =========================================================
-- TABLE : CARTE
-- =========================================================
CREATE TABLE CARTE (
    id_carte_local CHAR(50),
    type_carte VARCHAR(50) NOT NULL,
    date_expiration DATE NOT NULL,
    statut_carte VARCHAR(50) NOT NULL,
    plafond_retrait_quotidien DECIMAL(15,2) NOT NULL,
    plafond_paiement_periodique DECIMAL(15,2) NOT NULL,
    numero_pan_tokenise VARCHAR(50),
    nombre_tentatives_PIN_erronees INT,
    id_compte CHAR(50),
    PRIMARY KEY (id_compte, id_carte_local),
    FOREIGN KEY (id_compte) REFERENCES COMPTE(id_compte)
);


-- =========================================================
-- TABLE : AFFECTATION_CONSEILLER 
-- =========================================================
CREATE TABLE AFFECTATION_CONSEILLER  (
    id_client CHAR(50),
    id_employe VARCHAR(50),
    date_debut_affectation DATE NOT NULL,
    date_fin_affectation DATE NOT NULL,
    plafond_retrait_quotidien DECIMAL(15,2),
    plafond_paiement_periodique DECIMAL(15,2),
    numero_pan_tokenise VARCHAR(50),
    nombre_tentatives_PIN_erronees INT,
    PRIMARY KEY (id_client, id_employe),
    FOREIGN KEY (id_client) REFERENCES CLIENT(id_client), 
    FOREIGN KEY (id_employe) REFERENCES EMPLOYE(id_employe)
);

-- =========================================================
-- TABLE : SUPERVISION  
-- =========================================================
CREATE TABLE SUPERVISION   (
    id_employe CHAR(50),
    date_debut_supervision DATE NOT NULL,
    id_employe_1 CHAR(50),
    PRIMARY KEY (id_employe, id_employe_1),
    FOREIGN KEY (id_employe) REFERENCES EMPLOYE(id_employe), 
    FOREIGN KEY (id_employe_1) REFERENCES EMPLOYE(id_employe)
);


-- =========================================================
-- TABLE : TENANCE   
-- =========================================================
CREATE TABLE TENANCE    (
    id_client CHAR(50),
    id_compte CHAR(50),
    date_debut_titularite DATE NOT NULL,
    type_titulaire VARCHAR(50),
    PRIMARY KEY (id_client, id_compte),
    FOREIGN KEY (id_client) REFERENCES CLIENT(id_client), 
    FOREIGN KEY (id_compte) REFERENCES COMPTE(id_compte)
);


-- =========================================================
-- TABLE : POSSEDE    
-- =========================================================
CREATE TABLE POSSEDE    (
    id_client CHAR(50),
    id_compte CHAR(50),
    id_carte_local CHAR(50),
    PRIMARY KEY (id_client, id_compte, id_carte_local),
    FOREIGN KEY (id_client) REFERENCES CLIENT(id_client),
    FOREIGN KEY (id_compte, id_carte_local) REFERENCES CARTE(id_compte, id_carte_local)
);


-- =========================================================
-- TABLE : CREDITE     
-- =========================================================
CREATE TABLE CREDITE     (
    id_compte CHAR(50),
    id_transaction CHAR(50),
    PRIMARY KEY (id_compte, id_transaction),
    FOREIGN KEY (id_compte) REFERENCES COMPTE(id_compte),
    FOREIGN KEY (id_transaction) REFERENCES TRANSACTION(id_transaction)
);


-- =========================================================
-- TABLE : SOUSCRIRE      
-- =========================================================
CREATE TABLE SOUSCRIRE     (
    id_client CHAR(50),
    id_credit CHAR(50),
    PRIMARY KEY (id_client, id_credit),
    FOREIGN KEY (id_client) REFERENCES CLIENT(id_client),
    FOREIGN KEY (id_credit) REFERENCES CREDIT(id_credit)
);


-- =========================================================
-- TABLE : GARANTIR       
-- =========================================================
CREATE TABLE GARANTIR     (
    id_credit CHAR(50),
    id_garant CHAR(50),
    PRIMARY KEY (id_credit, id_garant),
    FOREIGN KEY (id_credit) REFERENCES CREDIT(id_credit),
    FOREIGN KEY (id_garant) REFERENCES GARANT(id_garant)
);


-- =========================================================
-- TABLE : AUTORISATION        
-- =========================================================
CREATE TABLE AUTORISATION      (
    id_employe CHAR(50),
    id_transaction CHAR(50),
    id_compte CHAR(50),
    id_carte_local CHAR(50),
    id_autorisation CHAR(50),
    date_autorisation DATE,
    heure_autorisation TIME,
    resultat_autorisation VARCHAR(50),
    motif_rejet VARCHAR(50),
    PRIMARY KEY (id_employe, id_transaction, id_compte, id_carte_local),
    FOREIGN KEY (id_employe) REFERENCES EMPLOYE(id_employe),
    FOREIGN KEY (id_transaction) REFERENCES TRANSACTION(id_transaction),
    FOREIGN KEY (id_compte, id_carte_local) REFERENCES CARTE(id_compte, id_carte_local)
);

-- =========================================================
-- TABLE : GARANTIR       
-- =========================================================
CREATE TABLE GERE      (
    id_employe CHAR(50),
    id_credit CHAR(50),
    PRIMARY KEY (id_employe, id_credit),
    FOREIGN KEY (id_employe) REFERENCES EMPLOYE(id_employe),
    FOREIGN KEY (id_credit) REFERENCES CREDIT(id_credit)
);
