/*query per il promemoria di un singolo utente e quali animali sono collegati, in ordine ma dalla corrente*/
SELECT pm.id,pm.titolo, pm.descrizione, pm.data_e_ora, a.nomeAnimale
FROM promemoria as pm INNER JOIN riferimento as r on pm.id = r.id_promemoria
INNER JOIN animali as a on r.id_animale = a.id INNER JOIN utenti as u on a.id_utente = u.id
WHERE u.id = 1 AND pm.data_e_ora >= CURDATE()
ORDER BY pm.data_e_ora;

/*query per il promemoria di un singolo utente e quali animali sono collegati, in ordine dalle date inserite anche quelle passate*/
SELECT pm.id,pm.titolo, pm.descrizione, pm.data_e_ora, a.nomeAnimale
FROM promemoria as pm INNER JOIN riferimento as r on pm.id = r.id_promemoria
INNER JOIN animali as a on r.id_animale = a.id INNER JOIN utenti as u on a.id_utente = u.id
WHERE u.id = 1
ORDER BY pm.data_e_ora;



