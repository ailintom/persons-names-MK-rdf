UPDATE  publications SET oeb_id = NULL WHERE oeb_id = 0;
DROP PROCEDURE IF EXISTS `names_agea_temp_calc`;
delimiter //
CREATE PROCEDURE `names_agea_temp_calc`()
BEGIN
DECLARE sub_index INT DEFAULT 1;
CREATE TABLE IF NOT EXISTS names_agea_temp (`agea` VARCHAR(255),`personal_names_id` INT,`sub_index_no` INT);     
DELETE FROM names_agea_temp;

   WHILE sub_index < 50 DO
      INSERT IGNORE INTO names_agea_temp ( agea, personal_names_id, sub_index_no ) SELECT NULLIF(TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(agea, ';', sub_index), ';', -1)),TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(agea, ';', (sub_index - 1)), ';', -1))) AS agea, personal_names_id, sub_index FROM personal_names HAVING NOT ISNULL(agea);       
      SET sub_index = sub_index + 1;
   END WHILE;  

	
END // 
delimiter ;
call names_agea_temp_calc;

DROP PROCEDURE IF EXISTS `names_tla_temp_calc`;
delimiter //
CREATE PROCEDURE `names_tla_temp_calc`()
BEGIN
DECLARE sub_index INT DEFAULT 1;
CREATE TABLE IF NOT EXISTS names_tla_temp (`tla` VARCHAR(255),`personal_names_id` INT,`sub_index_no` INT);     
DELETE FROM names_tla_temp;

   WHILE sub_index < 50 DO
      INSERT IGNORE INTO names_tla_temp ( tla, personal_names_id, sub_index_no ) SELECT NULLIF(TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(tla, ';', sub_index), ';', -1)),TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(tla, ';', (sub_index - 1)), ';', -1))) AS tla, personal_names_id, sub_index FROM personal_names HAVING NOT ISNULL(tla);       
      SET sub_index = sub_index + 1;
   END WHILE;  

	
END // 
delimiter ;
call names_tla_temp_calc;

DROP PROCEDURE IF EXISTS `titles_tla_temp_calc`;
delimiter //
CREATE PROCEDURE `titles_tla_temp_calc`()
BEGIN
DECLARE sub_index INT DEFAULT 1;
CREATE TABLE IF NOT EXISTS titles_tla_temp (`tla` VARCHAR(255),`titles_id` INT,`sub_index_no` INT);     
DELETE FROM titles_tla_temp;

   WHILE sub_index < 50 DO
      INSERT IGNORE INTO titles_tla_temp ( tla, titles_id, sub_index_no ) SELECT NULLIF(TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(tla, ';', sub_index), ';', -1)),TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(tla, ';', (sub_index - 1)), ';', -1))) AS tla, titles_id, sub_index FROM titles HAVING NOT ISNULL(tla);       
      SET sub_index = sub_index + 1;
   END WHILE;  

	
END // 
delimiter ;
call titles_tla_temp_calc;