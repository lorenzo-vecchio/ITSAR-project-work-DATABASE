INSERT INTO utenti (userName, password, email) VALUES ('testuser', 'testpassword', 'testuser@example.com');
INSERT INTO specie (nomeSpecie) VALUES ('Cane');
INSERT INTO specie (nomeSpecie) VALUES ('Gatto');
INSERT INTO specie (nomeSpecie) VALUES ('Uccello');
INSERT INTO razze (nomeRazza, id_specie) VALUES ('Labrador', 1);
INSERT INTO razze (nomeRazza, id_specie) VALUES ('Persiano', 2);
INSERT INTO razze (nomeRazza, id_specie) VALUES ('Canarino', 3);
INSERT INTO animali (nomeAnimale, sesso, data_di_nascita, id_razza, id_specie, id_utente) VALUES ('Fido', 'M', '2020-01-01', 1, 1, 1);
INSERT INTO animali (nomeAnimale, sesso, data_di_nascita, id_razza, id_specie, id_utente) VALUES ('Whiskers', 'F', '2019-05-15', 2, 2, 1);
INSERT INTO animali (nomeAnimale, sesso, data_di_nascita, id_razza, id_specie, id_utente) VALUES ('Tweety', 'M', '2022-03-10', 3, 3, 1);

INSERT INTO promemoria (titolo, descrizione, data_e_ora, id_animale, id_utente)
VALUES ("veterinaio", "Portare fido dal veterinario", '2023-06-20 08:30:00', 1, 1);