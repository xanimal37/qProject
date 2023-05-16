-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema welcomedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `welcomedb` ;

-- -----------------------------------------------------
-- Schema welcomedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `welcomedb` DEFAULT CHARACTER SET utf8 ;
USE `welcomedb` ;

-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

CREATE TABLE IF NOT EXISTS `user` (
  `id` INT NOT NULL,
  `username` VARCHAR(80) NOT NULL,
  `enabled` TINYINT NOT NULL DEFAULT 1,
  `password` VARCHAR(80) NOT NULL,
  `created` DATETIME NULL,
  `updated` DATETIME NULL,
  `email` VARCHAR(100) NOT NULL,
  `role` VARCHAR(45) NOT NULL DEFAULT 'standard',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS queer1@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'queer1'@'localhost' IDENTIFIED BY 'qweerty';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'queer1'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `user`
-- -----------------------------------------------------
START TRANSACTION;
USE `welcomedb`;
INSERT INTO `user` (`id`, `username`, `enabled`, `password`, `created`, `updated`, `email`, `role`) VALUES (1, 'admin', 1, '$2a$10$nShOi5/f0bKNvHB8x0u3qOpeivazbuN0NE4TO0LGvQiTMafaBxLJS', NULL, NULL, 'admin@welcome.com', 'ADMIN');

COMMIT;

