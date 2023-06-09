use railway;

create table utenti
(
    id int primary key auto_increment,
    userName varchar(255) not null,
    password varchar(255) not null,
    email varchar(255) not null,
    immagine blob
);

create table specie
(
    id int primary key auto_increment,
    nomeSpecie varchar(255) not null
);

create table razze 
(
    id int primary key auto_increment,
    nomeRazza varchar(255) not null,
    id_specie int,
    foreign key (id_specie) references specie (id)
);

create table animali 
(
    id int primary key auto_increment,
    nomeAnimale varchar(255) not null,
    sesso char(1) not null,
    data_di_nascita date not null,
    immagine blob,
    id_razza int,
    id_utente int,
    foreign key (id_razza) references razze (id),
    foreign key (id_utente) references utenti (id)
);

create table localita
(
    id int primary key auto_increment,
    nomeLocalita varchar(255) not null,
    provincia varchar(200) not null,
    regione varchar(100) not null
);

create table tipologia_servizi
(
    id int primary key auto_increment,
    nomeTipo varchar(255) not null
);

create table servizi
(
    id int primary key auto_increment,
    nomeLuogo varchar(255) not null,
    latitudine int not null,
    longitudine int not null,
    id_tipo_servizio int,
    id_localita int,
    foreign key (id_tipo_servizio) references tipologia_servizi(id),
    foreign key (id_localita) references localita(id)
);

create table preferiti
(
    id int primary key auto_increment,
    id_utente int,
    id_servizi int,
    foreign key (id_utente) references utenti(id),
    foreign key (id_servizi) references servizi(id)
);

create table promemoria
(
    id int primary key auto_increment,
    titolo varchar(255),
    descrizione varchar(500),
    data_e_ora datetime
);

create table riferimento
(
	id int auto_increment primary key, 
    id_promemoria int,
    id_animale int,
	foreign key (id_animale) references animali(id),
    foreign key (id_promemoria) references promemoria (id)
); 
