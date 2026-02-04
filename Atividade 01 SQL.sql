CREATE TABLE curso
(
id_curso SERIAL primary key,
nomeCurso VARCHAR(50),
cargahoraria INT
);

CREATE TABLE estudante
(
id_matricula SERIAL primary key,
nome VARCHAR(150) not null,
documento VARCHAR(14),
datanascimento DATE,
curso_idfk INT, foreign key (curso_idfk) references curso (id_curso)
);

