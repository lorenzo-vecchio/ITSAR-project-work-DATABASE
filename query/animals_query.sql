/*query per prelevare tutte le informazioni di un animali tramite l'id di utente*/
SELECT animali.nomeAnimale, animali.sesso, animali.data_di_nascita, animali.peso, razze.nomeRazza, specie.nomeSpecie
FROM animali 
INNER JOIN razze ON animali.id_razza = razze.id
INNER JOIN specie ON razze.id_specie = specie.id
WHERE animali.id_utente = "1";

/*query per la specie dell'animale*/
SELECT nomeSpecie FROM specie;

/*query per tutte le razze*/
SELECT nomeRazze FROM razze;

/*query per trovare le razze di quella specie (es: cane,gatto ecc..)*/
SELECT r.nomeRazza 
FROM razze as r INNER JOIN specie as s on r.id_specie = s.id
WHERE nomeSpecie = "cane";
