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