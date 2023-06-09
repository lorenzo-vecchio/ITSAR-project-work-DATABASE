SELECT s.nomeLuogo, l.nomeLocalita, l.provincia
from utenti as u INNER JOIN preferiti as p on u.id = p.id_utente 
INNER JOIN servizi as s on p.id_servizi = s.id INNER JOIN localita as l on s.id_localita = l.id
where u.id=1;

