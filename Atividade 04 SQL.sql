CREATE TABLE endereco
(
id_endereco SERIAL primary key,
logradouro VARCHAR(50),
numero INT,
bairro VARCHAR(50),
CEP INT
);

CREATE TABLE paciente
(
id_paciente SERIAL primary key,
CPF INT,
nome VARCHAR(50),
endereco_idfk INT, foreign key (endereco_idfk) references endereco(id_endereco)
);

CREATE TABLE telefone
(
id_telefone SERIAL primary key,
paciente_idfk INT, foreign key (paciente_idfk) references telefone(id_telefone)
);

