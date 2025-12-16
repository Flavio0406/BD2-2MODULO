CREATE DATABASE db_loja_pascotto;
USE db_loja_pascotto;

CREATE TABLE fornecedores(
id INT AUTO_INCREMENT PRIMARY KEY,
fornecedor INT NOT NULL,
nome VARCHAR(225) NOT NULL,
CNPJ VARCHAR(16) NOT NULL,
telefone  VARCHAR(15) NOT NULL,
cpf VARCHAR(14) NOT NULL

);

CREATE TABLE colaboradores(
id INT AUTO_INCREMENT PRIMARY KEY,
colaborador VARCHAR(200) NOT NULL,
nome VARCHAR(225) NOT NULL,
cargo VARCHAR(2000) NOT NULL,
salario DECIMAL(10,2) NOT NULL

);

CREATE TABLE pedidos(
id INT AUTO_INCREMENT PRIMARY KEY,
pedido INT NOT NULL,
data_ DATE NOT NULL,
funcionario_id INT NOT NULL,
produto_id INT NOT NULL,
quantidade INT NOT NULL,

FOREIGN KEY (funcionario_id) REFERENCES colaboradores(id)

);

CREATE TABLE produtos(
id INT AUTO_INCREMENT PRIMARY KEY,
produto VARCHAR(225) NOT NULL,
nome VARCHAR(225) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
quantidade INT NOT NULL,
fornecedor_id INT NOT NULL,
id_Categoria INT,

FOREIGN KEY (fornecedor_id) REFERENCES fornecedores(id)

);

ALTER TABLE fornecedores
ADD COLUMN email VARCHAR(225);

CREATE TABLE categorias(
id_Categoria INT AUTO_INCREMENT PRIMARY KEY,
nomeCategoria VARCHAR(225)

);

INSERT INTO fornecedores(fornecedor, nome, CNPJ , telefone , cpf )VALUES
('1','NIKE','7777777.77-12','11966796273','222.333.444-38'),
('2','ADIDAS','6666666.77-12','11966796273','222.333.444-38'),
('3','PUMA','555555555.45-32','11966796273','222.333.444-38');

INSERT INTO colaboradores(colaborador , nome , cargo , salario)VALUES
('1','Marcos','Repositor','1520.00'),
('2','Sarah','Atendente','1720.00'),
('3','Lucas','Faxineiro','1345.00');


INSERT INTO pedidos(pedido ,data_ ,funcionario_id , produto_id , quantidade)VALUES
('1','04-01-2025','1','2','1'),
('2','06-25-2025','2','3','1'),
('3','10-01-2025','3','1','1');

INSERT INTO produtos(produto , nome, preco, quantidade, fornecedor_id) VALUES
('Sapato','Air max',799.00,20,1),
('Blusa','Moletom adidas',320.00,9,2),
('Mochila','Mochila Puma',499.00,3,3);

ALTER TABLE fornecedores
DROP COLUMN cpf ;


SELECT * FROM fornecedores;
SELECT * FROM colaboradores;
SELECT * FROM pedidos;
SELECT * FROM produtos;



drop database db_loja_pascotto;