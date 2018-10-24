-- Afficher les conversations d'un utilisateur --

SELECT U.pseudo, M.content
FROM Utilisateur as U
INNER JOIN Message as M
		ON U.id = M.id_sender
WHERE U.id = 1
ORDER BY sendtime DESC;


-- Afficher les messages d'une conversation --

SELECT U.pseudo, M.content
FROM Utilisateur as U
INNER JOIN Message as M
		ON U.id = M.id_sender
		AND U.id = M.id_receiver
WHERE M.id_sender = 1
AND M.id_receiver = 2
ORDER BY sendtime DESC;