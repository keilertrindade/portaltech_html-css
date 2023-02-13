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
---
Descriptografar

OPEN SYMMETRIC KEY ChaveSenha
DECRYPTION BY CERTIFICATE Certificado
GO
SELECT * senhadescriptografada = CAST (DECRYPTBYKEY(SENHA) AS varchar(50))
FROM Usuario
CLOSE SYMMETRIC KEY ChaveSenha

-------
CREATE CERTIFICATE MeuCertificado
ENCRYPTION BY PASSWORD = 'SENHA@123'
WITH SUBJECT = 'Meu Certificado'