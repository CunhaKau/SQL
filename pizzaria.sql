--deletando um banco de dados
DROP DATABASE pizzaria;

--criando um banco de dados
CREATE DATABASE pizzaria;

--exibir os bancos na tela
show databases;

-- antes de criar a tabela, comando usar bd
USE pizzaria;

--comando para criar tabela
CREATE TABLE listapizza (nome VARCHAR(20) NOT NULL,
preco DECIMAL(4,2) NOT NULL DEFAULT 45.00);

--visualizar a tabela criada
DESC listapizza;

--deletar a tabela
DROP TABLE listapizza;