/* ---------------------------------------------------------------
							STORY 3
--------------------------------------------------------------- */

INSERT INTO user(email, mdp, pseudo, regdate)
VALUES ('Jarnhaut@gmail.com', 'gdeuxgosses', 'Jarnhaut', '2018/10/22');

/* ---------------------------------------------------------------
							STORY 4
--------------------------------------------------------------- */

UPDATE user
SET adresse = "1 rue lambda", cpost = "12345", ville = "ville1", pays = "France", telportable = "0607080910", telfixe = NULL;
WHERE id = 1;

/* ---------------------------------------------------------------
							STORY 5
--------------------------------------------------------------- */

INSERT INTO service (id_user, nom, description, adresse, cpost, ville, pays, servicedatetime, infoplus)
VALUES	(1, 'Bricolage2', 'Bricolage divers', '34 rue de la République', '75001', 'Paris','France', '2018-10-27 11:45:00', NULL);

/* ---------------------------------------------------------------
							STORY 6
--------------------------------------------------------------- */

INSERT INTO service_user (id_user, id_service) 
VALUES	(10, 10);

/* ---------------------------------------------------------------
							STORY 7
--------------------------------------------------------------- */

INSERT INTO message (id_sender, id_receiver, content)
VALUES  (1, 2, 'sampletext');

/* ---------------------------------------------------------------
							STORY 8
--------------------------------------------------------------- */

SELECT content
FROM message
WHERE id_sender = 1
ORDER BY sendtime DESC;

/* ---------------------------------------------------------------
							STORY 9
--------------------------------------------------------------- */

SELECT content
FROM message
WHERE id_sender = 9 AND id_receiver = 10
OR id_sender = 10 AND id_receiver = 9
ORDER BY sendtime DESC;

/* ---------------------------------------------------------------
							STORY 10
--------------------------------------------------------------- */

SELECT S.nom, S.servicedatetime, S.cpost, S.ville, S.pays
FROM service as S
WHERE servicedatetime >= CURRENT_TIMESTAMP 
AND S.id NOT IN
	(
		SELECT id_service
		FROM service_user
	)
ORDER BY servicedatetime DESC, ville ASC;

/* ---------------------------------------------------------------
							STORY 11
--------------------------------------------------------------- */

SELECT U.pseudo AS Créateur_service, U.telportable AS Téléphone_portable, U2.pseudo AS pseudo_inscrit, S.nom, S.description, S.adresse, S.cpost, S.ville, S.pays, S.servicedatetime, S.infoplus
FROM service AS S
INNER JOIN user AS U
	ON U.id = S.id_user
LEFT JOIN service_user AS SU
	ON SU.id = S.id
LEFT JOIN user AS U2
ON  U2.id = SU.id_user
WHERE S.id = 3;

/* ---------------------------------------------------------------
							STORY 12
--------------------------------------------------------------- */

DELETE FROM service
WHERE id = 1;

/* ---------------------------------------------------------------
							STORY 13
--------------------------------------------------------------- */

DELETE FROM service_user
WHERE id = 1;

/* ---------------------------------------------------------------
							STORY 14
--------------------------------------------------------------- */

DELETE FROM user
WHERE id = 1

/* ---------------------------------------------------------------
							STORY 15
--------------------------------------------------------------- */

DELETE FROM message
WHERE id = 1

/* ---------------------------------------------------------------
							STORY 16
--------------------------------------------------------------- */

SELECT S.*, U.pseudo, U.email, U.telportable, 
	(SELECT COUNT(SU.id)
	FROM service_user as SU
	INNER JOIN user as U
	ON SU.id_user = U.id WHERE U.id = 19
	)
	 as TOTAL
FROM service_user as SU
INNER JOIN user as U
	ON U.id = SU.id_user
LEFT JOIN service as S
	ON S.id = SU.id_service WHERE SU.id_user = 19
ORDER BY S.servicedatetime DESC, S.ville ASC;

/* ---------------------------------------------------------------
							STORY 17
--------------------------------------------------------------- */

SELECT S.*, U.pseudo, U.email, U.telportable, 
	(SELECT COUNT(SU.id)
	FROM service_user as SU
	INNER JOIN user as U
	ON SU.id_user = U.id WHERE U.id = 19
	)
	 as TOTAL
FROM service_user as SU
INNER JOIN user as U
	ON U.id = SU.id_user
LEFT JOIN service as S
	ON S.id = SU.id_service WHERE SU.id_user = 19
ORDER BY S.servicedatetime ASC
LIMIT 1;

