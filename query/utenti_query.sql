/*query per prendere tutti i dati di un singolo utente*/
SELECT userName, password, email, immagine FROM utenti WHERE id=1;

/*modifica Immagine di un singolo utente*/
UPDATE utenti SET immagine = "nuovaFoto.png" /*(passata in blob)*/ where id=1;

/*modifica password di un singolo utente*/
UPDATE utenti SET password = "1234" /*nuova password*/ where id=1;

/*modifica email di un singolo utente*/
UPDATE utenti SET email = "pippo@gmail.com" /*nuova email*/ where id=1;

/*modifica nomeUtente di un singolo utente*/
UPDATE utenti SET userName = "SIIIUUUUUMMM" /*nuovo nome*/ where id=1;