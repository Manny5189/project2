DELIMITER $$


DROP FUNCTION strSplit;
CREATE FUNCTION strSplit(x text, delim VARCHAR(12), pos INTEGER) 
RETURNS text
BEGIN
  DECLARE output text;
  SET output = REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos)
                 , LENGTH(SUBSTRING_INDEX(x, delim, pos - 1)) + 1)
                 , delim
                 , '');
  IF output = '' THEN SET output = null; END IF;
  RETURN output;
END $$


CREATE PROCEDURE BadTableToGoodTable()
BEGIN
  DECLARE i INTEGER;

  SET i = 1;
  REPEAT
    INSERT INTO GoodTable (id, name)
      SELECT id, strSplit(name, ',', i) FROM BadTable
      WHERE strSplit(name, ',', i) IS NOT NULL;
    SET i = i + 1;
    UNTIL ROW_COUNT() = 0
  END REPEAT;
END $$

DELIMITER ;