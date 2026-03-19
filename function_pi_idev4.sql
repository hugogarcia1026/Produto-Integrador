DROP FUNCTION IF EXISTS total_de_voltas;
DELIMITER //
CREATE FUNCTION IF NOT EXISTS total_de_voltas(
	_id_equipe INT,
	_id_corrida INT
)
RETURNS INT
READS SQL DATA -- DETERMINISTIC | READS SQL DATA | NO SQL
BEGIN
	DECLARE total INT;
	SET total = (
		SELECT COUNT(id)
		FROM dados_corridas
		WHERE id_corrida = _id_corrida
		AND id_equipe = _id_equipe
	);
	RETURN total;
END
// DELIMITER ;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DROP FUNCTION IF EXISTS tempo_medio_volta;
DELIMITER //
CREATE FUNCTION  tempo_medio_volta(
	_id_equipe INT,
	_id_corrida INT
)

RETURNS TIME
READS SQL DATA 
BEGIN
DECLARE media TIME;

SET media = (
		SELECT  AVG(tempo_volta)
		FROM dados_corridas
		WHERE id_corrida = _id_corrida
		AND id_equipe = _id_equipe
	);
    
    RETURN media;
    END

// DELIMITER ;

SELECT tempo_medio_volta(1, 1);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DROP FUNCTION IF EXISTS melhor_volta;
DELIMITER //

CREATE FUNCTION melhor_volta(
    _id_equipe INT,
    _id_corrida INT
)
RETURNS TIME
READS SQL DATA 
BEGIN
    DECLARE v_volta TIME;

    SELECT MIN(tempo_volta) INTO v_volta
    FROM dados_corridas  
    WHERE id_corrida = _id_corrida
    AND id_equipe = _id_equipe;
    
    RETURN v_volta;
END
// 
DELIMITER ;

SELECT melhor_volta(1, 1);

