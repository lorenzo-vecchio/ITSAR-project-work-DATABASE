SELECT pm.titolo, pm.descrizione, pm.data_e_ora, a.nomeAnimale
FROM promemoria as pm INNER JOIN riferimento as r on pm.id = r.id_promemoria
INNER JOIN animali as a on r.id_animale = a.id INNER JOIN utenti as u on a.id_utente = u.id
WHERE u.id = 1;