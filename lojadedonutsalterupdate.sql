CREATE DATABASE lojadedonuts;

show databases;

USE lojadedonuts;

CREATE TABLE notasdonuts (
empresa VARCHAR(50) NOT NULL,
hora TIME,
data DATE,
tipo VARCHAR(30) NOT NULL,
nota SMALLINT(2) NOT NULL,
comentario TEXT NOT NULL
);

DESC notasdonuts;

INSERT INTO notasdonuts  (empresa,hora,data,tipo,nota,comentario)
VALUES ('Starbuzz Coffee', 075300, 20230215, 'Morango', 10, 'Excelente sabor, gostei muito');


SELECT * FROM notasdonuts;

INSERT INTO notasdonuts  (empresa,hora,data,tipo,nota,comentario)
VALUES ('Ducans Donuts', 121200,20230525,'Chocolate', 7, 'Morno, mas não quente'),
('Starbuzz Coffee', 140100 , 20230525, 'Geléia', 5, 'Não são fresquinhos'),
('Krispy King', 211800, 20230906,'Chocolate com Castanha', 8,'Uuuuuhuuu'),
('Ducans Donuts', 190000,20230525,'Morango com Leite Ninho', 3, 'Não cobertura suficiente!');

SELECT * FROM notasdonuts;

SELECT tipo FROM notasdonuts WHERE empresa = 'Starbuzz Coffee';

SELECT * FROM notasdonuts WHERE nota = 7;

--atualizando um dado na coluna da tabela
UPDATE notasdonuts SET empresa = 'Ducan SP' WHERE nota = 7;

--atualizando vários dados das colunas 
UPDATE notasdonuts SET empresa = 'Ducan SP' 
WHERE empresa = 'Starbuzz Coffee';

-- atualizar vários dados da coluna, usando o BETWEEN
UPDATE notasdonuts SET empresa = 'Ducan SP' 
WHERE nota BETWEEN 3 AND 8;


DESC notasdonuts;

--adicionar uma nova coluna na tabela
ALTER TABLE notasdonuts ADD COLUMN nomecliente VARCHAR(30);

--deletando uma coluna da tabela
ALTER TABLE notasdonuts DROP COLUMN nomecliente;

--adicionar uma coluna na tabela, na primeira posição
ALTER TABLE notasdonuts 
ADD COLUMN primeironome VARCHAR(10) FIRST;

--exiba na tela para ver o resultado
DESC notasdonuts;

--alterar o nome da tabela
ALTER TABLE notasdonuts RENAME TO notas;

--exibindo a tabela com o nome novo
DESC notas;

--testando com o nome antigo 
DESC notasdonuts; --vai apresentar um erro que a tabela não existe

--alterando novamente o nome da tabela
ALTER TABLE notas RENAME TO notasdonuts;


--verificar se a alteração aconteceu
DESC notasdonuts;

--adicionar uma coluna na tabela, após outra coluna
ALTER TABLE notasdonuts 
ADD COLUMN cidade VARCHAR(40) AFTER empresa;

--alterando o nome do atributo da coluna e seu datatype
ALTER TABLE notasdonuts
CHANGE COLUMN empresa 
nomedaempresa VARCHAR(100);

--alterando o datatype do atributo
ALTER TABLE notasdonuts
CHANGE COLUMN nomedaempresa 
nomedaempresa VARCHAR(200);