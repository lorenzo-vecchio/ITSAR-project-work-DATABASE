CREATE TABLE `animali` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomeAnimale` varchar(255) NOT NULL,
  `sesso` char(1) NOT NULL,
  `data_di_nascita` date NOT NULL,
  `immagine` blob,
  `id_razza` int DEFAULT NULL,
  `id_utente` int DEFAULT NULL,
  `peso` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_razza` (`id_razza`),
  KEY `id_utente` (`id_utente`),
  CONSTRAINT `animali_ibfk_1` FOREIGN KEY (`id_razza`) REFERENCES `razze` (`id`),
  CONSTRAINT `animali_ibfk_2` FOREIGN KEY (`id_utente`) REFERENCES `utenti` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `localita` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomeLocalita` varchar(255) NOT NULL,
  `provincia` varchar(200) NOT NULL,
  `regione` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `preferiti` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_utente` int DEFAULT NULL,
  `id_servizi` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_utente` (`id_utente`),
  KEY `id_servizi` (`id_servizi`),
  CONSTRAINT `preferiti_ibfk_1` FOREIGN KEY (`id_utente`) REFERENCES `utenti` (`id`),
  CONSTRAINT `preferiti_ibfk_2` FOREIGN KEY (`id_servizi`) REFERENCES `servizi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `promemoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titolo` varchar(255) DEFAULT NULL,
  `descrizione` varchar(500) DEFAULT NULL,
  `data_e_ora` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `razze` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomeRazza` varchar(255) NOT NULL,
  `id_specie` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_specie` (`id_specie`),
  CONSTRAINT `razze_ibfk_1` FOREIGN KEY (`id_specie`) REFERENCES `specie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `riferimento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_promemoria` int DEFAULT NULL,
  `id_animale` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_animale` (`id_animale`),
  KEY `id_promemoria` (`id_promemoria`),
  CONSTRAINT `riferimento_ibfk_1` FOREIGN KEY (`id_animale`) REFERENCES `animali` (`id`),
  CONSTRAINT `riferimento_ibfk_2` FOREIGN KEY (`id_promemoria`) REFERENCES `promemoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `servizi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomeLuogo` varchar(255) NOT NULL,
  `latitudine` decimal(9,6) NOT NULL,
  `longitudine` decimal(9,6) NOT NULL,
  `id_tipo_servizio` int DEFAULT NULL,
  `id_localita` int DEFAULT NULL,
  `approvato` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tipo_servizio` (`id_tipo_servizio`),
  KEY `id_localita` (`id_localita`),
  CONSTRAINT `servizi_ibfk_1` FOREIGN KEY (`id_tipo_servizio`) REFERENCES `tipologia_servizi` (`id`),
  CONSTRAINT `servizi_ibfk_2` FOREIGN KEY (`id_localita`) REFERENCES `localita` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `specie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomeSpecie` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tipologia_servizi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomeTipo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `utenti` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `immagine` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
