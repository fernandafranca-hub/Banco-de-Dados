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
ano INT,
editora VARCHAR(50)
);

CREATE TABLE livro_autor
(
autor_idfk INT, foreign key (autor_idfk) references autor(id_autor),
livro_idfk INT, foreign key (livro_idfk) references livro(id_livro)
);

INSERT INTO livro_autor (autor_idfk, livro_idfk) VALUES
(1,1),
(2,2),
(3,3);

INSERT INTO autor (nomeautor, pais) VALUES 
('Dante Alighieri', 'Itália'),
('Emily Brontë', 'Inglaterra'),
('Miguel de Cervantes', 'Espanha');


INSERT INTO livro (titulo, ano, editora) VALUES
('A Divina Comédia', '1308','Editora 34'),
('O Morro dos Ventos Uivantes', '1847', 'Editora Autêntica'),
('Dom Quixote', '1605', 'Editora 34');


SELECT * FROM livro
INNER JOIN livro_autor ON livro_autor.livro_idfk = livro.id_livro
INNER JOIN autor ON autor.id_autor = livro_autor.autor_idfk