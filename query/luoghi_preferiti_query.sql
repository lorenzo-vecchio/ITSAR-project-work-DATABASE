/*query per tutti i luoghi preferiti di quel utente e di quel di nomeTipo*/
SELECT s.nomeLuogo, l.nomeLocalita, l.provincia
from utenti as u INNER JOIN preferiti as p on u.id = p.id_utente 
INNER JOIN servizi as s on p.id_servizi = s.id 
INNER JOIN localita as l on s.id_localita = l.id
INNER JOIN tipologia_servizi as tp on s.id_tipo_servizio = tp.id
where u.id=1 and tp.nomeTipo = "Parco";


/*query per tutti i luoghi preferiti di quel utente*/
SELECT s.nomeLuogo, l.nomeLocalita, l.provincia
from utenti as u INNER JOIN preferiti as p on u.id = p.id_utente 
INNER JOIN servizi as s on p.id_servizi = s.id 
INNER JOIN localita as l on s.id_localita = l.id
where u.id=1;

/*query per tutti i luoghi preferiti di quel utente e di quella specifica localita*/
SELECT s.nomeLuogo
from utenti as u INNER JOIN preferiti as p on u.id = p.id_utente 
INNER JOIN servizi as s on p.id_servizi = s.id 
INNER JOIN localita as l on s.id_localita = l.id
where u.id=1 and l.nomeLocalita="Milano";

/*query per tutti i luoghi preferiti di quel utente e di quella specifica provincia*/
SELECT s.nomeLuogo, l.nomeLocalita
from utenti as u INNER JOIN preferiti as p on u.id = p.id_utente 
INNER JOIN servizi as s on p.id_servizi = s.id 
INNER JOIN localita as l on s.id_localita = l.id
where u.id=1 and l.provincia ="Milano";

/*query per tutti i luoghi preferiti di quel utente e di quella specifica regione*/
SELECT s.nomeLuogo, l.nomeLocalita, l.provincia
from utenti as u INNER JOIN preferiti as p on u.id = p.id_utente 
INNER JOIN servizi as s on p.id_servizi = s.id 
INNER JOIN localita as l on s.id_localita = l.id
where u.id=1 and l.regione ="Lombardia";

/*query per togliere un luogo preferito*/
DELETE FROM preferiti
WHERE id_utente = 1 and id_servizi = 1;



