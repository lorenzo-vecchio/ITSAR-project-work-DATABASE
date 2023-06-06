create database project_work;

use project_work;

create table utenti
(
    id int primary key auto_increment,
    userName varchar(255) not null,
    password varchar(255) not null,
    email varchar(255) not null
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
    id_razza int,
    id_specie int,
    id_utente int,
    foreign key (id_specie) references specie (id),
    foreign key (id_razza) references razze (id),
    foreign key (id_utente) references utenti (id)
);

create table regioni
(
    id int primary key auto_increment,
    nomeRegione varchar(255)
);

create table province 
(
    id int primary key auto_increment,
    nomeProvincia varchar(255) not null,
    sigla char(2) not null,
    id_regione int,
    foreign key (id_regione) references regioni (id)
);

create table localita
(
    id int primary key auto_increment,
    nomeLocalita varchar(255) not null,
    id_provincia int,
    foreign key (id_provincia) references province (id)
);

create table tipo_luoghi
(
    id int primary key auto_increment,
    nomeTipo varchar(255)
);

create table luoghi
(
    id int primary key auto_increment,
    nomeLuogo varchar(255) not null,
    latitudine int not null,
    longitudine int not null,
    id_tipo_luogo int,
    id_localita int,
    foreign key (id_tipo_luogo) references tipo_luoghi(id),
    foreign key (id_localita) references localita(id)
);

create table preferiti
(
    id int primary key auto_increment,
    id_utente int,
    id_luogo int,
    foreign key (id_utente) references utenti(id),
    foreign key (id_luogo) references luoghi(id)
);

create table promemoria
(
    id int primary key auto_increment,
    titolo varchar(255),
    descrizione varchar(500),
    data_e_ora datetime,
    id_animale int,
    id_utente int,
    foreign key (id_animale) references animali(id),
    foreign key (id_utente) references utenti(id)
);