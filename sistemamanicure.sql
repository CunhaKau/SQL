CREATE DATABASE sistemamanicure;

show databases;

USE sistemamanicure;

CREATE TABLE agendamentos(
matriculamanicure INT PRIMARY KEY,
data DATE,
hora TIME
);

DESC agendamentos;

INSERT INTO agendamentos (matriculamanicure, data, hora)
VALUES (01, 20230910, 140000);

SELECT * FROM agendamentos;

--Inserindo uma coluna na tabela, já existente
ALTER TABLE agendamentos
ADD COLUMN servicoescolhido INT; 


DESC agendamentos;

--Alterando um dado do atributo
UPDATE agendamentos
SET hora = 173000
WHERE matriculamanicure = 1;

SELECT * FROM agendamentos;