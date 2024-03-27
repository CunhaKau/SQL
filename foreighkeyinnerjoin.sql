CREATE DATABASE sistemamanicure;

show databases;

USE sistemamanicure;

CREATE TABLE agendamentos(
matriculamanicure INT PRIMARY KEY,
hora TIME,
data DATE
);

DESC agendamentos;

INSERT INTO agendamentos (matriculamanicure, hora, data)
VALUES (01, 140000, 20230910);

SELECT * FROM agendamentos;

--inserindo mais uma coluna na tabela
ALTER TABLE agendamentos
ADD COLUMN servicoescolhido INT;


CREATE TABLE servicos(
idservico INT PRIMARY KEY,
tiposervico VARCHAR (30) NOT NULL
);

--exibir todas as tabelas que foram criadas
SHOW TABLES;

INSERT INTO servicos(idservico, tiposervico)
VALUES (1, 'Unha Bailarina'),
(2, 'Unha Quadrada'),
(3, 'Unha Oval'),
(4, 'Unha de Gel'),
(5,'Unha Acrilica');

SELECT * FROM servicos;

-- inserindo uma chave estrangeira
ALTER TABLE agendamentos
ADD FOREIGN KEY (servicoescolhido) 
REFERENCES servicos (idservico); 


DESC agendamentos;


--inserindo o valor da tabela em uma outra através da chave estrangeira
UPDATE agendamentos SET servicoescolhido = '1' 
WHERE  matriculamanicure = 1; 

--exibindo os dados das duas tabelas de suas chaves estrangeiras, com uma ordem
SELECT servicos.idservico, servicos.tiposervico, agendamentos.matriculamanicure,
agendamentos.servicoescolhido FROM agendamentos INNER JOIN servicos
ON servicos.idservico = agendamentos.servicoescolhido
ORDER BY agendamentos.matriculamanicure;


-- deletando os dados que referenciou a chave estrangeira (ERRO)
DELETE FROM servicos; 

--deletando um dado que NÃO foram referenciado como FK (SUCESSO)
DELETE FROM servicos WHERE tiposervico = 'Unha Acrilica';


--EXIBINDO NA TELA
SELECT * FROM servicos;


--deletando um dado que foi referenciado como FK (ERRO)
DELETE FROM servicos WHERE tiposervico = 'Unha Bailarina';


--exibindo os dados das duas tabelas através de sua chave estrangeira
SELECT servicos.idservico, servicos.tiposervico, agendamentos.matriculamanicure,
agendamentos.servicoescolhido FROM agendamentos JOIN servicos
ON servicos.idservico = agendamentos.servicoescolhido;

--inserindo mais dados na tabela agendamentos
INSERT INTO agendamentos (matriculamanicure, hora, data)
VALUES (02, 140000, 20231205);

-- VERIFICAR SE OS VALORES FORAM INSERIDOS
SELECT * FROM agendamentos;


--inserindo mais um valor por chave estrangeira
UPDATE agendamentos SET servicoescolhido = '3' 
WHERE matriculamanicure = 2;

-- VERIFICAR SE OS VALORES FORAM INSERIDOS
SELECT * FROM agendamentos;

--exibindo os dados das duas tabelas de suas chaves estrangeiras, com uma ordem
SELECT servicos.idservico, servicos.tiposervico, agendamentos.matriculamanicure,
agendamentos.servicoescolhido FROM agendamentos INNER JOIN servicos
ON servicos.idservico = agendamentos.servicoescolhido
ORDER BY agendamentos.matriculamanicure;