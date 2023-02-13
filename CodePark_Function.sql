DELIMITER $$
CREATE FUNCTION qtd_clientes_cadastrados (data DATE)
RETURNS INT
BEGIN
    DECLARE qtd INT;
    SELECT COUNT(*) INTO qtd
    FROM clientes
    WHERE data_cadastro = data;
    RETURN qtd;
END$$
DELIMITER ;
