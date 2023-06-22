/*query per il promemoria di un singolo utente e quali animali sono collegati, in ordine dal più vicino a al più lontano*/
SELECT pm.id,pm.titolo, pm.descrizione, pm.data_e_ora, a.nomeAnimale
FROM promemoria as pm INNER JOIN riferimento as r on pm.id = r.id_promemoria
INNER JOIN animali as a on r.id_animale = a.id INNER JOIN utenti as u on a.id_utente = u.id
WHERE u.id = 1
ORDER BY pm.data_e_ora;


