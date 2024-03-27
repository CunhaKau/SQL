-- criar BD
CREATE DATABASE blogauto;

--mostrar na tela o BD criado
show databases;

-- utilizar e inserir informações no BD
USE blogauto;

--criar uma tabela com primary key autoincrementado
CREATE TABLE pessoa(
cod INT AUTO_INCREMENT primary key,
email VARCHAR(50) UNIQUE NOT NULL
);

--exibir a minha tabela na tela
DESC pessoa;

-- inserir valores/dados na tabela
INSERT INTO pessoa (email)
VALUES ('joao@senac.com');

--exibir agora, a tabela com dados na tela
SELECT * FROM pessoa;

-- inserir valores/dados na tabela
INSERT INTO pessoa (email)
VALUES ('maria@senac.com');

--exibir agora, a tabela com dados na tela
SELECT * FROM pessoa;

-- deletar somente os dados do e-mail João
DELETE FROM pessoa 
WHERE email = 'joao@senac.com';

--exibir agora, a tabela com dados na tela
SELECT * FROM pessoa;

-- inserir mais de um dado

INSERT INTO pessoa (email)
VALUES ('joaquim@senac.com'),
 ('ana@senac.com'),
 ('tadeu@senac.com');

--exibir agora, a tabela com dados na tela
SELECT * FROM pessoa;


