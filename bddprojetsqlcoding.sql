DROP DATABASE IF EXISTS projetsqlcoding;
CREATE DATABASE projetsqlcoding CHARSET = 'utf8';


--
-- Structure de la table MESSAGE
--

DROP TABLE IF EXISTS Message;
CREATE TABLE message (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  id_sender INT(10) UNSIGNED NOT NULL,
  id_receiver INT(10) UNSIGNED NOT NULL,
  content TEXT NOT NULL,
  sendtime DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY(id)
)
ENGINE = InnoDB;

-- --------------------------------------------------------

--
-- Structure de la table SERVICE
--
DROP TABLE IF EXISTS service;
CREATE TABLE service (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  id_user INT(10) UNSIGNED NOT NULL,
  nom VARCHAR(20) NOT NULL,
  description TEXT NOT NULL,
  adresse VARCHAR(30) NOT NULL,
  cpost INT(5) NOT NULL,
  ville VARCHAR(40) NOT NULL,
  pays VARCHAR(40) NOT NULL,
  servicedatetime DATETIME NOT NULL,
  infoplus TEXT,
  PRIMARY KEY (id)
)
ENGINE = InnoDB;

-- --------------------------------------------------------

--
-- Structure de la table SERVICE_USER
--
DROP TABLE IF EXISTS service_user;
CREATE TABLE service_user (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_user INT UNSIGNED NOT NULL,
  id_service INT UNSIGNED NOT NULL,
  regdatetime DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY(id)
)
ENGINE = InnoDB;

-- --------------------------------------------------------

--
-- Structure de la table USER
--
DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  email VARCHAR(50) UNIQUE NOT NULL,
  mdp VARCHAR(220) NOT NULL,
  pseudo VARCHAR(12) UNIQUE NOT NULL,
  adresse VARCHAR(30) DEFAULT NULL,
  cpost INT(5) DEFAULT NULL,
  ville VARCHAR(40) DEFAULT NULL,
  pays VARCHAR(40) DEFAULT NULL,
  telportable VARCHAR(15) DEFAULT NULL,
  telfixe VARCHAR(15) DEFAULT NULL,
  regdate DATE,
  PRIMARY KEY (id)
)
ENGINE = InnoDB;