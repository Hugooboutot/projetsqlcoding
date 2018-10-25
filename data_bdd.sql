/* ---------------------------------------------------------------
							STORY 2
--------------------------------------------------------------- */

/* ---------- USER ---------- */

INSERT INTO user (email, mdp, pseudo, regdate)
VALUES 	('email01@gmail.com' , '12345'        , 'Mgleizer' , '2018/10/22'),
		('email02@gmail.com' , 'gtgdt12'      , 'Aboucher' , '2018/10/22'),
 		('email03@gmail.com' , 'judegdey'     , 'Hboutot'  , '2018/10/22'),
 		('email04@gmail.com' , 'cbdcvbcbb'    , 'Djisseau' , '2018/10/22'),
 		('email05@gmail.com' , 'hdgycdc'      , 'Lfaucher' , '2018/10/22'),
 		('email06@gmail.com' , 'hdggygef'     , 'Byatera'  , '2018/10/22'),
 		('email07@gmail.com' , 'FGEFFFR'      , 'Jlim'     , '2018/10/22'),
 		('email08@gmail.com' , 'dzhgzdgg'     , 'Bgrandin' , '2018/10/22'),
 		('email09@gmail.com' , 'yagdd'        , 'Dlievre'  , '2018/10/22'),
 		('email10@gmail.com' , 'qfdhsbfqhjs'  , 'Kabdel'   , '2018/10/22'),
 		('email11@gmail.com' , 'djhddhjjd'    , 'Rachour'  , '2018/10/22'),
 		('email12@gmail.com' , 'deddedue'    , 'Tasloum'  , '2018/10/22'),
 		('email13@gmail.com' , 'fesfedfeddd'  , 'Ntouazi'  , '2018/10/22'),
 		('email14@gmail.com' , 'cehebhfge'    , 'Adrieux'  , '2018/10/22'),
 		('email15@gmail.com' , 'EHBEZKHD'     , 'Aberoule' , '2018/10/22'),
 		('email16@gmail.com' , 'ekuhfheuhf'   , 'Ahuet'    , '2018/10/22'),
 		('email17@gmail.com' , 'JHVFJSVDVVV'  , 'Aaubert'  , '2018/10/22'),
 		('email18@gmail.com' , 'hgjegjggg'    , 'Apulby'   , '2018/10/22'),
 		('email19@gmail.com' , 'EHFBHJEGGGDF' , 'Hadrien'  , '2018/10/22'),
 		('email20@gmail.com' , 'fhvefhjevv'   , 'Barab'    , '2018/10/22'),
 		('email21@gmail.com' , 'FJHFJHS'      , 'Cjoseph'  , '2018/10/22'),
 		('email22@gmail.com' , 'FEKBFGGHHF'   , 'Cmallet'  , '2018/10/22'),
 		('email23@gmail.com' , 'jbfehgSD'     , 'Drussier' , '2018/10/22'),
 		('email24@gmail.com' , 'FSHFBjkffjkk' , 'Dung'     , '2018/10/22'),
 		('email25@gmail.com' , 'FEKHFBKHdgj'  , 'Cheatcode', '2018/10/22');

/* ---------- SERVICE --------- */

INSERT INTO service (id_user, nom, description, adresse, cpost, ville, pays, servicedatetime, infoplus)
VALUES	(1, 'Bricolage', 'Bricolage divers', '34 rue de la République', '75001', 'Paris', 'France', '2018-10-27 11:45', NULL),
		(2, 'Jardinage', 'Entretien jardin', "57 rue Jeanne d'Arc", '75002', 'Paris', 'France', '2018-10-28 09:00', NULL),
		(3, 'Décoration', "Décoration d'intérieur et d'extérieur", '26 rue du Trône de Fer', '75003', 'Paris', 'France', '2018-10-29 13:30', NULL),
		(4, 'Plomberie', "Problème de plomberie ? J'interviens à votre domicile", '1 rue du Détour', '75004', 'Paris', 'France', '2018-10-30 15:15', NULL),
		(5, 'Electricien', "Je mets à disposition mes capacités d'électricien", '4 rue Marc Chagall', '75005', 'Paris', 'France', '2018-10-31 12:45', NULL),
		(6, 'Couvreur', 'Pose, entretien et réparation de votre toit', "96 rue de l'Impasse", '75006', 'Paris', 'France', '2018-11-01 11:30', NULL),
		(7, 'Ramoneur', 'Entretien de votre cheminée', '48 rue du Python', '75007', 'Paris', 'France', '2018-11-02 11:45:00', NULL),
		(8, 'Coffreur', 'Réalisation de dalles en béton, escaliers et poutres', '32 avenue Napoléon', '75008', 'Paris', 'France', '2018-11-03 11:45', NULL),
		(9, 'Babysitting', 'Babysitting à domicile', '14 rue du chemin étroit', '75009', 'Paris', 'France', '2018-11-04 17:15', NULL),
		(10, 'Coaching', 'Coach sportif et nutritif', '9 rue du Luxembourg', '75010', 'Paris', 'France', '2018-11-05 18:00', NULL),
		(11, 'Animateur', 'Animation diverse', '36 quai des Orfèvres', '75011', 'Paris', 'France', '2018-11-06 21:00', NULL),
		(12, 'Organisateur', "Organisation d'évènements", '7 avenue du Général de Gaulle', '75012', 'Paris', 'France', '2018-11-07 08:30', NULL),
		(13, 'Videur', 'Je propose mes services de sécurité pour des évènements particuliers', '25 rue Georges Pompidou', '75012', 'Paris', 'France', '2018-11-08 22:00', NULL),
		(14, 'Gardiennage', "J'offre mes services de gardiennage", '38 rue Kennedy', '75014', 'Paris', 'France', '2018-11-09 10:00', NULL),
		(15, 'Location', 'Location en tout genre', '57 avenue Churchill', '75015', 'Paris', 'France', '2018-11-10 09:45', NULL),
		(16, 'Co-voiturage', 'Co-voiturage', '24 rue du Bel-Air', '75016', 'Paris', 'France', '2018-11-11 11:15', NULL),
		(17, 'Professeur', 'Professeur pour soutien scolaire', '75 rue de Paris', '75017', 'Paris', 'France', '2018-11-12 16:30', NULL),
		(18, 'Coiffeur', 'Coiffeur', '88 rue du Bowling', '75018', 'Paris', 'France', '2018-11-13 11:45', NULL),
		(19, 'Infirmière', 'Infirmière à domicile', '77 avenue des Champs-Elysées', '75019', 'Paris', 'France', '2018-11-14 09:00', NULL),
		(20, 'Tailleur', 'Tailleur de pierre, sculpteur', '68 rue Claude Monet', '75020', 'Paris', 'France', '2018-11-15 10:30', NULL);

/* ---------- SERVICE_USER --------- */

INSERT INTO service_user (id, id_user, id_service, regdatetime) 
VALUES	(1, 1, 10, '2018-10-23 10:01:23'),
		(2, 19, 17, '2018-10-23 10:02:23'),
		(3, 19, 8, '2018-10-23 10:03:23'),
		(4, 19, 15, '2018-10-23 10:04:23'),
		(5, 19, 18, '2018-10-23 10:05:23'),
		(6, 4, 3, '2018-10-23 10:06:23'),
		(7, 6, 11, '2018-10-23 10:07:23'),
		(8, 5, 16, '2018-10-23 10:08:23'),
		(9, 10, 4, '2018-10-23 10:09:23'),
		(10, 14, 13, '2018-10-23 10:10:23');

/* ---------- MESSAGE --------- */

INSERT INTO message ( id_sender , id_receiver , content )
VALUES  (1, 2, 'salut'),
		(3, 4, 'salut2'),
		(5, 6, 'salut3'),
		(7, 8, 'salut4'),
		(9, 10, 'salut5'),
		(11, 12, 'salut6'),
		(13, 14, 'salut7'),
		(15, 16, 'salut8'),
		(17, 18, 'salut9'),
		(19, 20, 'salut10'),
		(21, 22, 'salut11'),
		(23, 24, 'salut12'),
		(25, 1, 'salut13'),
		(2, 3, 'salut14'),
		(4, 5, 'salut15'),
		(6, 7, 'salut16'),
		(8, 9, 'salut17'),
		(10, 11, 'salut18'),
		(12, 13, 'salut19'),
		(14, 15, 'salut20'),
		(16, 17, 'salut21'),
		(18, 19, 'salut22'),
		(20, 21, 'salut23'),
		(24, 25, 'salut25'),
		(1, 25, 'salut26'),
		(2, 24, 'salut27'),
		(3, 23, 'salut28'),
		(4, 22, 'salut29'),
		(5, 21, 'salut30'),
		(6, 20, 'salut31');