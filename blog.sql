-- criar o BD
CREATE DATABASE blog;

--mostrar na tela
show databases;

--selecionar qual BD eu vou usar
USE blog;

--criar uma tabela, com primary key e unique
CREATE TABLE pessoa (
id_usuario INT primary key,
email VARCHAR(50) UNIQUE NOT NULL
);

--exibir a tabela
DESC pessoa;

-- Inserir valores de dados na tabela
INSERT INTO pessoa (id_usuario,email) 
VALUES (15,'joao@senac.com');

--mostrar dados inseridos na tela
SELECT * FROM pessoa;


-- Inserir valores de dados na tabela
INSERT INTO pessoa (id_usuario,email) 
VALUES (14,'maria@senac.com');

--mostrar dados inseridos na tela
SELECT * FROM pessoa;