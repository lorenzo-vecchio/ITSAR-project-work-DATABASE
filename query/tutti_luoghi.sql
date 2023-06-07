SELECT l.nomeLuogo, tl.nomeTipo, loc.nomeLocalita, prov.sigla, reg.nomeRegione, l.latitudine, l.longitudine
FROM luoghi AS l
JOIN tipo_luoghi AS tl ON l.id_tipo_luogo = tl.id
JOIN localita AS loc ON l.id_localita = loc.id
JOIN province AS prov ON loc.id_provincia = prov.id
JOIN regioni AS reg ON prov.id_regione = reg.id;
