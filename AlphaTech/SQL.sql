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

