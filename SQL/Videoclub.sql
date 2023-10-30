-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema videoclub
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema videoclub
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `videoclub` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `videoclub` ;

-- -----------------------------------------------------
-- Table `videoclub`.`actor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`actor` (
  `actor_id` INT NOT NULL,
  `first_name` TEXT NULL DEFAULT NULL,
  `last_name` TEXT NULL DEFAULT NULL,
  `Id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`, `actor_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`category` (
  `category_id` INT NOT NULL,
  `name` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`customer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` TEXT NULL DEFAULT NULL,
  `last_name` TEXT NULL DEFAULT NULL,
  `email` TEXT NULL DEFAULT NULL,
  `phone` TEXT NULL DEFAULT NULL,
  `address` TEXT NULL DEFAULT NULL,
  `city` TEXT NULL DEFAULT NULL,
  `state` TEXT NULL DEFAULT NULL,
  `country` TEXT NULL DEFAULT NULL,
  `postal_code` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`language` (
  `language_id` INT NOT NULL,
  `name` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`language_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`film`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`film` (
  `film_id` INT NOT NULL,
  `title` TEXT NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `rental_duration` INT NULL DEFAULT NULL,
  `rental_rate` DOUBLE NULL DEFAULT NULL,
  `length` INT NULL DEFAULT NULL,
  `replacement_cost` DOUBLE NULL DEFAULT NULL,
  `rating` TEXT NULL DEFAULT NULL,
  `special_features` TEXT NULL DEFAULT NULL,
  `Id` INT NOT NULL AUTO_INCREMENT,
  `language_language_id` INT NOT NULL,
  `category_category_id` INT NOT NULL,
  PRIMARY KEY (`Id`, `film_id`),
  INDEX `fk_film_language1_idx` (`language_language_id` ASC) VISIBLE,
  INDEX `fk_film_category1_idx` (`category_category_id` ASC) VISIBLE,
  CONSTRAINT `fk_film_language1`
    FOREIGN KEY (`language_language_id`)
    REFERENCES `videoclub`.`language` (`language_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_film_category1`
    FOREIGN KEY (`category_category_id`)
    REFERENCES `videoclub`.`category` (`category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`inventory` (
  `inventory_id` INT NOT NULL,
  `film_id` INT NULL DEFAULT NULL,
  `store_id` INT NULL DEFAULT NULL,
  `film_Id` INT NOT NULL,
  `film_film_id` INT NOT NULL,
  PRIMARY KEY (`inventory_id`),
  INDEX `fk_inventory_film_idx` (`film_Id` ASC, `film_film_id` ASC) VISIBLE,
  CONSTRAINT `fk_inventory_film`
    FOREIGN KEY (`film_Id` , `film_film_id`)
    REFERENCES `videoclub`.`film` (`Id` , `film_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`old_films`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`old_films` (
  `first_name` TEXT NULL DEFAULT NULL,
  `last_name` TEXT NULL DEFAULT NULL,
  `title` TEXT NULL DEFAULT NULL,
  `category_id` INT NULL DEFAULT NULL,
  `Id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`rental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`rental` (
  `rental_id` INT NOT NULL,
  `rental_date` TEXT NULL DEFAULT NULL,
  `inventory_id` INT NULL DEFAULT NULL,
  `customer_id` INT NULL DEFAULT NULL,
  `return_date` TEXT NULL DEFAULT NULL,
  `staff_id` INT NULL DEFAULT NULL,
  `inventory_inventory_id` INT NOT NULL,
  `customer_id1` INT NOT NULL,
  PRIMARY KEY (`rental_id`),
  INDEX `fk_rental_inventory1_idx` (`inventory_inventory_id` ASC) VISIBLE,
  INDEX `fk_rental_customer1_idx` (`customer_id1` ASC) VISIBLE,
  CONSTRAINT `fk_rental_inventory1`
    FOREIGN KEY (`inventory_inventory_id`)
    REFERENCES `videoclub`.`inventory` (`inventory_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rental_customer1`
    FOREIGN KEY (`customer_id1`)
    REFERENCES `videoclub`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`actor_has_film`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`actor_has_film` (
  `actor_Id` INT NOT NULL,
  `actor_actor_id` INT NOT NULL,
  `film_Id` INT NOT NULL,
  `film_film_id` INT NOT NULL,
  PRIMARY KEY (`actor_Id`, `actor_actor_id`, `film_Id`, `film_film_id`),
  INDEX `fk_actor_has_film_film1_idx` (`film_Id` ASC, `film_film_id` ASC) VISIBLE,
  INDEX `fk_actor_has_film_actor1_idx` (`actor_Id` ASC, `actor_actor_id` ASC) VISIBLE,
  CONSTRAINT `fk_actor_has_film_actor1`
    FOREIGN KEY (`actor_Id` , `actor_actor_id`)
    REFERENCES `videoclub`.`actor` (`Id` , `actor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_actor_has_film_film1`
    FOREIGN KEY (`film_Id` , `film_film_id`)
    REFERENCES `videoclub`.`film` (`Id` , `film_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
