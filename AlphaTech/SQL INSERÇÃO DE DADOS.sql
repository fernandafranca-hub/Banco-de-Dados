CREATE TABLE cliente (
id_cliente SERIAL PRIMARY KEY,
CPF VARCHAR(14),
email VARCHAR(50),
Telefone VARCHAR(20)
);

CREATE TABLE produto (
id_produto SERIAL PRIMARY KEY,
Un_medida VARCHAR(30),
Preco FLOAT,
Descricao VARCHAR(100),
Categoria VARCHAR(100)
);


CREATE TABLE pedido
(
id_pedido SERIAL PRIMARY KEY,
Dia DATE,
Valor_total FLOAT,
cliente_idfk int, 
FOREIGN KEY (cliente_idfk) REFERENCES cliente(id_cliente)
);


CREATE TABLE venda
(
Quantidade INT,
Preco_unitario FLOAT,
pedido_idfk INT,
produto_idfk INT,
FOREIGN KEY (pedido_idfk) REFERENCES pedido(id_pedido),
FOREIGN KEY (produto_idfk) REFERENCES produto(id_produto)
);

INSERT INTO cliente (CPF, email, Telefone) VALUES
('548.156.123-13', 'ana.maria@gmail.com', '46999999999'),
('589.362.145-84', 'bernadete@gemail.com', '46999888888'),
('632.121.254-95', 'carlos@gmail.com', '4699777777'),
('223.556.897-72', 'daniella@gmail.com', '46999666666'),
('447.896.124-81', 'elizandra@gmail.com', '46999555555'),
('458.111.566-87', 'fabiana@gmail.com', '46999444444'),
('888.451.223-99', 'gabriel@gmail.com', '46999333333'),
('115.451.778-11', 'henry@gmail.com', '46999222222'),
('874.112.652-93', 'izabela@gmail.com', '46999111111'),
('989.325.555-98', 'joana@gmail.com', '146999000000');

SELECT * FROM  cliente

INSERT INTO produto (Un_medida, Preco, Descricao, Categoria) VALUES
('Unidade', 45.90, 'Livro Banco de Dados', 'Livro'),
('Unidade', 39.90, 'Livro Algoritmos', 'Livro'),
('Unidade', 59.90, 'Livro Engenharia de Software', 'Livro'),
('Unidade', 29.90, 'Livro Lógica de Programação', 'Livro'),
('Unidade', 49.90, 'Livro Redes de Computadores', 'Livro'),
('Unidade', 35.00, 'Livro C++', 'Livro'),
('Unidade', 42.50, 'Livro Java', 'Livro'),
('Unidade', 55.00, 'Livro SQL Avançado', 'Livro'),
('Unidade', 60.00, 'Livro Estrutura de Dados', 'Livro'),
('Unidade', 27.50, 'Livro Introdução à Informática', 'Livro');

SELECT * FROM produto order by id_produto

INSERT INTO pedido (Dia, Valor_total, cliente_idfk) VALUES
('2026-01-05', 85.80, 1),
('2026-01-07', 109.90, 2),
('2026-01-10', 59.90, 3),
('2026-01-15', 29.90, 4),
('2026-01-17', 49.90, 5),
('2026-01-20', 235.00, 6),
('2026-01-24', 42.50, 7),
('2026-01-25', 155.00, 8),
('2026-01-28', 60.00, 9),
('2026-01-30', 27.50, 10);

SELECT * FROM pedido


INSERT INTO venda (Quantidade, Preco_unitario, pedido_idfk, produto_idfk) VALUES
(2, 45.90, 1, 1),
(1, 39.90, 2, 2),
(1, 59.90, 3, 3),
(1, 29.90, 4, 4),
(1, 49.90, 5, 5),
(5, 35.00, 6, 6),
(1, 42.50, 7, 7),
(3, 55.00, 8, 8),
(1, 60.00, 9, 9),
(1, 27.50, 10, 10);

SELECT * FROM venda

UPDATE cliente
SET Telefone = '46998887777'
WHERE id_cliente = 1;


UPDATE produto
SET Preco = 79.90
WHERE id_produto = 3;

SELECT * FROM cliente order by id_cliente 

SELECT * FROM pedido order by id_pedido

SELECT * FROM venda order by pedido_idfk

DELETE FROM venda
WHERE pedido_idfk = 10 AND produto_idfk = 10;

DELETE FROM pedido
WHERE id_pedido = 10;

DELETE FROM cliente
WHERE id_cliente = 10; 




