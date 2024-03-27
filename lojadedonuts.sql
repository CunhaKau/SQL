--criar banco de dados
CREATE DATABASE lojadedonuts;

--mostrar o banco
show databases;

-- selecionar o banco que vou inserir tabelas
USE lojadedonuts;

--criar tabela
CREATE TABLE notasdonuts (
empresa VARCHAR(50) NOT NULL,
hora TIME,
data DATE,
tipo VARCHAR(30) NOT NULL,
nota SMALLINT(2) NOT NULL,
comentario TEXT NOT NULL
);

--exibir a tabela na tela
DESC notasdonuts;

--inserir valores/dados no sistema
INSERT INTO notasdonuts  (empresa,hora,data,tipo,nota,comentario)
VALUES ('Starbuzz Coffee', 075300, 20230215, 'Morango', 10, 'Excelente sabor, gostei muito');


--exibir valores na tela
SELECT * FROM notasdonuts;

INSERT INTO notasdonuts  (empresa,hora,data,tipo,nota,comentario)
VALUES ('Ducans Donuts', 121200,20230525,'Chocolate', 7, 'Morno, mas não quente'),
('Starbuzz Coffee', 140100 , 20230525, 'Geléia', 5, 'Não são fresquinhos'),
('Krispy King', 211800, 20230906,'Chocolate com Castanha', 8,'Uuuuuhuuu'),
('Ducans Donuts', 190000,20230525,'Morango com Leite Ninho', 3, 'Não cobertura suficiente!');


--exibir valores na tela
SELECT * FROM notasdonuts;

--exibir apenas um dado
SELECT tipo FROM notasdonuts WHERE tipo = 'Geléia'; 

--exibir duas coluna
SELECT tipo, nota FROM notasdonuts WHERE tipo = 'Geléia'; 

--exibir todos os dados de uma só coluna
SELECT tipo FROM notasdonuts;

--exibir todos os dados de duas colunas
SELECT empresa, comentario FROM notasdonuts;

-- exibir na tela uma coluna com operação menor que
SELECT empresa FROM notasdonuts WHERE nota < 8;

-- exibir na tela uma coluna com operação maior que
SELECT empresa FROM notasdonuts WHERE nota > 9;

-- exibir na tela uma coluna com operação igual a
SELECT empresa FROM notasdonuts WHERE nota = 8;

-- exibir na tela uma coluna com operação menor ou igual a
SELECT tipo FROM notasdonuts WHERE nota <= 5;

--exibir na tela uma coluna com o condicional AND
SELECT empresa FROM notasdonuts WHERE tipo = 'Chocolate com Castanha' AND nota = 8;


--exibir na tela uma coluna com o condicional OR
SELECT empresa FROM notasdonuts WHERE tipo = 'Chocolate com Castanha' OR nota = 7;

----exibir na tela uma coluna com o condicional AND com operador menor
SELECT empresa FROM notasdonuts WHERE tipo = 'Chocolate com Castanha' AND nota < 10;

--selecionar dados de uma coluna usando operadores de comparação e AND
SELECT tipo FROM notasdonuts WHERE nota >= 5 AND nota <= 8;

--selecionar dados de uma coluna usando operadores de comparação e OR
SELECT tipo FROM notasdonuts WHERE nota >= 10 OR nota = 3;

--selecionando dados de todas as colunas onde contenha uma palavra
SELECT * FROM notasdonuts WHERE tipo LIKE '%Chocolate%';

--selecionando dados de uma coluna onde contenha uma frase
SELECT nota FROM notasdonuts WHERE tipo LIKE '%Chocolate com Castanha%';

--selecionando dados de todas as colunas onde NÃO contenha a palavra
SELECT * FROM notasdonuts WHERE tipo NOT LIKE '%Chocolate%';

--selecionado todos os dados entre dois números inseridos em uma coluna
SELECT * FROM notasdonuts WHERE nota BETWEEN 5 AND 8;

--selecionando um coluna entre dois números inseridos em outra coluna
SELECT empresa FROM notasdonuts WHERE nota BETWEEN 7 AND 8;

--selecionando todos os dados da coluna, entre a hora que foi inserida
SELECT * FROM notasdonuts WHERE hora BETWEEN 000000 AND 120000;

--ordenando todos os dados da tabela em contagem ascendente
SELECT * FROM notasdonuts
WHERE nota BETWEEN 0 AND 10
ORDER BY nota asc;


--ordenando todos os dados da tabela em ordem decrescente
SELECT * FROM notasdonuts
WHERE nota BETWEEN 0 AND 10
ORDER BY nota desc;

