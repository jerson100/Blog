-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema ProyectoWeb01.1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ProyectoWeb01.1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ProyectoWeb01.1` DEFAULT CHARACTER SET utf8 ;
USE `ProyectoWeb01.1` ;

-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`TypeStateUsers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`TypeStateUsers` (
  `idStateUsers` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipo` TINYINT(3) NULL,
  PRIMARY KEY (`idStateUsers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`Users` (
  `idUser` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `type` ENUM('ADM', 'US', 'MD') NULL,
  `idState` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC),
  INDEX `fk_Users_StateUsers1_idx` (`idState` ASC),
  CONSTRAINT `fk_Users_StateUsers1`
    FOREIGN KEY (`idState`)
    REFERENCES `ProyectoWeb01.1`.`TypeStateUsers` (`idStateUsers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`UsersWhitPrivileges`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`UsersWhitPrivileges` (
  `idUser` INT UNSIGNED NOT NULL,
  `urlIcon` VARCHAR(250) NULL,
  PRIMARY KEY (`idUser`),
  CONSTRAINT `fk_UsersWhitPrivileges_Users`
    FOREIGN KEY (`idUser`)
    REFERENCES `ProyectoWeb01.1`.`Users` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`Administrators`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`Administrators` (
  `idAdministrator` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idAdministrator`),
  CONSTRAINT `fk_Administrators_UsersWhitPrivileges1`
    FOREIGN KEY (`idAdministrator`)
    REFERENCES `ProyectoWeb01.1`.`UsersWhitPrivileges` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`StatusChangeUsers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`StatusChangeUsers` (
  `idStatusChange` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(500) NULL,
  `date` DATETIME NULL,
  `idAdministrator` INT UNSIGNED NOT NULL,
  `idUser` INT UNSIGNED NOT NULL,
  `idTypeState` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idStatusChange`),
  INDEX `fk_StatusChange_Administrators1_idx` (`idAdministrator` ASC),
  INDEX `fk_StatusChange_Users1_idx` (`idUser` ASC),
  INDEX `fk_StatusChange_StateUsers1_idx` (`idTypeState` ASC),
  CONSTRAINT `fk_StatusChange_Administrators1`
    FOREIGN KEY (`idAdministrator`)
    REFERENCES `ProyectoWeb01.1`.`Administrators` (`idAdministrator`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_StatusChange_Users1`
    FOREIGN KEY (`idUser`)
    REFERENCES `ProyectoWeb01.1`.`Users` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_StatusChange_StateUsers1`
    FOREIGN KEY (`idTypeState`)
    REFERENCES `ProyectoWeb01.1`.`TypeStateUsers` (`idStateUsers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`Moderator`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`Moderator` (
  `idModerator` INT UNSIGNED NOT NULL,
  `InitialDate` DATE NOT NULL,
  `FinalDate` DATE NOT NULL,
  PRIMARY KEY (`idModerator`),
  CONSTRAINT `fk_Moderator_UsersWhitPrivileges1`
    FOREIGN KEY (`idModerator`)
    REFERENCES `ProyectoWeb01.1`.`UsersWhitPrivileges` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`TypePenality`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`TypePenality` (
  `idTypePenality` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`idTypePenality`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`Penalities`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`Penalities` (
  `idPenality` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idTypePenality` INT UNSIGNED NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `description` MEDIUMTEXT NULL,
  `days` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idPenality`),
  INDEX `fk_Penalities_TypePenality1_idx` (`idTypePenality` ASC),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC),
  CONSTRAINT `fk_Penalities_TypePenality1`
    FOREIGN KEY (`idTypePenality`)
    REFERENCES `ProyectoWeb01.1`.`TypePenality` (`idTypePenality`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`StatusChange_Penality`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`StatusChange_Penality` (
  `idChange` INT NOT NULL,
  `idPenality` INT UNSIGNED NOT NULL,
  `description` VARCHAR(450) NOT NULL,
  `finalDate` DATE NULL,
  PRIMARY KEY (`idChange`),
  INDEX `fk_StatusChange_Penality_Penalities1_idx` (`idPenality` ASC),
  CONSTRAINT `fk_StatusChange_Penality_StatusChange1`
    FOREIGN KEY (`idChange`)
    REFERENCES `ProyectoWeb01.1`.`StatusChangeUsers` (`idStatusChange`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_StatusChange_Penality_Penalities1`
    FOREIGN KEY (`idPenality`)
    REFERENCES `ProyectoWeb01.1`.`Penalities` (`idPenality`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`follows`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`follows` (
  `idUser1` INT UNSIGNED NOT NULL,
  `idUserFollow` INT UNSIGNED NOT NULL,
  `date` DATETIME NOT NULL,
  PRIMARY KEY (`idUser1`, `idUserFollow`),
  INDEX `fk_follow_Users2_idx` (`idUserFollow` ASC),
  CONSTRAINT `fk_follow_Users1`
    FOREIGN KEY (`idUser1`)
    REFERENCES `ProyectoWeb01.1`.`Users` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_follow_Users2`
    FOREIGN KEY (`idUserFollow`)
    REFERENCES `ProyectoWeb01.1`.`Users` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`Categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`Categories` (
  `idCategory` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(80) NOT NULL,
  `description` VARCHAR(450) NULL,
  PRIMARY KEY (`idCategory`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`Posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`Posts` (
  `idPost` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(500) NOT NULL,
  `urlImagen` VARCHAR(250) NOT NULL,
  `date` DATETIME NOT NULL,
  `state` BIT(1) NOT NULL DEFAULT 1,
  `CountReaction` INT NULL,
  `idUser` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idPost`),
  INDEX `fk_Posts_Users1_idx` (`idUser` ASC),
  CONSTRAINT `fk_Posts_Users1`
    FOREIGN KEY (`idUser`)
    REFERENCES `ProyectoWeb01.1`.`Users` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`Categories_Posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`Categories_Posts` (
  `idCategory` INT UNSIGNED NOT NULL,
  `idPost` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idCategory`, `idPost`),
  INDEX `fk_Categories_has_Posts_Posts1_idx` (`idPost` ASC),
  INDEX `fk_Categories_has_Posts_Categories1_idx` (`idCategory` ASC),
  CONSTRAINT `fk_Categories_has_Posts_Categories1`
    FOREIGN KEY (`idCategory`)
    REFERENCES `ProyectoWeb01.1`.`Categories` (`idCategory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Categories_has_Posts_Posts1`
    FOREIGN KEY (`idPost`)
    REFERENCES `ProyectoWeb01.1`.`Posts` (`idPost`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`TypeReactions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`TypeReactions` (
  `idTypeReaction` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(60) NOT NULL,
  `description` VARCHAR(500) NULL,
  `urlIcon` VARCHAR(250) NOT NULL,
  `state` BIT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idTypeReaction`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`ReactionsPost`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`ReactionsPost` (
  `idUser` INT UNSIGNED NOT NULL,
  `idPost` INT UNSIGNED NOT NULL,
  `idTypeReaction` INT UNSIGNED NOT NULL,
  `date` DATETIME NOT NULL,
  INDEX `fk_Reactions_Users1_idx` (`idUser` ASC),
  INDEX `fk_Reactions_TypeReactions1_idx` (`idTypeReaction` ASC),
  PRIMARY KEY (`idUser`, `idPost`),
  INDEX `fk_Reactions_Posts1_idx` (`idPost` ASC),
  CONSTRAINT `fk_Reactions_Users1`
    FOREIGN KEY (`idUser`)
    REFERENCES `ProyectoWeb01.1`.`Users` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reactions_TypeReactions1`
    FOREIGN KEY (`idTypeReaction`)
    REFERENCES `ProyectoWeb01.1`.`TypeReactions` (`idTypeReaction`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reactions_Posts1`
    FOREIGN KEY (`idPost`)
    REFERENCES `ProyectoWeb01.1`.`Posts` (`idPost`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`Comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`Comments` (
  `idComment` INT NULL,
  `idPost` INT UNSIGNED NOT NULL,
  `idUser` INT UNSIGNED NOT NULL,
  `type` ENUM('N', 'E') NOT NULL DEFAULT 'N',
  `text` VARCHAR(250) NOT NULL,
  `date` DATETIME NOT NULL,
  `state` BIT(1) NOT NULL,
  PRIMARY KEY (`idComment`, `idPost`, `idUser`),
  INDEX `fk_Comments_Posts1_idx` (`idPost` ASC),
  INDEX `fk_Comments_Users1_idx` (`idUser` ASC),
  CONSTRAINT `fk_Comments_Posts1`
    FOREIGN KEY (`idPost`)
    REFERENCES `ProyectoWeb01.1`.`Posts` (`idPost`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comments_Users1`
    FOREIGN KEY (`idUser`)
    REFERENCES `ProyectoWeb01.1`.`Users` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`ReactionsComments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`ReactionsComments` (
  `idComment` INT NOT NULL,
  `idUser` INT UNSIGNED NOT NULL,
  `date` DATETIME NOT NULL,
  `idTypeReaction` INT UNSIGNED NOT NULL,
  `state` BIT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idComment`, `idUser`),
  INDEX `fk_ReactionsComments_Comments1_idx` (`idComment` ASC),
  INDEX `fk_ReactionsComments_TypeReactions1_idx` (`idTypeReaction` ASC),
  INDEX `fk_ReactionsComments_Users1_idx` (`idUser` ASC),
  CONSTRAINT `fk_ReactionsComments_Comments1`
    FOREIGN KEY (`idComment`)
    REFERENCES `ProyectoWeb01.1`.`Comments` (`idComment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ReactionsComments_TypeReactions1`
    FOREIGN KEY (`idTypeReaction`)
    REFERENCES `ProyectoWeb01.1`.`TypeReactions` (`idTypeReaction`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ReactionsComments_Users1`
    FOREIGN KEY (`idUser`)
    REFERENCES `ProyectoWeb01.1`.`Users` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`ReportComments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`ReportComments` (
  `idReportComment` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idUser` INT UNSIGNED NOT NULL,
  `idComment` INT NOT NULL,
  `motive` VARCHAR(500) NOT NULL,
  `state` BIT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idReportComment`),
  INDEX `fk_ReportComments_Users1_idx` (`idUser` ASC),
  INDEX `fk_ReportComments_Comments1_idx` (`idComment` ASC),
  CONSTRAINT `fk_ReportComments_Users1`
    FOREIGN KEY (`idUser`)
    REFERENCES `ProyectoWeb01.1`.`Users` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ReportComments_Comments1`
    FOREIGN KEY (`idComment`)
    REFERENCES `ProyectoWeb01.1`.`Comments` (`idComment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`ReportPosts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`ReportPosts` (
  `idReportPost` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idUser` INT UNSIGNED NOT NULL,
  `idPost` INT UNSIGNED NOT NULL,
  `motive` VARCHAR(500) NOT NULL,
  `date` DATETIME NOT NULL,
  `state` BIT(1) NULL DEFAULT 1,
  PRIMARY KEY (`idReportPost`, `idUser`, `idPost`),
  INDEX `fk_ReportPosts_Users1_idx` (`idUser` ASC),
  INDEX `fk_ReportPosts_Posts1_idx` (`idPost` ASC),
  CONSTRAINT `fk_ReportPosts_Users1`
    FOREIGN KEY (`idUser`)
    REFERENCES `ProyectoWeb01.1`.`Users` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ReportPosts_Posts1`
    FOREIGN KEY (`idPost`)
    REFERENCES `ProyectoWeb01.1`.`Posts` (`idPost`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoWeb01.1`.`Profiles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoWeb01.1`.`Profiles` (
  `idUser` INT UNSIGNED NOT NULL,
  `name` VARCHAR(60) NOT NULL,
  `lastname` VARCHAR(60) NOT NULL,
  `age` TINYINT(3) UNSIGNED NULL,
  `urlImage` VARCHAR(200) NULL,
  `facebook` VARCHAR(200) NULL,
  `twitter` VARCHAR(200) NULL,
  `instagram` VARCHAR(200) NULL,
  `youtube` VARCHAR(200) NULL,
  `description` VARCHAR(500) NULL,
  PRIMARY KEY (`idUser`),
  CONSTRAINT `fk_Profiles_Users1`
    FOREIGN KEY (`idUser`)
    REFERENCES `ProyectoWeb01.1`.`Users` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
