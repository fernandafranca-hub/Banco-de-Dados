CREATE TABLE endereco
(
id_endereco SERIAL primary key,
logradouro VARCHAR(50),
numero INT,
bairro VARCHAR(50),
CEP VARCHAR(9)
);

CREATE TABLE paciente
(
id_paciente SERIAL primary key,
CPF VARCHAR(14),
nome VARCHAR(50),
endereco_idfk INT, 
FOREIGN KEY (endereco_idfk) REFERENCES endereco(id_endereco)
);

CREATE TABLE telefone
(
id_telefone SERIAL primary key,
numero VARCHAR(20),
paciente_idfk INT, 
FOREIGN KEY (paciente_idfk) REFERENCES paciente(id_paciente)
);


INSERT INTO endereco (logradouro, numero, bairro, CEP) VALUES
('Rua Rio Grande do Sul', '123', 'Centro Sul', '85660000'),
('Rua Rio Grande do Norte', '123', 'Centro Norte', '85660000'),
('Rua Mato Grosso', '123', 'Centro Sul', '85660000'),
('Rua Mato Grosso do Sul', '123', 'Centro Sul', '85660000');

INSERT INTO paciente (nome, CPF, endereco_idfk) VALUES
('Maria Luisa', '587.546.998-04', 1),
('Ana Luisa', '841.556.887-12', 2),
('Maria Julia', '123.887.663-65', 3),
('Ana Julia', '669.325.841-90', 4);

INSERT INTO telefone (numero, paciente_idfk) VALUES
('46999111111', 1),
('4699222222', 2),
('4699333333', 3),
('4699444444', 4);

SELECT * FROM endereco;
SELECT * FROM paciente;
SELECT * FROM telefone;

SELECT * FROM endereco
INNER JOIN paciente ON paciente.endereco_IDFK = endereco.id_endereco
INNER JOIN telefone ON telefone.paciente_IDFK = paciente.id_paciente;

