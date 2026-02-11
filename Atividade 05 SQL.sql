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



