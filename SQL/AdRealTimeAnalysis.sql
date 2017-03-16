-- MySQL Script generated by MySQL Workbench
-- 03/16/17 09:26:57
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema ad
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ad` ;

-- -----------------------------------------------------
-- Schema ad
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ad` DEFAULT CHARACTER SET utf8 ;
USE `ad` ;

-- -----------------------------------------------------
-- Table `ad`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ad`.`user` ;

CREATE TABLE IF NOT EXISTS `ad`.`user` (
  `user_id` INT NOT NULL,
  `user_name` VARCHAR(45) NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ad`.`ad`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ad`.`ad` ;

CREATE TABLE IF NOT EXISTS `ad`.`ad` (
  `ad_id` INT NOT NULL,
  `ad_type` VARCHAR(30) NULL,
  `click_day` DATE NOT NULL,
  `click_time` TIME NOT NULL,
  `click_number` INT NULL,
  PRIMARY KEY (`ad_id`, `click_day`, `click_time`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ad`.`province_click`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ad`.`province_click` ;

CREATE TABLE IF NOT EXISTS `ad`.`province_click` (
  `province` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `ad_id` INT NOT NULL,
  `click_day` DATE NOT NULL,
  `click_num` INT NULL,
  PRIMARY KEY (`province`, `city`, `ad_id`, `click_day`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ad`.`user_click`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ad`.`user_click` ;

CREATE TABLE IF NOT EXISTS `ad`.`user_click` (
  `user_id` INT NOT NULL,
  `ad_id` INT NOT NULL,
  `click_day` DATE NOT NULL,
  `click_number` INT NULL,
  PRIMARY KEY (`user_id`, `ad_id`, `click_day`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ad`.`blacklist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ad`.`blacklist` ;

CREATE TABLE IF NOT EXISTS `ad`.`blacklist` (
  `user_id` INT NOT NULL,
  `user_name` VARCHAR(45) NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
