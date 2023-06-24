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

/*query per eliminare un promemoria di un singolo utente*/
DELETE FROM riferimento
WHERE id_promemoria = 1;

/*query per aggiornare un promemoria (con tutti i campi ma si può fare anche con un singolo di questi)*/
UPDATE promemoria
SET titolo = "nuovoTitolo", descrizione="nuovaDescrizione", data_e_ora = "2023/06/24 16:40"
WHERE id=1;

/*per eliminare un animale dal promemoria*/
DELETE FROM riferimento
WHERE id_promemoria = 1 and id_animale = 1;



