DELIMITER $$
CREATE PROCEDURE relatorio_diario_vendas(DATE data_diaria)
BEGIN
    SELECT 
        DATE(data_venda) AS data,
        SUM(quantidade) AS quantidade_total
    FROM vendas WHERE data_venda = data_diaria;
END$$
DELIMITER ;
