-- MySQL Workbench Synchronization
-- Generated: 2015-05-30 08:09
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Aleksandr Kuzminsky

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `retention_policy` 
DROP COLUMN `Yearly`,
DROP COLUMN `Quarterly`,
DROP COLUMN `Monthly`,
DROP COLUMN `Weekly`,
DROP COLUMN `Daily`,
DROP COLUMN `Hourly`,
ADD COLUMN `keep_full_sets` TINYINT(3) NOT NULL DEFAULT '3' AFTER `name`;

INSERT INTO db_version (version) VALUES(39);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
