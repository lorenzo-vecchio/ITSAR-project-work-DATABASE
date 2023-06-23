/*query per prelevare tutte le informazioni di tutti gli animali di un singolo utente*/
SELECT animali.nomeAnimale, animali.sesso, animali.data_di_nascita, animali.peso, razze.nomeRazza, specie.nomeSpecie
FROM animali 
INNER JOIN razze ON animali.id_razza = razze.id
INNER JOIN specie ON razze.id_specie = specie.id
WHERE animali.id_utente = "1";

/*query per la specie dell'animale*/
SELECT * FROM specie;

/*query per tutte le razze*/
SELECT nomeRazze FROM razze;
SELECT nomeRazze FROM razze;

/*query per trovare le razze di quella specie (es: cane -> labrador, gatto -> persiano)*/
SELECT r.nomeRazza 
FROM razze as r INNER JOIN specie as s on r.id_specie = s.id
WHERE nomeSpecie = "cane";

/*elimina un animale di un utente*/
DELETE FROM animali WHERE id = "1" /*id animale*/ and id_utente = "1"; /*id utente*/ 

/*query per modificare i campi dell'animale di un singolo utente (gli scrivo tutti in una riga ma il concetto è sempre lo stesso)*/
UPDATE animali 
SET nomeAnimale = "bella gianda", sesso = "m", data_di_nascita = "2023-06-21", id_razza = 1, peso = 10.6
WHERE id=1 and id_utente = 1;
