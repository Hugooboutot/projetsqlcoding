SELECT S.*, U.*
FROM service as S
INNER JOIN user as U, service_user as T
	ON S.id_user = T.id_user 

ORDER BY S.servicedatetime DESC, S.ville ASC;