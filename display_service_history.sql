SELECT S.*,
	(SELECT COUNT(SU.id_user)
	FROM service_user as SU
	INNER JOIN service as S
	ON S.id_user = SU.id_user WHERE S.id_user = 1
	)
	 as TOTAL 
FROM service_user as SU
INNER JOIN service as S
	ON S.id = SU.id_user WHERE S.id_user = 1
ORDER BY S.servicedatetime DESC, S.ville ASC;