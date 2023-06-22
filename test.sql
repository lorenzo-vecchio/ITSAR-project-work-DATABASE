INSERT INTO utenti (userName, password, email) VALUES ('testuser', 'testpassword', 'testuser@example.com');
INSERT INTO specie (nomeSpecie) VALUES ('Cane');
INSERT INTO specie (nomeSpecie) VALUES ('Gatto');
INSERT INTO specie (nomeSpecie) VALUES ('Uccello');
INSERT INTO specie (nomeSpecie) VALUES ('Pesce');
INSERT INTO razze (nomeRazza, id_specie) VALUES ('Labrador', 1);
INSERT INTO razze (nomeRazza, id_specie) VALUES ('Persiano', 2);
INSERT INTO razze (nomeRazza, id_specie) VALUES ('Canarino', 3);
INSERT INTO animali (nomeAnimale, sesso, data_di_nascita,peso, id_razza, id_utente) VALUES ('Fido', 'M', '2020-01-01',10, 1, 1);
INSERT INTO animali (nomeAnimale, sesso, data_di_nascita,peso, id_razza, id_utente) VALUES ('Whiskers', 'F', '2019-05-15',5, 2, 1);
INSERT INTO animali (nomeAnimale, sesso, data_di_nascita,peso, id_razza, id_utente) VALUES ('Tweety', 'M', '2022-03-10',0.016, 3, 1);

INSERT INTO promemoria (titolo, descrizione, data_e_ora)
VALUES ("veterinaio luigi", "Portare fido dal veterinario", '2023-06-20 08:30:00');

INSERT INTO riferimento(id_promemoria, id_animale)
values (1,1),
(1,2);

INSERT INTO tipologia_servizi (nomeTipo)
VALUES ("Parco"),
	   ("Veterinaio"),
	   ("Negozio"),
	   ("Farmacia");
       
INSERT INTO servizi (nomeLuogo, latitudine, longitudine, id_tipo_servizio, id_localita)
VALUES ("Parco Monza", 10, 100, 1, 1),
       ("Parco Villa Borghese", 20, 50, 1, 1),
       ("Parco Centrale", 30, 70, 1, 3),
       ("Veterinario Luigi", 40, 80, 2, 3),
       ("Parco Municipale", 50, 90, 1, 3);


INSERT INTO preferiti (id_utente, id_servizi)
VALUES (1,1),
(1,3),
(1,4);