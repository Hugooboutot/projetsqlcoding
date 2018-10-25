SELECT S.nom, S.servicedatetime, S.cpost, S.ville, S.pays
FROM service as S
WHERE servicedatetime >= CURRENT_TIMESTAMP 
AND S.id NOT IN
	(
		SELECT id_service
		FROM service_user
	)
ORDER BY servicedatetime DESC, ville ASC;