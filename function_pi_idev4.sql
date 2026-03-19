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

