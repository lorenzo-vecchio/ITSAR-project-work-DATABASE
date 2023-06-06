SELECT animali.nomeAnimale, animali.sesso, animali.data_di_nascita, razze.nomeRazza, specie.nomeSpecie
FROM animali 
INNER JOIN razze ON animali.id_razza = razze.id 
INNER JOIN specie ON razze.id_specie = specie.id 
WHERE animali.id_utente = "1";