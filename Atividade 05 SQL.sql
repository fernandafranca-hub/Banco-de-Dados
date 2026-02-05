CREATE TABLE Pedido
(
id_pedido SERIAL primary key,
DIA date,
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
CPF INT,
Nome VARCHAR(50),
pedido_idfk int, FOREIGN KEY (pedido_idfk) REFERENCES pedido(id_pedido)
);


CREATE TABLE Venda
(
Quantidade int,
pedido_idfk int, FOREIGN KEY  (pedido_idfk) REFERENCES pedido(id_pedido),
produto_idfk int, FOREIGN KEY (produto_idfk) REFERENCES produto(id_produto)
);