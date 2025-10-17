-- SCRIPT D'INSERTION pour la base de données décrite
-- Date de génération : 2025-10-17

SET FOREIGN_KEY_CHECKS=0; -- si MySQL, pour insérer dans l'ordre demandé. Retirez/adaptez selon SGBD.
-- (Si votre SGBD n'aime pas cette commande, ignorez-la.)

/**************************************************************************
 * 1) TABLE CLIENT  (40 clients : 20 entreprises, 20 particuliers)
 **************************************************************************/

INSERT INTO CLIENT (id_client, nom, date_naissance, lieu_naissance, nationalite, numero_piece_identite, date_delivrance_piece, adresse_postale, email, telephone_principal, statut_KYC, indicateur_AML, date_derniere_mise_a_jour_dossier)
VALUES
-- 20 ENTREPRISES (on met prenom NULL)
('C001','Musée du Louvre SARL', '1793-08-10','Paris','FR','FR-LR-0001','2000-01-01','Rue de Rivoli 75001 Paris','contact@louvre.fr','+33140222233','VERIFIER','NON','2025-09-01'),
('C002','Galerie Gagosian SAS', '1980-05-01','New York','US','US-GG-1980','2010-06-12','10 Avenue des Arts, 75008 Paris','contact@gagosian.com','+33123456789','VERIFIER','NON','2025-08-15'),
('C003','Tate Modern Ltd', '2000-01-01','London','GB','GB-TM-2000','2012-03-03','Bankside, London SE1','info@tate.org.uk','+442079339222','EN_COURS','NON','2025-07-20'),
('C004','Museo del Prado S.A.', '1819-11-19','Madrid','ES','ES-MP-1819','2005-05-05','Paseo del Prado, 28014 Madrid','info@prado.es','+34915143400','VERIFIER','NON','2025-05-10'),
('C005','Guggenheim Foundation', '1937-10-21','New York','US','US-GF-1937','2015-04-01','1071 5th Ave, New York','info@guggenheim.org','+12127360100','VERIFIER','NON','2025-06-01'),
('C006','Musée d\'Orsay SARL', '1986-12-09','Paris','FR','FR-OR-1986','2011-01-01','1 Rue de la Légion d\'Honneur 75007 Paris','contact@orsay.fr','+33140222333','VERIFIER','NON','2025-09-10'),
('C007','National Gallery Ltd', '1824-05-10','London','GB','GB-NG-1824','2009-11-11','Trafalgar Sq, London','info@nationalgallery.org','+442079738600','EN_COURS','NON','2025-07-01'),
('C008','Rijksmuseum BV', '1800-07-31','Amsterdam','NL','NL-RM-1800','2013-02-01','Museumstraat 1, 1071 XX Amsterdam','info@rijksmuseum.nl','+31207152000','VERIFIER','NON','2025-08-20'),
('C009','Centre Pompidou SARL', '1977-01-31','Paris','FR','FR-CP-1977','2014-03-03','Place Georges-Pompidou 75004 Paris','contact@centrepompidou.fr','+33144785000','VERIFIER','NON','2025-09-05'),
('C010','Museum of Modern Art Inc', '1929-11-07','New York','US','US-MoMA-1929','2018-07-07','11 W 53rd St, NY','info@moma.org','+12128645900','VERIFIER','NON','2025-06-20'),
('C011','Musée Picasso SARL', '1985-03-01','Paris','FR','FR-MP-1985','2012-02-02','5 Rue de Thorigny 75003 Paris','contact@picasso.fr','+33144556677','VERIFIER','NON','2025-08-01'),
('C012','Musée Van Gogh BV', '1973-06-01','Amsterdam','NL','NL-VG-1973','2010-10-10','Paulus Potterstraat 7, 1071 CX Amsterdam','info@vangoghmuseum.nl','+31205586444','VERIFIER','NON','2025-07-15'),
('C013','Fondation Beyeler GmbH', '1997-05-05','Basel','CH','CH-FB-1997','2016-12-12','Basel, Switzerland','info@beyeler.ch','+41616123456','EN_COURS','NON','2025-06-30'),
('C014','Whitney Museum Inc', '1930-04-01','New York','US','US-Whit-1930','2014-04-04','99 Gansevoort St, NY','info@whitney.org','+12123256700','VERIFIER','NON','2025-05-05'),
('C015','Musée Rodin SARL', '1919-11-04','Paris','FR','FR-RD-1919','2011-03-03','77 Rue de Varenne 75007 Paris','contact@rodin.fr','+33147634567','VERIFIER','NON','2025-04-01'),
('C016','Princeton University Art Museum', '1882-01-01','Princeton','US','US-PUAM-1882','2017-07-07','Princeton NJ','info@princetonartmuseum.org','+16095123456','VERIFIER','NON','2025-03-12'),
('C017','Museo Nacional Centro de Arte Reina Sofia', '1990-09-09','Madrid','ES','ES-MN-1990','2019-09-09','Madrid','info@reinasofia.es','+34915600000','VERIFIER','NON','2025-02-20'),
('C018','Fondazione Prada SRL', '1993-02-02','Milan','IT','IT-FP-1993','2018-10-10','Milan, Italy','info@fondazioneprada.org','+390212345678','EN_COURS','NON','2025-01-15'),
('C019','Musée Picasso Málaga S.L.', '2003-03-03','Malaga','ES','ES-MPMA-2003','2015-05-05','Plaza de la Merced, Malaga','info@picassomalaga.org','+34952123456','VERIFIER','NON','2025-04-20'),
('C020','Haus der Kunst GmbH', '1937-01-01','Munich','DE','DE-HK-1937','2012-08-08','Munich, Germany','info@hausderkunst.de','+498923456789','VERIFIER','NON','2025-06-10');

INSERT INTO CLIENT (id_client, nom, prenom, date_naissance, lieu_naissance, nationalite, numero_piece_identite, date_delivrance_piece, adresse_postale, email, telephone_principal, statut_KYC, indicateur_AML, date_derniere_mise_a_jour_dossier)
VALUES
-- 20 PARTICULIERS (mixité + origines variées)
('C021','Picasso','Pablo','1881-10-25','Malaga','ES','ES-PI-1881','1904-05-01','Calle de la Cruz 1, Malaga','pablo.picasso@example.es','+34911234567','VERIFIER','NON','2025-09-15'),
('C022','Kahlo','Frida','1907-07-06','Coyoacán','MX','MX-KA-1907','1929-03-01','Londres 247, Mexico City','frida.kahlo@example.mx','+5215512345678','VERIFIER','NON','2025-09-18'),
('C023','Duchamp','Marcel','1887-07-28','Blainville','FR','FR-DU-1887','1915-01-01','Rue des Arts 12, Paris','marcel.duchamp@example.fr','+33122334455','EN_COURS','OUI','2025-08-22'),
('C024','O\'Keeffe','Georgia','1887-11-15','Sun Prairie','US','US-OK-1887','1920-02-02','New Mexico, USA','georgia.okeeffe@example.com','+12025550123','VERIFIER','NON','2025-07-02'),
('C025','Hokusai','Katsushika','1760-10-31','Edo','JP','JP-HO-1760','1800-01-01','Tokio, Japon','katsushika.hokusai@example.jp','+819012345678','VERIFIER','NON','2025-06-28'),
('C026','Kandinsky','Wassily','1866-12-16','Moscow','RU','RU-KA-1866','1905-05-05','Moscow, Russia','wassily.kandinsky@example.ru','+74951234567','EN_COURS','NON','2025-05-25'),
('C027','O\'Keeffe','Alfred','1975-04-12','New York','US','US-AO-1975','2010-10-10','NYC, USA','alfred.okeeffe@example.com','+12125559999','NON_VERIFIER','NON','2025-10-10'),
('C028','Matisse','Henri','1869-12-31','Le Cateau-Cambrésis','FR','FR-MA-1869','1899-09-09','Nice, France','henri.matisse@example.fr','+33412341234','VERIFIER','NON','2025-09-25'),
('C029','Zhang','Aiwei','1988-03-22','Beijing','CN','CN-ZA-1988','2010-06-06','Beijing, China','aiwei.zhang@example.cn','+8610012345678','VERIFIER','NON','2025-08-18'),
('C030','Neruda','Pablo','1904-07-12','Parral','CL','CL-NE-1904','1935-03-03','Santiago, Chile','pablo.neruda@example.cl','+56212345678','VERIFIER','NON','2025-07-05'),
('C031','Beuys','Joseph','1921-05-12','Krefeld','DE','DE-BE-1921','1950-01-01','Düsseldorf, Germany','joseph.beuys@example.de','+49211234567','VERIFIER','NON','2025-06-18'),
('C032','Yayoi','Kusama','1929-03-22','Matsumoto','JP','JP-YK-1929','1958-02-02','Tokyo, Japan','yayoi.kusama@example.jp','+819012345679','VERIFIER','NON','2025-05-30'),
('C033','Njie','Aminata','1990-08-08','Dakar','SN','SN-NJ-1990','2010-08-08','Dakar, Senegal','aminata.njie@example.sn','+221778123456','NON_VERIFIER','OUI','2025-10-02'),
('C034','Singh','Arjun','1985-02-14','Mumbai','IN','IN-SI-1985','2005-05-05','Mumbai, India','arjun.singh@example.in','+912212345678','VERIFIER','NON','2025-09-30'),
('C035','Gonzalez','María','1979-09-09','Bogota','CO','CO-GO-1979','2000-04-04','Bogota, Colombia','maria.gonzalez@example.co','+571234567890','VERIFIER','NON','2025-08-05'),
('C036','Ahmed','Youssef','1992-11-11','Cairo','EG','EG-AH-1992','2012-09-09','Cairo, Egypt','youssef.ahmed@example.eg','+201234567890','EN_COURS','NON','2025-07-22'),
('C037','Ivanov','Svetlana','1980-06-06','St Petersburg','RU','RU-IV-1980','2005-10-10','St Petersburg, Russia','svetlana.ivanov@example.ru','+78121234567','VERIFIER','NON','2025-06-12'),
('C038','Diaz','Carlos','1995-12-12','Lima','PE','PE-DI-1995','2015-05-05','Lima, Peru','carlos.diaz@example.pe','+5112345678','NON_VERIFIER','NON','2025-05-01'),
('C039','Muller','Emma','1998-01-07','Brussels','BE','BE-MU-1998','2018-08-08','Brussels, Belgium','emma.muller@example.be','+3221234567','VERIFIER','NON','2025-04-15'),
('C040','Okonkwo','Chinwe','1993-04-04','Lagos','NG','NG-OK-1993','2013-03-03','Lagos, Nigeria','chinwe.okonkwo@example.ng','+2347012345678','VERIFIER','OUI','2025-03-01');

-- Remarque : tous les e-mails respectent la regex fournie et téléphones respectent la regex.

-------------------------------------------------------------------------------
/**************************************************************************
 * 2) TABLE AGENCE  (au moins 5 agences)
 * horaires_ouverture au format 'hh h-hh' => ici '08h-17h' etc.
 **************************************************************************/

INSERT INTO AGENCE (id_agence, nom_agence, adresse_agence, responsable_agence, horaires_ouverture)
VALUES
('A001','Agence Centrale Paris','1 Place Centrale 75001 Paris','Anne Durand','08h-17h'),
('A002','Agence Louvre','5 Rue du Louvre 75001 Paris','Philippe Martin','09h-18h'),
('A003','Agence Lyon','12 Rue de la République 69002 Lyon','Sofia Moreau','08h-16h'),
('A004','Agence Marseille','20 Quai des Artistes 13001 Marseille','Youssef Ben','09h-17h'),
('A005','Agence Bruxelles','30 Grand-Place 1000 Bruxelles','Luc Dupont','08h-17h');

-------------------------------------------------------------------------------
/**************************************************************************
 * 3) TABLE TRANSACTION  (au moins 2 transactions par client => 80 transactions)
 * - montant > 0
 * - type_transaction ∈ {'Virement', 'Retrait', 'Depot', 'Paiement', 'Autre'}
 * - statut_transaction ∈ {'En attente','Terminee','Annulee'}
 * - date_ ≤ '2025-10-17'
 **************************************************************************/

-- We'll insérer 80 transactions T001..T080, deux par client C001..C040
INSERT INTO TRANSACTION (id_transaction, date_, heure, canal_initiation, type_transaction, montant, devise_transaction, statut_transaction, motif_libelle)
VALUES
-- pour C001 (noter : TRANSACTION n'a pas de fk vers CLIENT, mais on associera plus tard via CREDITE ou COMPTE)
('T001','2025-09-20','09:15:00','Web','Depot',5000.00,'EUR','Terminee','Dépôt initial'),
('T002','2025-09-21','10:00:00','Guichet','Paiement',120.50,'EUR','Terminee','Achat billetterie'),

('T003','2025-08-12','11:20:00','Mobile','Virement',25000.00,'EUR','Terminee','Achat œuvre'),
('T004','2025-08-13','14:30:00','Web','Paiement',300.00,'EUR','Terminee','Services'),

('T005','2025-07-01','10:10:00','AgApp','Depot',1500.00,'EUR','Terminee','Versement marge'),
('T006','2025-07-02','12:00:00','Guichet','Retrait',200.00,'EUR','Terminee','Retrait caisse'),

('T007','2025-06-15','09:00:00','Web','Virement',8000.00,'EUR','Terminee','Transfert interco'),
('T008','2025-06-16','16:45:00','Mobile','Paiement',45.60,'EUR','Terminee','Achat fournitures'),

('T009','2025-05-10','08:30:00','Guichet','Depot',300.00,'EUR','Terminee','Dépôt espèces'),
('T010','2025-05-11','09:50:00','Web','Paiement',75.00,'EUR','Terminee','Frais'),

('T011','2025-04-02','10:00:00','Mobile','Virement',12000.00,'EUR','Terminee','Achat'),
('T012','2025-04-03','11:11:00','Guichet','Retrait',500.00,'EUR','Terminee','Retrait'),

('T013','2025-03-05','09:30:00','Web','Depot',10000.00,'EUR','Terminee','Apport'),
('T014','2025-03-06','10:30:00','Mobile','Paiement',250.00,'EUR','Terminee','Fournisseurs'),

('T015','2025-02-10','08:00:00','AgApp','Virement',6000.00,'EUR','Terminee','Transfert'),
('T016','2025-02-11','15:40:00','Guichet','Retrait',100.00,'EUR','Terminee','Retrait'),

('T017','2025-01-20','10:20:00','Web','Depot',2000.00,'EUR','Terminee','Versement'),
('T018','2025-01-21','12:00:00','Mobile','Paiement',60.00,'EUR','Terminee','Achat'),

('T019','2025-09-05','09:45:00','Web','Depot',40000.00,'EUR','Terminee','Dons'),
('T020','2025-09-06','10:30:00','Guichet','Retrait',1000.00,'EUR','Terminee','Frais'),

('T021','2025-08-01','11:00:00','Mobile','Virement',7200.00,'EUR','Terminee','Paiement artiste'),
('T022','2025-08-02','11:30:00','Web','Paiement',300.00,'EUR','Terminee','Services'),

('T023','2025-07-12','10:10:00','AgApp','Depot',600.00,'EUR','Terminee','Dépôt'),
('T024','2025-07-13','14:00:00','Guichet','Retrait',80.00,'EUR','Terminee','Retrait'),

('T025','2025-06-01','09:00:00','Web','Virement',1500.00,'EUR','Terminee','Transfert'),
('T026','2025-06-02','09:30:00','Mobile','Paiement',20.00,'EUR','Terminee','Achat'),

('T027','2025-05-15','10:00:00','Web','Depot',900.00,'EUR','Terminee','Apport'),
('T028','2025-05-16','16:00:00','Guichet','Retrait',40.00,'EUR','Terminee','Retrait'),

('T029','2025-04-10','08:30:00','Mobile','Virement',3000.00,'EUR','Terminee','Transfert'),
('T030','2025-04-11','09:00:00','Web','Paiement',15.00,'EUR','Terminee','Frais'),

('T031','2025-03-18','12:00:00','AgApp','Depot',2200.00,'EUR','Terminee','Dépôt'),
('T032','2025-03-19','13:00:00','Guichet','Retrait',150.00,'EUR','Terminee','Retrait'),

('T033','2025-02-01','10:10:00','Web','Virement',4500.00,'EUR','Terminee','Virement'),
('T034','2025-02-02','11:20:00','Mobile','Paiement',35.00,'EUR','Terminee','Achat'),

('T035','2025-01-10','09:00:00','Web','Depot',700.00,'EUR','Terminee','Versement'),
('T036','2025-01-11','10:05:00','Guichet','Retrait',60.00,'EUR','Terminee','Retrait'),

('T037','2025-09-22','09:30:00','Mobile','Virement',1000.00,'EUR','Terminee','Virement client'),
('T038','2025-09-23','09:40:00','Web','Paiement',200.00,'EUR','Terminee','Frais'),

('T039','2025-08-30','10:00:00','AgApp','Depot',350.00,'EUR','Terminee','Dépôt'),
('T040','2025-08-31','11:00:00','Guichet','Retrait',30.00,'EUR','Terminee','Retrait'),

('T041','2025-07-28','09:10:00','Web','Virement',9000.00,'EUR','Terminee','Transfert'),
('T042','2025-07-29','10:30:00','Mobile','Paiement',70.00,'EUR','Terminee','Achat'),

('T043','2025-06-21','12:00:00','AgApp','Depot',420.00,'EUR','Terminee','Dépôt'),
('T044','2025-06-22','13:30:00','Guichet','Retrait',25.00,'EUR','Terminee','Retrait'),

('T045','2025-05-02','09:00:00','Web','Virement',2500.00,'EUR','Terminee','Virement'),
('T046','2025-05-03','11:00:00','Mobile','Paiement',95.00,'EUR','Terminee','Achat'),

('T047','2025-04-25','10:00:00','AgApp','Depot',1100.00,'EUR','Terminee','Apport'),
('T048','2025-04-26','10:30:00','Guichet','Retrait',40.00,'EUR','Terminee','Retrait'),

('T049','2025-03-02','08:45:00','Web','Virement',800.00,'EUR','Terminee','Transfert'),
('T050','2025-03-03','09:15:00','Mobile','Paiement',10.00,'EUR','Terminee','Achat'),

('T051','2025-02-14','10:10:00','AgApp','Depot',600.00,'EUR','Terminee','Versement'),
('T052','2025-02-15','11:20:00','Guichet','Retrait',20.00,'EUR','Terminee','Retrait'),

('T053','2025-01-05','09:00:00','Web','Virement',300.00,'EUR','Terminee','Transfert'),
('T054','2025-01-06','10:00:00','Mobile','Paiement',5.00,'EUR','Terminee','Achat'),

('T055','2025-09-01','12:00:00','AgApp','Depot',1300.00,'EUR','Terminee','Dépôt'),
('T056','2025-09-02','14:00:00','Guichet','Retrait',60.00,'EUR','Terminee','Retrait'),

('T057','2025-08-08','09:30:00','Web','Virement',4400.00,'EUR','Terminee','Virement'),
('T058','2025-08-09','11:00:00','Mobile','Paiement',33.00,'EUR','Terminee','Achat'),

('T059','2025-07-03','10:00:00','AgApp','Depot',200.00,'EUR','Terminee','Dépôt'),
('T060','2025-07-04','10:30:00','Guichet','Retrait',20.00,'EUR','Terminee','Retrait'),

('T061','2025-06-11','09:00:00','Web','Virement',2700.00,'EUR','Terminee','Transfert'),
('T062','2025-06-12','09:45:00','Mobile','Paiement',12.00,'EUR','Terminee','Achat'),

('T063','2025-05-22','11:00:00','AgApp','Depot',980.00,'EUR','Terminee','Dépôt'),
('T064','2025-05-23','12:00:00','Guichet','Retrait',40.00,'EUR','Terminee','Retrait'),

('T065','2025-04-14','10:10:00','Web','Virement',5100.00,'EUR','Terminee','Transfert'),
('T066','2025-04-15','11:20:00','Mobile','Paiement',60.00,'EUR','Terminee','Achat'),

('T067','2025-03-28','09:30:00','AgApp','Depot',740.00,'EUR','Terminee','Dépôt'),
('T068','2025-03-29','10:30:00','Guichet','Retrait',70.00,'EUR','Terminee','Retrait'),

('T069','2025-02-26','08:40:00','Web','Virement',1300.00,'EUR','Terminee','Transfert'),
('T070','2025-02-27','09:50:00','Mobile','Paiement',27.00,'EUR','Terminee','Achat'),

('T071','2025-01-28','10:00:00','AgApp','Depot',310.00,'EUR','Terminee','Dépôt'),
('T072','2025-01-29','10:45:00','Guichet','Retrait',25.00,'EUR','Terminee','Retrait'),

('T073','2025-09-10','09:00:00','Web','Virement',4200.00,'EUR','Terminee','Virement'),
('T074','2025-09-11','11:00:00','Mobile','Paiement',55.00,'EUR','Terminee','Achat'),

('T075','2025-08-20','12:00:00','AgApp','Depot',100.00,'EUR','Terminee','Dépôt'),
('T076','2025-08-21','13:00:00','Guichet','Retrait',10.00,'EUR','Terminee','Retrait'),

('T077','2025-07-15','09:30:00','Web','Virement',650.00,'EUR','Terminee','Transfert'),
('T078','2025-07-16','10:30:00','Mobile','Paiement',9.00,'EUR','Terminee','Achat'),

('T079','2025-06-05','08:50:00','AgApp','Depot',520.00,'EUR','Terminee','Dépôt'),
('T080','2025-06-06','09:15:00','Guichet','Retrait',5.00,'EUR','Terminee','Retrait');

-------------------------------------------------------------------------------
/**************************************************************************
 * 4) TABLE GARANT
 **************************************************************************/

INSERT INTO GARANT (id_garant, type_garant)
VALUES
('G001','Personne Physique'),
('G002','Entreprise'),
('G003','Hypothèque'),
('G004','Caution Bancaire');

-------------------------------------------------------------------------------
/**************************************************************************
 * 5) TABLE EMPLOYE  (25 employés, 5 par agence)
 * roles ∈ {'CONSEILLER','DIRECTEUR','GESTIONNAIRE','CAISSIER','AUTRE'}
 * date_embauche ≤ 2025-10-17
 **************************************************************************/

INSERT INTO EMPLOYE (id_employe, nom, prenom, role, date_embauche, habilitations, id_agence)
VALUES
-- Agence A001
('E001','Durand','Anne','DIRECTEUR','2010-05-10','ALL','A001'),
('E002','Moreau','Sofia','CONSEILLER','2015-02-02','CONSEIL','A001'),
('E003','Petit','Lucas','GESTIONNAIRE','2018-03-03','CREDITS','A001'),
('E004','Nguyen','Linh','CAISSIER','2019-11-11','CAISSE','A001'),
('E005','Khan','Omar','CONSEILLER','2020-06-01','CONSEIL','A001'),

-- Agence A002
('E006','Martin','Philippe','DIRECTEUR','2009-04-01','ALL','A002'),
('E007','Lopez','Ana','CONSEILLER','2016-07-07','CONSEIL','A002'),
('E008','Rossi','Giulia','GESTIONNAIRE','2017-08-08','CREDITS','A002'),
('E009','Smith','John','CAISSIER','2021-01-01','CAISSE','A002'),
('E010','Garcia','Lucia','CONSEILLER','2014-09-09','CONSEIL','A002'),

-- Agence A003
('E011','Dupont','Luc','DIRECTEUR','2008-03-03','ALL','A003'),
('E012','Ivanova','Elena','CONSEILLER','2013-05-05','CONSEIL','A003'),
('E013','Tan','Wei','GESTIONNAIRE','2018-12-12','CREDITS','A003'),
('E014','Keller','Hans','CAISSIER','2020-02-02','CAISSE','A003'),
('E015','Bianchi','Marco','CONSEILLER','2019-09-09','CONSEIL','A003'),

-- Agence A004
('E016','Ben','Youssef','DIRECTEUR','2011-11-11','ALL','A004'),
('E017','Abebe','Lulit','CONSEILLER','2016-06-06','CONSEIL','A004'),
('E018','Ng','Siti','GESTIONNAIRE','2017-07-07','CREDITS','A004'),
('E019','Lopez','Miguel','CAISSIER','2022-01-10','CAISSE','A004'),
('E020','Petrov','Ivan','CONSEILLER','2015-03-03','CONSEIL','A004'),

-- Agence A005
('E021','Dubois','Lucie','DIRECTEUR','2012-04-04','ALL','A005'),
('E022','Singh','Raj','CONSEILLER','2013-08-08','CONSEIL','A005'),
('E023','Okafor','Ngozi','GESTIONNAIRE','2018-10-10','CREDITS','A005'),
('E024','Costa','Paula','CAISSIER','2019-01-01','CAISSE','A005'),
('E025','Ivanov','Alex','CONSEILLER','2020-12-12','CONSEIL','A005');

-- Tous les employés ont date_embauche ≤ 2025-10-17 et role dans l'ensemble demandé.

-------------------------------------------------------------------------------
/**************************************************************************
 * 6) TABLE COMPTE
 * - solde_comptable, solde_disponible >= 0
 * - decouvert_autorise 0/1 and plafond_decouvert accordingly
 * - date_ouverture ≤ 2025-10-17
 * - #id_transaction -> référence à TRANSACTION
 *
 * Rappel : nous créerons 53 comptes (1 par client + 13 comptes supplémentaires pour
 * les clients qui doivent avoir 2 cartes)
 **************************************************************************/

-- Génération manuelle des comptes AC001..AC053
-- Nous associons à chaque compte une transaction existante T001..T080 (ici on réutilise certains T)
INSERT INTO COMPTE (id_compte, type_compte, devise_compte, date_ouverture, date_cloture, solde_comptable, solde_disponible, decouvert_autorise, plafond_decouvert, taux_interet_applicable, id_transaction)
VALUES
-- Comptes pour clients C001..C040, un compte de base par client (C001->AC001 ... C040->AC040)
('AC001','Courant','EUR','2020-01-01', NULL, 5000.00, 5000.00, 0, 0.00, '0.5%','T001'),
('AC002','Courant','EUR','2019-05-10', NULL, 25000.00, 25000.00, 1, 5000.00, '0.75%','T003'),
('AC003','Professionnel','EUR','2018-07-01', NULL, 1500.00, 1500.00, 0, 0.00, '0.4%','T005'),
('AC004','Courant','EUR','2017-03-03', NULL, 8000.00, 8000.00, 1, 2000.00, '0.6%','T007'),
('AC005','Courant','EUR','2015-06-06', NULL, 300.00, 300.00, 0, 0.00, '0.2%','T009'),
('AC006','Professionnel','EUR','2014-09-09', NULL, 12000.00, 12000.00, 1, 3000.00, '0.9%','T011'),
('AC007','Courant','EUR','2013-11-11', NULL, 10000.00, 10000.00, 1, 1000.00, '0.5%','T013'),
('AC008','Courant','EUR','2016-02-02', NULL, 600.00, 600.00, 0, 0.00, '0.3%','T015'),
('AC009','Courant','EUR','2012-10-10', NULL, 40000.00, 40000.00, 1, 10000.00, '1.0%','T019'),
('AC010','Courant','EUR','2011-08-08', NULL, 7200.00, 7200.00, 1, 2000.00, '0.6%','T021'),
('AC011','Courant','EUR','2010-12-12', NULL, 600.00, 600.00, 0, 0.00, '0.25%','T023'),
('AC012','Courant','EUR','2009-04-04', NULL, 1500.00, 1500.00, 1, 500.00, '0.5%','T025'),
('AC013','Epargne','EUR','2008-08-08', NULL, 900.00, 900.00, 0, 0.00, '1.2%','T027'),
('AC014','Courant','EUR','2016-01-01', NULL, 3000.00, 3000.00, 1, 700.00, '0.5%','T029'),
('AC015','Courant','EUR','2017-04-04', NULL, 2200.00, 2200.00, 0, 0.00, '0.4%','T031'),
('AC016','Courant','EUR','2018-06-06', NULL, 4500.00, 4500.00, 1, 1000.00, '0.6%','T033'),
('AC017','Professionnel','EUR','2019-09-09', NULL, 700.00, 700.00, 0, 0.00, '0.3%','T035'),
('AC018','Courant','EUR','2020-02-02', NULL, 10000.00, 10000.00, 1, 2000.00, '0.8%','T037'),
('AC019','Courant','EUR','2011-01-01', NULL, 350.00, 350.00, 0, 0.00, '0.25%','T039'),
('AC020','Epargne','EUR','2012-02-02', NULL, 9000.00, 9000.00, 1, 1500.00, '1.1%','T041'),
('AC021','Courant','EUR','2013-03-03', NULL, 420.00, 420.00, 0, 0.00, '0.2%','T043'),
('AC022','Courant','EUR','2014-04-04', NULL, 2500.00, 2500.00, 1, 500.00, '0.45%','T045'),
('AC023','Courant','EUR','2015-05-05', NULL, 1100.00, 1100.00, 0, 0.00, '0.35%','T047'),
('AC024','Courant','EUR','2016-06-06', NULL, 800.00, 800.00, 1, 200.00, '0.4%','T049'),
('AC025','Professionnel','EUR','2017-07-07', NULL, 600.00, 600.00, 0, 0.00, '0.3%','T051'),
('AC026','Courant','EUR','2018-08-08', NULL, 300.00, 300.00, 0, 0.00, '0.2%','T053'),
('AC027','Courant','EUR','2019-09-09', NULL, 1300.00, 1300.00, 1, 400.00, '0.5%','T055'),
('AC028','Courant','EUR','2020-10-10', NULL, 4400.00, 4400.00, 1, 1000.00, '0.6%','T057'),
('AC029','Epargne','EUR','2011-11-11', NULL, 200.00, 200.00, 0, 0.00, '1.0%','T059'),
('AC030','Courant','EUR','2012-12-12', NULL, 2700.00, 2700.00, 1, 600.00, '0.5%','T061'),
('AC031','Courant','EUR','2013-03-03', NULL, 980.00, 980.00, 0, 0.00, '0.25%','T063'),
('AC032','Courant','EUR','2014-04-04', NULL, 5100.00, 5100.00, 1, 1200.00, '0.7%','T065'),
('AC033','Courant','EUR','2015-05-05', NULL, 740.00, 740.00, 0, 0.00, '0.3%','T067'),
('AC034','Courant','EUR','2016-06-06', NULL, 1300.00, 1300.00, 1, 300.00, '0.4%','T069'),
('AC035','Courant','EUR','2017-07-07', NULL, 310.00, 310.00, 0, 0.00, '0.2%','T071'),
('AC036','Courant','EUR','2018-08-08', NULL, 4200.00, 4200.00, 1, 1000.00, '0.6%','T073'),
('AC037','Professionnel','EUR','2019-09-09', NULL, 100.00, 100.00, 0, 0.00, '0.25%','T075'),
('AC038','Courant','EUR','2020-10-10', NULL, 650.00, 650.00, 0, 0.00, '0.2%','T077'),
('AC039','Courant','EUR','2011-01-01', NULL, 520.00, 520.00, 0, 0.00, '0.3%','T079'),
('AC040','Epargne','EUR','2012-02-02', NULL, 300.00, 300.00, 0, 0.00, '1.15%','T080'),

-- Comptes supplémentaires pour les clients qui doivent avoir 2 cartes (13 comptes additionnels)
('AC041','Courant','EUR','2018-01-01', NULL, 800.00, 800.00, 0, 0.00, '0.4%','T002'),
('AC042','Courant','EUR','2018-02-02', NULL, 1200.00, 1200.00, 1, 300.00, '0.5%','T004'),
('AC043','Courant','EUR','2019-03-03', NULL, 400.00, 400.00, 0, 0.00, '0.3%','T006'),
('AC044','Epargne','EUR','2019-04-04', NULL, 500.00, 500.00, 0, 0.00, '1.0%','T008'),
('AC045','Courant','EUR','2020-05-05', NULL, 2100.00, 2100.00, 1, 500.00, '0.5%','T010'),
('AC046','Courant','EUR','2020-06-06', NULL, 130.00, 130.00, 0, 0.00, '0.2%','T012'),
('AC047','Courant','EUR','2018-07-07', NULL, 900.00, 900.00, 0, 0.00, '0.35%','T014'),
('AC048','Courant','EUR','2017-08-08', NULL, 350.00, 350.00, 0, 0.00, '0.25%','T016'),
('AC049','Professionnel','EUR','2016-09-09', NULL, 640.00, 640.00, 1, 100.00, '0.6%','T018'),
('AC050','Courant','EUR','2015-10-10', NULL, 410.00, 410.00, 0, 0.00, '0.3%','T020'),
('AC051','Courant','EUR','2014-11-11', NULL, 220.00, 220.00, 0, 0.00, '0.25%','T022'),
('AC052','Courant','EUR','2013-12-12', NULL, 980.00, 980.00, 0, 0.00, '0.45%','T024'),
('AC053','Epargne','EUR','2012-01-01', NULL, 1500.00, 1500.00, 1, 300.00, '1.2%','T026');

-- Vérification : tous les soldes >= 0, decouvert_autorise en 0/1 avec plafond cohérent, dates ≤ 2025-10-17.

-------------------------------------------------------------------------------
/**************************************************************************
 * 7) TABLE CREDIT  (4 crédits ; 4 clients particuliers souscrivent)
 * - montant_initial > 0
 * - duree_mois > 0
 * - date_fin_prevue > date_demarrage
 * - taux_nominal_annuel ∈ [0,100]
 * - statut_credit ∈ {'EN_COURS','REMBOURSE','SUSPENDU','ANNULE'}
 * - #id_compte -> référence à un compte existant
 **************************************************************************/

-- On choisit 4 clients particuliers qui souscrivent : C023, C027, C033, C040 (exemples)
-- On lie leur crédit à l'un de leurs comptes (AC013, AC017, AC031, AC040 par exemple)

INSERT INTO CREDIT (id_credit, montant_initial, taux_nominal_annuel, duree_mois, mensualite, date_demarrage, date_fin_prevue, statut_credit, id_compte)
VALUES
('CR001', 20000.00, 3.5, 60, '363.15','2024-10-01','2029-10-01','EN_COURS','AC013'), -- client C023
('CR002', 15000.00, 4.0, 48, '340.00','2023-05-01','2027-05-01','EN_COURS','AC017'), -- client C027
('CR003', 10000.00, 5.0, 36, '299.71','2022-01-01','2025-01-02','REMBOURSE','AC031'), -- client C033 (remboursé)
('CR004', 5000.00, 6.5, 24, '223.52','2025-06-01','2027-06-01','EN_COURS','AC040'); -- client C040

-- Note : date_fin_prevue > date_demarrage et taux dans [0,100]

-------------------------------------------------------------------------------
/**************************************************************************
 * 8) TABLE CARTE
 * - une carte par compte (contrainte "Une carte par compte") : nous assurons qu'il n'y a
 *   pas plus d'une carte pour un même compte id_carte_local unique par compte
 * - plafond_retrait_quotidien >= 0, plafond_paiement_periodique >= 0
 * - statut_carte ∈ {'ACTIVE','BLOQUEE','EXPIREE'}
 * - date_expiration ≥ 2025-10-17
 *
 * Rappel : pattern des cartes par client : cycle [0,1,2] répétitif
 * - si client a 2 cartes -> on a 2 comptes (chacun avec 1 carte)
 **************************************************************************/

-- Nous attribuons une carte par compte qui doit en avoir une (selon le pattern)
-- id_carte_local est local au compte ; nous utilisons 'CARD01'.. etc.

INSERT INTO CARTE (id_compte, id_carte_local, type_carte, date_expiration, statut_carte, plafond_retrait_quotidien, plafond_paiement_periodique, numero_pan_tokenise, nombre_tentatives_PIN_erronees)
VALUES
-- Pour AC001 (client C001) : selon pattern client1 -> 0 carte (donc pas d'insertion pour AC001)
-- AC002 -> client2 -> 1 carte
('AC002','CARD01','DEBIT','2026-12-31','ACTIVE',500.00,2000.00,'PAN-TOK-0002',0),
-- AC003 -> client3 -> aura 2 cartes? pattern shows AC003 corresponds to client3 which should have 2 cartes:
('AC003','CARD01','DEBIT','2026-06-30','ACTIVE',300.00,1500.00,'PAN-TOK-0003A',0),
-- second account for same client (AC041) gets second card:
('AC041','CARD02','CREDIT','2027-01-31','ACTIVE',1000.00,5000.00,'PAN-TOK-0041B',0),

-- AC004 -> client4 pattern resets -> 0 cards? Actually pattern cycles: C004 -> 0? To follow simpler mapping, we continue mapping sequentially clients to accounts.
-- We'll follow the earlier plan: clients C001..C040; we created extra accounts AC041..AC053 for those needing 2 cards.
-- We'll now insert one card per account that should have a card.
-- For clarity, I'll add cards for the accounts that correspond to clients who must have them.

-- AC005 -> client5 (pattern: client5 -> 1 card)
('AC005','CARD01','DEBIT','2026-11-30','ACTIVE',200.00,1000.00,'PAN-TOK-0005',1),

-- Continue filling cards for the accounts we want to have cards.
('AC006','CARD01','DEBIT','2026-07-31','ACTIVE',500.00,2500.00,'PAN-TOK-0006',0),
('AC007','CARD01','DEBIT','2026-08-31','ACTIVE',400.00,2000.00,'PAN-TOK-0007',0),
('AC008','CARD01','DEBIT','2026-09-30','ACTIVE',150.00,800.00,'PAN-TOK-0008',0),
('AC009','CARD01','DEBIT','2027-03-31','ACTIVE',1000.00,10000.00,'PAN-TOK-0009',0),
('AC010','CARD01','DEBIT','2026-12-31','ACTIVE',500.00,2000.00,'PAN-TOK-0010',0),
('AC011','CARD01','DEBIT','2026-05-31','ACTIVE',100.00,500.00,'PAN-TOK-0011',0),
('AC012','CARD01','DEBIT','2027-06-30','ACTIVE',250.00,1200.00,'PAN-TOK-0012',0),
('AC013','CARD01','DEBIT','2027-01-31','ACTIVE',300.00,1500.00,'PAN-TOK-0013',0),

('AC014','CARD01','DEBIT','2026-10-31','ACTIVE',200.00,1000.00,'PAN-TOK-0014',0),
('AC015','CARD01','DEBIT','2026-09-30','ACTIVE',150.00,700.00,'PAN-TOK-0015',0),
('AC016','CARD01','DEBIT','2027-02-28','ACTIVE',400.00,1800.00,'PAN-TOK-0016',0),
('AC017','CARD01','DEBIT','2026-11-30','ACTIVE',120.00,600.00,'PAN-TOK-0017',0),
('AC018','CARD01','DEBIT','2027-03-31','ACTIVE',600.00,3000.00,'PAN-TOK-0018',0),

('AC019','CARD01','DEBIT','2026-08-31','ACTIVE',80.00,300.00,'PAN-TOK-0019',0),
('AC020','CARD01','DEBIT','2026-12-31','ACTIVE',700.00,3500.00,'PAN-TOK-0020',0),
('AC021','CARD01','DEBIT','2026-05-31','ACTIVE',90.00,400.00,'PAN-TOK-0021',0),
('AC022','CARD01','DEBIT','2026-07-31','ACTIVE',200.00,900.00,'PAN-TOK-0022',0),
('AC023','CARD01','DEBIT','2026-11-30','ACTIVE',180.00,800.00,'PAN-TOK-0023',0),

('AC024','CARD01','DEBIT','2027-05-31','ACTIVE',200.00,1000.00,'PAN-TOK-0024',0),
('AC025','CARD01','DEBIT','2026-10-31','ACTIVE',150.00,600.00,'PAN-TOK-0025',0),
('AC026','CARD01','DEBIT','2026-09-30','ACTIVE',80.00,300.00,'PAN-TOK-0026',0),
('AC027','CARD01','DEBIT','2027-04-30','ACTIVE',250.00,1200.00,'PAN-TOK-0027',0),
('AC028','CARD01','DEBIT','2027-03-31','ACTIVE',500.00,2000.00,'PAN-TOK-0028',0),

('AC029','CARD01','DEBIT','2026-11-30','ACTIVE',60.00,200.00,'PAN-TOK-0029',0),
('AC030','CARD01','DEBIT','2026-10-31','ACTIVE',300.00,1200.00,'PAN-TOK-0030',0),
('AC031','CARD01','DEBIT','2027-02-28','ACTIVE',120.00,500.00,'PAN-TOK-0031',0),
('AC032','CARD01','DEBIT','2026-12-31','ACTIVE',450.00,1800.00,'PAN-TOK-0032',0),
('AC033','CARD01','DEBIT','2026-08-31','ACTIVE',140.00,600.00,'PAN-TOK-0033',0),

('AC034','CARD01','DEBIT','2026-06-30','ACTIVE',180.00,800.00,'PAN-TOK-0034',0),
('AC035','CARD01','DEBIT','2026-11-30','ACTIVE',50.00,200.00,'PAN-TOK-0035',0),
('AC036','CARD01','DEBIT','2027-01-31','ACTIVE',700.00,3000.00,'PAN-TOK-0036',0),
('AC037','CARD01','DEBIT','2026-09-30','ACTIVE',40.00,150.00,'PAN-TOK-0037',0),
('AC038','CARD01','DEBIT','2026-10-31','ACTIVE',60.00,200.00,'PAN-TOK-0038',0),

('AC039','CARD01','DEBIT','2026-12-31','ACTIVE',70.00,300.00,'PAN-TOK-0039',0),
('AC040','CARD01','DEBIT','2027-03-31','ACTIVE',200.00,900.00,'PAN-TOK-0040',0),

-- Cartes pour comptes supplémentaires (pour clients ayant 2 cartes)
('AC042','CARD01','DEBIT','2026-12-31','ACTIVE',200.00,1000.00,'PAN-TOK-0042A',0),
('AC043','CARD01','DEBIT','2026-11-30','ACTIVE',150.00,700.00,'PAN-TOK-0043A',0),
('AC044','CARD01','DEBIT','2027-01-31','ACTIVE',100.00,500.00,'PAN-TOK-0044A',0),
('AC045','CARD01','DEBIT','2026-10-31','ACTIVE',500.00,2200.00,'PAN-TOK-0045A',0),
('AC046','CARD01','DEBIT','2026-09-30','ACTIVE',40.00,150.00,'PAN-TOK-0046A',0),
('AC047','CARD01','DEBIT','2026-08-31','ACTIVE',300.00,1400.00,'PAN-TOK-0047A',0),
('AC048','CARD01','DEBIT','2026-11-30','ACTIVE',120.00,600.00,'PAN-TOK-0048A',0),
('AC049','CARD01','DEBIT','2027-02-28','ACTIVE',100.00,400.00,'PAN-TOK-0049A',0),
('AC050','CARD01','DEBIT','2026-07-31','ACTIVE',80.00,300.00,'PAN-TOK-0050A',0),
('AC051','CARD01','DEBIT','2027-03-31','ACTIVE',60.00,250.00,'PAN-TOK-0051A',0),
('AC052','CARD01','DEBIT','2026-12-31','ACTIVE',220.00,1000.00,'PAN-TOK-0052A',0),
('AC053','CARD01','DEBIT','2027-04-30','ACTIVE',300.00,1200.00,'PAN-TOK-0053A',0);

-- Remarque : chaque date_expiration >= 2025-10-17 conformément à la contrainte.

-------------------------------------------------------------------------------
/**************************************************************************
 * 9) TABLE AFFECTATION_CONSEILLER
 * - Chaque client a au moins un conseiller (employé avec role='CONSEILLER')
 * - Clé primaire composée (#id_client,#id_employe)
 **************************************************************************/

-- Nous affectons un conseiller par client. On choisit des conseillers répartis parmi E002, E005, E007, E010, E012, E015, E017, E020, E022, E025, etc.
INSERT INTO AFFECTATION_CONSEILLER (id_client, id_employe, date_debut_affectation, date_fin_affectation)
VALUES
('C001','E002','2020-01-01',NULL),
('C002','E005','2021-02-01',NULL),
('C003','E007','2019-03-01',NULL),
('C004','E010','2018-04-01',NULL),
('C005','E012','2020-05-01',NULL),
('C006','E015','2021-06-01',NULL),
('C007','E017','2019-07-01',NULL),
('C008','E020','2022-08-01',NULL),
('C009','E022','2019-09-01',NULL),
('C010','E025','2020-10-01',NULL),
('C011','E002','2021-01-05',NULL),
('C012','E005','2021-03-03',NULL),
('C013','E007','2022-04-04',NULL),
('C014','E010','2020-06-06',NULL),
('C015','E012','2018-07-07',NULL),
('C016','E015','2017-08-08',NULL),
('C017','E017','2016-09-09',NULL),
('C018','E020','2015-10-10',NULL),
('C019','E022','2014-11-11',NULL),
('C020','E025','2013-12-12',NULL),
('C021','E002','2022-01-01',NULL),
('C022','E005','2022-02-02',NULL),
('C023','E007','2023-03-03',NULL),
('C024','E010','2023-04-04',NULL),
('C025','E012','2023-05-05',NULL),
('C026','E015','2023-06-06',NULL),
('C027','E017','2023-07-07',NULL),
('C028','E020','2023-08-08',NULL),
('C029','E022','2023-09-09',NULL),
('C030','E025','2023-10-10',NULL),
('C031','E002','2024-01-01',NULL),
('C032','E005','2024-02-02',NULL),
('C033','E007','2024-03-03',NULL),
('C034','E010','2024-04-04',NULL),
('C035','E012','2024-05-05',NULL),
('C036','E015','2024-06-06',NULL),
('C037','E017','2024-07-07',NULL),
('C038','E020','2024-08-08',NULL),
('C039','E022','2024-09-09',NULL),
('C040','E025','2024-10-10',NULL);

-- Chaque client a au moins un conseiller affecté.

-------------------------------------------------------------------------------
/**************************************************************************
 * 10) TABLE SUPERVISION
 * - Chaque employé est supervisé par un autre employé (pas lui-même)
 * - Clé primaire composée (#id_employe,#id_employe_1)
 **************************************************************************/

-- On crée un cycle de supervision simple pour éviter les self-supervision.
INSERT INTO SUPERVISION (id_employe, date_debut_supervision, id_employe_1)
VALUES
('E001','2010-05-10','E006'),
('E002','2015-02-02','E001'),
('E003','2018-03-03','E001'),
('E004','2019-11-11','E001'),
('E005','2020-06-01','E001'),

('E006','2009-04-01','E011'),
('E007','2016-07-07','E006'),
('E008','2017-08-08','E006'),
('E009','2021-01-01','E006'),
('E010','2014-09-09','E006'),

('E011','2008-03-03','E016'),
('E012','2013-05-05','E011'),
('E013','2018-12-12','E011'),
('E014','2020-02-02','E011'),
('E015','2019-09-09','E011'),

('E016','2011-11-11','E021'),
('E017','2016-06-06','E016'),
('E018','2017-07-07','E016'),
('E019','2022-01-10','E016'),
('E020','2015-03-03','E016'),

('E021','2012-04-04','E006'),
('E022','2013-08-08','E021'),
('E023','2018-10-10','E021'),
('E024','2019-01-01','E021'),
('E025','2020-12-12','E021');

-- Chaque employé a un superviseur différent et existant.

-------------------------------------------------------------------------------
/**************************************************************************
 * 11) TABLE TENANCE
 * - Lien client <-> compte (titularité)
 * - Clé primaire composée (#id_client,#id_compte)
 **************************************************************************/

-- On relie chaque client à ses comptes.
-- Rappel : client C001 -> AC001, C002 -> AC002, ..., C040 -> AC040
-- Pour ceux qui ont des comptes supplémentaires (clients avec 2 cartes), on lie le compte additionnel AC04x etc.
INSERT INTO TENANCE (id_client, id_compte, date_debut_titularite, type_titulaire)
VALUES
('C001','AC001','2020-01-01','TITULAIRE'),
('C002','AC002','2019-05-10','TITULAIRE'),
('C003','AC003','2018-07-01','TITULAIRE'),
('C004','AC004','2017-03-03','TITULAIRE'),
('C005','AC005','2015-06-06','TITULAIRE'),
('C006','AC006','2014-09-09','TITULAIRE'),
('C007','AC007','2013-11-11','TITULAIRE'),
('C008','AC008','2016-02-02','TITULAIRE'),
('C009','AC009','2012-10-10','TITULAIRE'),
('C010','AC010','2011-08-08','TITULAIRE'),
('C011','AC011','2010-12-12','TITULAIRE'),
('C012','AC012','2009-04-04','TITULAIRE'),
('C013','AC013','2008-08-08','TITULAIRE'),
('C014','AC014','2016-01-01','TITULAIRE'),
('C015','AC015','2017-04-04','TITULAIRE'),
('C016','AC016','2018-06-06','TITULAIRE'),
('C017','AC017','2019-09-09','TITULAIRE'),
('C018','AC018','2020-02-02','TITULAIRE'),
('C019','AC019','2011-01-01','TITULAIRE'),
('C020','AC020','2012-02-02','TITULAIRE'),
('C021','AC021','2013-03-03','TITULAIRE'),
('C022','AC022','2014-04-04','TITULAIRE'),
('C023','AC023','2015-05-05','TITULAIRE'),
('C024','AC024','2016-06-06','TITULAIRE'),
('C025','AC025','2017-07-07','TITULAIRE'),
('C026','AC026','2018-08-08','TITULAIRE'),
('C027','AC027','2019-09-09','TITULAIRE'),
('C028','AC028','2020-10-10','TITULAIRE'),
('C029','AC029','2011-11-11','TITULAIRE'),
('C030','AC030','2012-12-12','TITULAIRE'),
('C031','AC031','2013-03-03','TITULAIRE'),
('C032','AC032','2014-04-04','TITULAIRE'),
('C033','AC033','2015-05-05','TITULAIRE'),
('C034','AC034','2016-06-06','TITULAIRE'),
('C035','AC035','2017-07-07','TITULAIRE'),
('C036','AC036','2018-08-08','TITULAIRE'),
('C037','AC037','2019-09-09','TITULAIRE'),
('C038','AC038','2020-10-10','TITULAIRE'),
('C039','AC039','2011-01-01','TITULAIRE'),
('C040','AC040','2012-02-02','TITULAIRE'),

-- Liens pour comptes supplémentaires (pour clients ayant 2 cartes) :
('C003','AC041','2021-01-01','TITULAIRE'),
('C006','AC042','2021-02-01','TITULAIRE'),
('C009','AC043','2021-03-01','TITULAIRE'),
('C012','AC044','2021-04-01','TITULAIRE'),
('C015','AC045','2021-05-01','TITULAIRE'),
('C018','AC046','2021-06-01','TITULAIRE'),
('C021','AC047','2021-07-01','TITULAIRE'),
('C024','AC048','2021-08-01','TITULAIRE'),
('C027','AC049','2021-09-01','TITULAIRE'),
('C030','AC050','2021-10-01','TITULAIRE'),
('C033','AC051','2022-01-01','TITULAIRE'),
('C036','AC052','2022-02-01','TITULAIRE'),
('C039','AC053','2022-03-01','TITULAIRE');

-------------------------------------------------------------------------------
/**************************************************************************
 * 12) TABLE POSSEDE
 * - Clé primaire composée (#id_client, #id_compte, id_carte_local)
 * - Ids doivent être non nuls et existent
 * - On associe les cartes insérées aux clients via leurs comptes
 **************************************************************************/

-- On relie les cartes aux clients via les comptes (correspondance entre TENANCE et CARTE)
INSERT INTO POSSEDE (id_client, id_compte, id_carte_local)
VALUES
-- Exemples : client C002 possède la carte sur AC002
('C002','AC002','CARD01'),
-- client C003 possède cartes sur AC003 et AC041
('C003','AC003','CARD01'),
('C003','AC041','CARD02'),
('C005','AC005','CARD01'),
('C006','AC006','CARD01'),
('C007','AC007','CARD01'),
('C008','AC008','CARD01'),
('C009','AC009','CARD01'),
('C010','AC010','CARD01'),
('C011','AC011','CARD01'),
('C012','AC012','CARD01'),
('C013','AC013','CARD01'),
('C014','AC014','CARD01'),
('C015','AC015','CARD01'),
('C016','AC016','CARD01'),
('C017','AC017','CARD01'),
('C018','AC018','CARD01'),
('C019','AC019','CARD01'),
('C020','AC020','CARD01'),
('C021','AC021','CARD01'),
('C022','AC022','CARD01'),
('C023','AC023','CARD01'),
('C024','AC024','CARD01'),
('C025','AC025','CARD01'),
('C026','AC026','CARD01'),
('C027','AC027','CARD01'),
('C028','AC028','CARD01'),
('C029','AC029','CARD01'),
('C030','AC030','CARD01'),
('C031','AC031','CARD01'),
('C032','AC032','CARD01'),
('C033','AC033','CARD01'),
('C034','AC034','CARD01'),
('C035','AC035','CARD01'),
('C036','AC036','CARD01'),
('C037','AC037','CARD01'),
('C038','AC038','CARD01'),
('C039','AC039','CARD01'),
('C040','AC040','CARD01'),
-- comptes supplémentaires/cards
('C006','AC042','CARD01'),
('C009','AC043','CARD01'),
('C012','AC044','CARD01'),
('C015','AC045','CARD01'),
('C018','AC046','CARD01'),
('C021','AC047','CARD01'),
('C024','AC048','CARD01'),
('C027','AC049','CARD01'),
('C030','AC050','CARD01'),
('C033','AC051','CARD01'),
('C036','AC052','CARD01'),
('C039','AC053','CARD01');

-- Tous les couples référencent des enregistrements existants dans CLIENT, COMPTE et CARTE.

-------------------------------------------------------------------------------
/**************************************************************************
 * 13) TABLE CREDITE
 * - association (#id_compte,#id_transaction)
 * - On s'assure qu'au moins un compte a été crédité (opération de type 'Depot' ou Virement)
 **************************************************************************/

INSERT INTO CREDITE (id_compte, id_transaction)
VALUES
-- On relie plusieurs comptes à des transactions (choix cohérent pour représenter des crédits sur comptes)
('AC001','T001'),
('AC002','T003'),
('AC003','T005'),
('AC004','T007'),
('AC005','T009'),
('AC006','T011'),
('AC007','T013'),
('AC008','T015'),
('AC009','T019'),
('AC010','T021'),
('AC011','T023'),
('AC012','T025'),
('AC013','T027'),
('AC014','T029'),
('AC015','T031'),
('AC016','T033'),
('AC017','T035'),
('AC018','T037'),
('AC019','T039'),
('AC020','T041');

-- Au moins un compte (plusieurs ici) ont été crédités (exigence respectée).

-------------------------------------------------------------------------------
/**************************************************************************
 * 14) TABLE SOUSCRIRE
 * - (#id_client,#id_credit) : 4 clients particuliers souscrivent à 4 crédits
 **************************************************************************/

INSERT INTO SOUSCRIRE (id_client, id_credit)
VALUES
('C023','CR001'),
('C027','CR002'),
('C033','CR003'),
('C040','CR004');

-------------------------------------------------------------------------------
/**************************************************************************
 * 15) TABLE GARANTIR
 * - On souhaite que la moitié des crédits (2 sur 4) aient un garant
 **************************************************************************/

INSERT INTO GARANTIR (id_credit, id_garant)
VALUES
('CR001','G001'), -- CR001 a un garant personne physique
('CR002','G002'); -- CR002 a un garant entreprise

-- CR003 et CR004 sans garant (donc 2 crédits garantis sur 4)

-------------------------------------------------------------------------------
/**************************************************************************
 * 16) TABLE AUTORISATION
 * - Association ternaire (#id_employe,#id_transaction,#(#id_compte,id_carte_local), plus id_autorisation, date_autorisation, heure_autorisation, resultat_autorisation, motif_rejet)
 * - id_autorisation clé primaire
 * - On crée quelques autorisations cohérentes
 **************************************************************************/

INSERT INTO AUTORISATION (id_employe, id_transaction, id_compte, id_carte_local, id_autorisation, date_autorisation, heure_autorisation, resultat_autorisation, motif_rejet)
VALUES
('E002','T002','AC001','CARD_NONE','AUTH001','2025-09-21','10:01:00','Terminee',NULL),
('E005','T004','AC042','CARD01','AUTH002','2025-08-13','14:35:00','Terminee',NULL),
('E007','T006','AC043','CARD01','AUTH003','2025-07-02','12:05:00','Terminee',NULL),
('E010','T008','AC044','CARD01','AUTH004','2025-06-16','16:50:00','Terminee',NULL),
('E012','T010','AC045','CARD01','AUTH005','2025-05-11','09:55:00','Terminee',NULL),
('E015','T012','AC046','CARD01','AUTH006','2025-04-03','11:12:00','Terminee',NULL),
('E017','T014','AC047','CARD01','AUTH007','2025-03-06','10:31:00','Terminee',NULL),
('E020','T016','AC048','CARD01','AUTH008','2025-02-11','15:45:00','Terminee',NULL),
('E022','T018','AC049','CARD01','AUTH009','2025-01-21','12:02:00','Terminee',NULL),
('E025','T020','AC050','CARD01','AUTH010','2025-09-06','10:35:00','Terminee',NULL);

-- Note : pour certaines autorisations j'ai mis id_carte_local 'CARD_NONE' si action liée à guichet non liée à carte
-- Assurez-vous que la structure AUTORISATION dans votre SGBD accepte les champs tels qu'ils sont fournis.

-------------------------------------------------------------------------------
/**************************************************************************
 * 17) TABLE GERE
 * - Chaque crédit est géré par l'employé affecté au client qui a souscrit le crédit
 **************************************************************************/

-- CR001 -> client C023 (conseiller affecté E007)
INSERT INTO GERE (id_employe, id_credit)
VALUES
('E007','CR001'),
-- CR002 -> client C027 (conseiller affecté E017)
('E017','CR002'),
-- CR003 -> client C033 (conseiller affecté E007)
('E007','CR003'),
-- CR004 -> client C040 (conseiller affecté E025)
('E025','CR004');

-- Fin des insertions.

SET FOREIGN_KEY_CHECKS=1;

-- FIN DU SCRIPT
