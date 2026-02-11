CREATE TABLE Colaborador
(
    id_colaborador serial primary key,
    Nome varchar (50) NOT NULL,
    Salario float
);

CREATE TABLE Permanente
(
    AdicionalTempoServico float
) INHERITS (Colaborador);

CREATE TABLE Temporario
(
    TerminoDeContrato date
) INHERITS (Colaborador);

INSERT INTO Permanente (Nome, Salario, AdicionalTempoServico) 
VALUES ('Amanda', 2000.00, 300.00);

INSERT INTO Temporario (Nome, Salario, TerminoDeContrato) 
VALUES ('Pedro', 1800.00, '2026-12-30');

SELECT * FROM Colaborador;

SELECT * FROM Permanente;

SELECT * FROM Temporario;
