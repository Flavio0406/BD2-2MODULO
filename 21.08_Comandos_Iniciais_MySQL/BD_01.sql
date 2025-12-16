CREATE DATABASE Aula21_08;
USE Aula21_08;


CREATE TABLE produtos(
	Id INT,
	Nome VARCHAR(225),
	Data_validade VARCHAR(15),
	Preco DOUBLE,
	Quantidade INT
);
ALTER TABLE produtos ADD COLUMN categoria VARCHAR(25);

CREATE TABLE funcionarios(
	Matricula VARCHAR(25),
    Nome VARCHAR(25),
    Idade INT,
    Salario DOUBLE
);
SELECT * FROM funcionarios;
SELECT * FROM produtos;

