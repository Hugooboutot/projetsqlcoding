-- Story 8 : Afficher les conversations d'un utilisateur --

SELECT content
FROM message
WHERE id_sender = 1
ORDER BY sendtime DESC;


-- Story 9 : Afficher les messages d'une conversation --

SELECT content
FROM message
WHERE id_sender = 9 AND id_receiver = 10
OR id_sender = 10 AND id_receiver = 9
ORDER BY sendtime DESC;

-- Story 11 : Afficher liste services --

SELECT U.pseudo AS Créateur_service, U.telportable AS Téléphone_portable, U2.pseudo AS pseudo_inscrit, S.nom, S.description, S.adresse, S.cpost, S.ville, S.pays, S.servicedatetime, S.infoplus
FROM service AS S
INNER JOIN user AS U
	ON U.id = S.id_user
LEFT JOIN service_user AS SU
	ON SU.id = S.id
LEFT JOIN user AS U2
ON  U2.id = SU.id_user
WHERE S.id = 3;