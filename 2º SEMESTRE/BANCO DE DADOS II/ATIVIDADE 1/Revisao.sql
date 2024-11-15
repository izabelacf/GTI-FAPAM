--ATIVIDADE REVISAO
-- questao 1
 
CREATE TABLE peca(
numero INTEGER PRIMARY KEY,
nome VARCHAR (20) NOT NULL,
quantidade INTEGER DEFAULT '0',
preco NUMERIC (6,2)
);

CREATE TABLE funcionario(
ID_FUN SERIAL PRIMARY KEY,
NOME VARCHAR(10) NOT NULL,
SOBRENOME VARCHAR (10) NOT NULL,
CEP CHAR(8)
);

CREATE TABLE cliente (
numero_cli INTEGER PRIMARY KEY,
nome VARCHAR (10) NOT NULL,
sobrenome VARCHAR(10) NOT NULL,
CEP CHAR (8) NOT NULL
);

CREATE TABLE pedido (
num_pedido INTEGER PRIMARY KEY,
data_recebimento DATE,
data_entrega_esperada DATE,
data_entrega_real DATE,
quantidade INTEGER DEFAULT '0',
ID_FUN INTEGER,
numero_cli INTEGER,
FOREIGN KEY (ID_FUN) REFERENCES funcionario(ID_FUN),
FOREIGN KEY (numero_cli) REFERENCES cliente (numero_cli)
);

CREATE TABLE possui (
num_pedido INTEGER,
numero INTEGER,
PRIMARY KEY (num_pedido,numero),
FOREIGN KEY (num_pedido) REFERENCES pedido(num_pedido),
FOREIGN KEY (numero) REFERENCES peca (numero)
);

2- ALTER TABLE peca RENAME TO produto

3- ALTER TABLE pedido RENAME COLUMN num_pedido TO codigo_pedido
ALTER TABLE cliente RENAME COLUMN numero_cli TO codigo_cli
ALTER TABLE produto RENAME COLUMN numero TO codigo_produto

4- ALTER TABLE cliente ALTER COLUMN nome TYPE VARCHAR(125);

5- ALTER TABLE cliente ADD COLUMN CPF CHAR (11);

6- ALTER TABLE cliente ADD CONSTRAINT CPF UNIQUE (CPF);

7- ALTER TABLE cliente ALTER COLUMN CEP SET DEFAULT '35660000';

9- INSERT INTO cliente
VALUES
(1234567,'Joel','Miller',35650000,34567891234),
(1234566,'Ellie','Williams',35640000,12345678913),
(1234444,'Leon','Kennedy',35650000,12345678901),
(1234555,'Ada','Wong',35650000,09876543214),
(1234568,'Arthur','Morgan',34640000,98765431324);

INSERT INTO produto
VALUES
(1,'X bacon',200,20.00),
(2,'Batata Frita',300,15.00),
(3,'Churrasco',400,13.00),
(4,'Omelete',200,10.00),
(5,'Pizza',500,50.00);

INSERT INTO funcionario
VALUES
(1,'Chris','Redfield',35650000),
(2,'John','Marston',35640000),
(3,'Ramon','Salazar',35640000),
(4,'Micah','Bell',35640000),
(5,'Jill','Valentine',35650000);

INSERT INTO pedido
VALUES
(1,'2024-08-17','2024-08-17','2024-08-18',4,1,1234567),
(2,'2024-08-17','2024-08-17','2024-08-19',6,2,1234566),
(3,'2024-08-13','2024-08-17','2024-08-19',4,3,1234444),
(4,'2024-08-18','2024-08-19','2024-08-19',5,4,1234555),
(5,'2024-08-13','2024-08-13','2024-08-13',7,5,1234568);

INSERT INTO possui
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);
10- SELECT codigo_cli FROM cliente
ORDER BY codigo_cli DESC
LIMIT 2;

11- SELECT codigo_produto FROM produto
ORDER BY codigo_produto DESC
OFFSET 2
LIMIT 1;

12- SELECT * FROM pedido
WHERE ID_FUN <> 1;

13- SELECT nome, sobrenome
FROM Funcionario
WHERE sobrenome='Diniz'

14- SELECT nome
FROM produto
WHERE nome<>'caixa'

15- nao consegui fazer essa

16- SELECT codigo_produto, ROUND (preco, 2) AS precoarredondado
FROM Produto;

17- SELECT codigo_produto,FLOOR(preco) AS precosemdecimal
FROM produto;

18- SELECT (nome,sobrenome) AS nomecompleto
FROM cliente;

19- SELECT data_entrega_esperada, data_entrega_real,
data_entrega_real - data_entrega_esperada AS diferenca
FROM pedido;

20- SELECT * FROM produto
WHERE preco > 200;

21- SELECT * FROM pedido
WHERE quantidade < 5;

22- SELECT * FROM pedido
WHERE data_entrega_esperada >= '2023-05-01'
AND data_entrega_esperada < '2023-06-01';

23- SELECT nome, sobrenome FROM funcionario
ORDER BY nome,sobrenome ASC

24- SELECT (nome,sobrenome) AS nomecompleto
FROM cliente
ORDER BY (nome, sobrenome)

25- SELECT codigo_pedido, COUNT(*) AS numeroitens
FROM pedido
GROUP BY codigo_pedido
ORDER BY numeroitens DESC
LIMIT 1;

26- SELECT COUNT(*)
FROM pedido;

27- SELECT DISTINCT nome
FROM cliente;

28- SELECT pedido.codigo_pedido, cliente.nome
FROM pedido
JOIN cliente
ON pedido.codigo_cli = cliente.codigo_cli

29- SELECT pedido.data_entrega_esperada,pedido.data_entrega_real,funcionario.nome
FROM pedido
JOIN funcionario
ON pedido.id_fun = funcionario.id_fun

30-DELETE FROM possui;
DELETE FROM produto;
DELETE FROM pedido;
DELETE FROM funcionario;
DELETE FROM cliente;

31-DROP TABLE POSSUI;
DROP TABLE PRODUTO;
DROP TABLE PEDIDO;
DROP TABLE FUNCIONARIO;
DROP TABLE CLIENTE;
