SELECT l.nomeLuogo, tl.nomeTipo,pv.nomeProvincia, pv.sigla
FROM luoghi as l INNER JOIN preferiti as pr on l.id = pr.id_luogo 
INNER JOIN utenti as u on pr.id_utente = u.id 
INNER JOIN tipo_luoghi as tl on l.id_tipo_luogo = tl.id
INNER JOIN localita as lo on l.id_localita = lo.id
INNER JOIN province as pv on pv.id = lo.id_provincia
WHERE u.id = "1";