CREATE TABLE autor
(
id_autor SERIAL primary key,
nomeautor VARCHAR(50),
pais VARCHAR(50)
);

CREATE TABLE livro
(
id_livro SERIAL primary key,
titulo VARCHAR(50),
ano DATE,
editora VARCHAR(50)
);

CREATE TABLE livro_autor 
(
	livro_idfk INT, foreign key (livro_idfk) references livro(id_livro), 
	autor_idfk INT, foreign key (autor_idfk) references autor(id_autor),
	PRIMARY KEY(livro_idfk, autor_idfk)
);