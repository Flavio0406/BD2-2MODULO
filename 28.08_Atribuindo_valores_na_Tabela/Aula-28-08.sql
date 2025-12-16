CREATE DATABASE aula_ddl;

USE aula_ddl;
CREATE TABLE alunos(

id INT,
cpf INT,
nome VARCHAR(100),
idade INT
);

ALTER TABLE aulunos ADD email VARCHAR(100);

CREATE TABLE produto(
id INT,
nome VARCHAR(100),
categoria VARCHAR(100),
preco DECIMAL(10,2),
estoque INT

);

DROP TABLE produto;

INSERT INTO Alunos (id, cpf , nome , email, idade)
VALUES (1, 11111111111, 'Maria Silva', 'maria@gmail.com' , 20);

INSERT INTO Alunos (id, cpf , nome , email, idade)
VALUES (1, 11111111111, 'Joao Souza', 'João@gmail.com' , 22);

INSERT INTO Alunos (id, cpf , nome , email, idade)
VALUES (1, 11111111111, 'Ana Costa', 'ana@gmail.com' , 19);

