CREATE DATABASE EtecUirapuru;
USE EtecUirapuru;

CREATE TABLE Alunos(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(250),
curso VARCHAR(250),
idade INT

);

SELECT * FROM Alunos;

ALTER TABLE alunos add cargo varchar(250) after idade;
UPDATE alunos SET cargo = 'programador' WHERE id=1;

INSERT INTO alunos (nome , curso, idade) VALUES
('Lucas lima',' Desenvolvimento de sistemas','19'),
('Sarah Elena','Gastronomia','22'),
('Paulo Rogerio','Segurança do trabalho','20'),
('Thiago Matos','Inglês','18'),
('rai vicencicio','marketing','19'),
('Ana Clara','Axiliar de Medicina','17');



SELECT * FROM Alunos WHERE idade>= 18;

UPDATE  Alunos
SET nome ="Paulo" 
WHERE id=1;

SELECT COUNT(*) FROM alunos WHERE idade > 30;

#Avg Tirar média

SELECT AVG(idade) FROM alunos;

#Mandando uma mensagem junto com a média:

SELECT AVG(idade) as medidade FROM alunos;

#Max mario

SELECT * FROM alunos WHERE idade = (SELECT MAX(idade) FROM alunos);

#Min

SELECT * FROM alunos WHERE idade = (SELECT MIN(idade) FROM alunos);

#BETWEEN

SELECT * FROM alunos WHERE idade BETWEEN 30 AND 33;

#SELECT

#(SELECT COUNT(*) FROM CLIENTES WHERE sexo=’masculino’) AS QtdeHomens;

#(SELECT COUNT(*) FROM CLIENTES WHERE sexo=’feminino’) AS QtdeMulheres;


ALTER TABLE alunos ADD   sexo VARCHAR(250);
TRUNCATE TABLE alunos;

INSERT INTO alunos (nome , curso, idade, sexo) VALUES
('Lucas lima',' Desenvolvimento de sistemas','19','Masculino'),
('Sarah Elena','Gastronomia','22','Feminino'),
('Paulo Rogerio','Segurança do trabalho','20','Masculino'),
('Thiago Matos','Inglês','18','Masculino'),
('rai vicencicio','marketing','19','Masculino'),
('Ana Clara','Axiliar de Medicina','17','Feminino');


SELECT * FROM Alunos WHERE sexo= 'Masculino';
SELECT * FROM Alunos WHERE sexo= 'Feminino';

SELECT COUNT(*) FROM alunos WHERE sexo = 'Masculino';
SELECT COUNT(*) FROM alunos WHERE sexo = 'Feminino';
