CREATE DATABASE alugueldecarros;

show databases;

USE alugueldecarros;

CREATE TABLE funcionarios (
idfuncionario INT PRIMARY KEY,
primeironome VARCHAR (30) NOT NULL,
sobrenome VARCHAR (30) NOT NULL,
telefone VARCHAR (20) NOT NULL,
emailfuncionario VARCHAR (50) UNIQUE
);

DESC funcionarios;

INSERT INTO funcionarios (idfuncionario, primeironome, sobrenome, telefone, emailfuncionario)
VALUES (1, 'Luciana', 'Vale', '11985858484', 'valeluciana@gmail.com'),
(2, 'Caetano', 'Santana', '11987878684', 'santanacaetano@gmail.com');

SELECT * FROM funcionarios;


CREATE TABLE clientes (
codcliente INT PRIMARY KEY, 
primeironome VARCHAR (30) NOT NULL,
sobrenome VARCHAR (30) NOT NULL,
telefone VARCHAR (20) NOT NULL,
rua VARCHAR (150) NOT NULL,
cep INT (8) NOT NULL,
emailcliente VARCHAR (50) UNIQUE
);

DESC clientes;

INSERT INTO clientes (codcliente, primeironome, sobrenome, telefone, rua, cep, emailcliente)
VALUES (1, 'Bianca', 'Ronald', '1198987878', 'Rua Tecnologia 110', 04072200, 'biancaronald@gmail.com'),
(2, 'Julio', 'Andrade', '11958785252', 'Rua Senac Largo Treze 1000', 04076230, 'julioandrade@gmail.com');

SELECT * FROM clientes;

CREATE TABLE vendas(
numvenda INT PRIMARY KEY,
data DATE,
hora TIME, 
marcadocarro VARCHAR (20) NOT NULL, 
ano INT (4) NOT NULL
);

DESC vendas;

INSERT INTO vendas (numvenda, data, hora, marcadocarro, ano)
VALUES (1, 20230925, 153000, 'HB20', 2023),
(2, 20230920, 112200, 'C4', 2022);

SELECT * FROM vendas; 

ALTER TABLE vendas 
ADD COLUMN cliente INT;

ALTER TABLE vendas
ADD COLUMN vendedor INT;

DESC vendas;


UPDATE clientes SET telefone ='11987808087' WHERE primeironome = 'Bianca';

SELECT * FROM clientes;

UPDATE vendas SET ano = 2023 WHERE numvenda = 2;

SELECT * FROM vendas;

ALTER TABLE vendas
ADD FOREIGN KEY (cliente)
REFERENCES clientes (codcliente);

ALTER TABLE vendas
ADD FOREIGN KEY (vendedor)
REFERENCES funcionarios (idfuncionario);

DESC vendas;

UPDATE vendas SET vendedor = '1'
WHERE numvenda = 1;

UPDATE vendas SET cliente = '1'
WHERE numvenda = 1;

UPDATE vendas SET vendedor = '2'
WHERE numvenda = 2;

UPDATE vendas SET cliente = '2'
WHERE numvenda = 2;

SELECT * FROM vendas;


SELECT vendas.numvenda, vendas.cliente, vendas.vendedor, 
clientes.codcliente, funcionarios.idfuncionario, 
clientes.emailcliente, funcionarios.emailfuncionario 
FROM vendas INNER JOIN clientes
ON vendas.numvenda = clientes.codcliente
INNER JOIN funcionarios
ON vendas.numvenda = funcionarios.idfuncionario;

DELETE FROM clientes WHERE primeironome = 'Bianca';
