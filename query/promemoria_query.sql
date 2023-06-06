
SELECT p.titolo, p.descrizione, p.data_e_ora, a.nomeAnimale
FROM promemoria as p INNER JOIN animali as a on p.id_animale = a.id INNER JOIN utenti as u on p.id_utente = u.id;