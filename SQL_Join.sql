CREATE DATABASE minha_loja;
USE minha_loja;

----------x--------x-----------------
CREATE TABLE clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  endereco VARCHAR(100),
  cidade VARCHAR(50),
  estado CHAR(2),
  cep VARCHAR(10),
  telefone VARCHAR(20)
);

CREATE TABLE pedidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cliente_id INT,
  data_pedido DATE,
  valor DECIMAL(10, 2),
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
----------x--------x-----------------
INSERT INTO clientes (nome, endereco, cidade, estado, cep, telefone)
VALUES
  ("João Silva", "Rua 1", "São Paulo", "SP", "12345-678", "11 1234-5678"),
  ("Maria Oliveira", "Rua 2", "Rio de Janeiro", "RJ", "23456-789", "21 1234-5678");

INSERT INTO pedidos (cliente_id, data_pedido, valor)
VALUES
  (1, "2022-01-01", 100.00),
  (2, "2022-02-01", 200.00),
  (1, "2022-03-01", 50.00);

----------x--------x-----------------
SELECT clientes.nome, pedidos.data_pedido, pedidos.valor
FROM clientes
INNER JOIN pedidos ON clientes.id = pedidos.cliente_id;

----------x--------x-----------------

DELIMITER $$
CREATE TRIGGER log_clientes_update
AFTER UPDATE ON clientes
FOR EACH ROW
BEGIN
  INSERT INTO log_clientes (cliente_id, nome_antigo, nome_novo, endereco_antigo, endereco_novo)
  VALUES (OLD.id, OLD.nome, NEW.nome, OLD.endereco, NEW.endereco);
END$$
DELIMITER ;

/* Trigger que após update na tabela cliente insere os dados antigos na tabela log_clientes, permitindo assim a persistencia dos dados.*/
