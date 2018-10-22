DROP DATABASE IF EXISTS projetsqlcoding;
CREATE DATABASE projetsqlcoding CHARSET = 'utf8';


--
-- Structure de la table `Message`
--

DROP TABLE IF EXISTS Message;
CREATE TABLE message (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  id_sender INT(10) UNSIGNED NOT NULL,
  id_receiver INT(10) UNSIGNED NOT NULL,
  content TEXT NOT NULL,
  sendtime DATETIME NOT NULL,
  PRIMARY KEY(id)
)
ENGINE = InnoDB;

-- --------------------------------------------------------

--
-- Structure de la table `Service`
--
DROP TABLE IF EXISTS service;
CREATE TABLE service (
  id INT(10) UNSIGNED NOT NULL,
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
-- Structure de la table `Service_Utilisateur`
--
DROP TABLE IF EXISTS service_user;
CREATE TABLE service_user (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_user INT UNSIGNED NOT NULL,
  id_service INT UNSIGNED NOT NULL,
  regdatetime DATETIME NOT NULL,
  PRIMARY KEY(id)
)
ENGINE = InnoDB;

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateur`
--
DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  email VARCHAR(50) NOT NULL,
  mdp VARCHAR(20) NOT NULL,
  pseudo VARCHAR(12) NOT NULL,
  adresse VARCHAR(30) NULL DEFAULT NULL,
  cpost INT(5) NULL DEFAULT NULL,
  ville VARCHAR(40) NULL DEFAULT NULL,
  pays VARCHAR(40) NULL DEFAULT NULL,
  telportable VARCHAR(15) NULL DEFAULT NULL,
  telfixe VARCHAR(15) DEFAULT NULL,
  regdate DATE NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = InnoDB;