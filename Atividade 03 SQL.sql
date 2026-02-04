CREATE TABLE Colaborador
(
ID_Colaborador serial primary key,
Nome varchar (50) NOT NULL,
Salario float
);

CREATE TABLE Permanente
(
	AdicionalTempoServico float
)INHERITS(Colaborador);

CREATE TABLE Temporario
(
TerminoDeContrato date
)INHERITS(Colaborador);
