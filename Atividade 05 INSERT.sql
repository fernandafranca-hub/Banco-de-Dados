CREATE TABLE Pedido
(
id_pedido SERIAL primary key,
dia DATE,
VALOR float
);

CREATE TABLE Produto
(
id_produto SERIAL primary key,
DESCRICAO VARCHAR(100),
valor FLOAT
);


CREATE TABLE Cliente
(
id_cliente SERIAL primary key,
CPF VARCHAR(14),
Nome VARCHAR(50),
pedido_idfk int,
FOREIGN KEY (pedido_idfk) REFERENCES pedido(id_pedido)
);


CREATE TABLE Venda
(
id_venda SERIAL PRIMARY KEY,
Quantidade int,
pedido_idfk int,
produto_idfk int,
FOREIGN KEY  (pedido_idfk) REFERENCES pedido(id_pedido),
FOREIGN KEY (produto_idfk) REFERENCES produto(id_produto)
);



INSERT INTO Pedido (Dia, Valor) VALUES
('2026-02-01', 3580.00),
('2026-02-02', 150.00),
('2026-02-03', 1200.00),
('2026-02-04', 80.00);


INSERT INTO Produto (Descricao, Valor) VALUES
('Notebook', 3500.00),
('Mouse', 80.00),
('Teclado', 150.00),
('Monitor', 1200.00);


INSERT INTO Cliente (CPF, Nome, pedido_idfk) VALUES
('445.658.987-22', 'Maria Da Silva', 1),
('521.632.555-99', 'João de Souza', 2),
('456.789.123-00', 'Maria de Souza', 3),
('321.654.987-00', 'João da Silva', 4);


INSERT INTO Venda (Quantidade, pedido_idfk, produto_idfk) VALUES
(1, 1, 1),
(1, 1, 2),
(1, 2, 3),
(1, 3, 4);


SELECT * FROM Pedido;
SELECT * FROM Produto;
SELECT * FROM Cliente;
SELECT * FROM Venda;

SELECT * FROM Pedido
INNER JOIN Cliente ON cliente.pedido_idfk = pedido.id_pedido
INNER JOIN Venda ON Venda.pedido_idfk = pedido.id_pedido
INNER JOIN produto ON Venda.produto_idfk = produto.id_produto;


