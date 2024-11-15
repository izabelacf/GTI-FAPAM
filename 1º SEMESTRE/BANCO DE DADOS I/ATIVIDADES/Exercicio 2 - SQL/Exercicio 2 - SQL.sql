--1 
--Cliente (CPF PK, Cli_nome, Rua, Bairro, Cidade, Numero)
--Cli_telefone (CPF* PK, Telefone PK)
--Animal (Ani_ID PK, Ani_nome, Especie, CPF*)
--Veterinario (CRV PK, Vet_nome, Salario, Experiencia)
--Enfermidade (Enf_ID PK, Gravidade, Enfi_descricao)
--Consulta (Cod_consulta PK, Data, Valor, Ani_ID*, CRV*, Enf_ID*)

--2 
CREATE TABLE CLIENTE(
CPF CHAR(11) PRIMARY KEY,
cli_nome VARCHAR(50) NOT NULL,
rua VARCHAR (50) NOT NULL,
bairro VARCHAR (50)NOT NULL,
cidade VARCHAR (30) NOT NULL,
numero INTEGER
);

CREATE TABLE Cli_Telefone(
Telefone CHAR (11) PRIMARY KEY,
CPF CHAR(11),
FOREIGN KEY (CPF) REFERENCES Cliente (CPF)
);

CREATE TABLE Animal(
Ani_ID INTEGER PRIMARY KEY,
Ani_nome VARCHAR (20) NOT NULL,
Especie VARCHAR (20) NOT NULL,
CPF CHAR (11) NOT NULL,
FOREIGN KEY (CPF) REFERENCES Cliente (CPF)
);

CREATE TABLE Veterinario(
CRV INTEGER PRIMARY KEY,
Vet_nome VARCHAR (50) NOT NULL,
Salario NUMERIC (6,2) NOT NULL,
Experiencia VARCHAR (100) NOT NULL
);

CREATE TABLE Enfermidade(
Enf_ID INTEGER PRIMARY KEY,
Gravidade VARCHAR (10) NOT NULL,
Enfi_descricao VARCHAR (20) NOT NULL
);

CREATE TABLE Consulta (
Cod_consulta INTEGER PRIMARY KEY,
Data DATE NOT NULL,
Valor NUMERIC (6,2) NOT NULL,
Ani_ID INTEGER,
CRV INTEGER,
Enf_ID INTEGER,
FOREIGN KEY (Ani_ID) REFERENCES Animal (Ani_ID),
FOREIGN KEY (CRV) REFERENCES Veterinario (CRV),
FOREIGN KEY (Enf_ID) REFERENCES Enfermidade(Enf_ID)
);

 --3
INSERT INTO cliente
values
('11111111111','Ellie','Benedito Valadares','Centro','Pará de Minas','789'),
('22222222222','Joel Miller','Manuel Batista','Santos Dumont','Pará de Minas','140'),
('33333333333','Arthur Morgan','Avenida Presidente Vargas','São Francisco','Belo Horizonte','322');

INSERT INTO cli_telefone
values
('37988888888','11111111111'),
('37977777777','22222222222'),
('37966666666','22222222222'),
('37955555555','33333333333');

--4 
INSERT INTO Veterinario
VALUES
(75689,'Fernando Maciel','5500.00','3 Anos de experiencia'),
(65893,'Anderson Tres','8000.00','5 Anos de experiencia'),
(68712,'Isac Cardoso',7555.00,'7 Anos de experiencia');

--5 
INSERT INTO Animal
VALUES
(1,'Rex','Cachorro','11111111111'),
(2,'Miau','Gato','22222222222'),
(3,'Luthor','Papagaio','33333333333'),
(4,'Rajado','Gato','22222222222'),
(5,'Tobi','Cachorro','11111111111');

--6 
INSERT INTO Enfermidade
VALUES
(1,'leve','desidrataçaão'),
(2,'médio','fratura'),
(3,'leve','corte'),
(4,'grave','convulsão');

--7 
INSERT INTO Consulta
VALUES
(1,'01/05/2023',300.00,1,75689,1),
(2,'04/03/2023',250.00,2,68712,3),
(3,'02/04/2023',350.00,3,65893,1),
(4,'02/04/2023',350.00,4,68712,2),
(5,'02/04/2023',350.00,5,75689,4);

--8 
ALTER TABLE Enfermidade ADD COLUMN tratamento VARCHAR (20);

--9 
UPDATE Enfermidade
SET tratamento = 'soro'
WHERE enf_id = 1

UPDATE Enfermidade
SET tratamento = 'pontos'
WHERE enf_id = 3

UPDATE Enfermidade
SET tratamento = 'gesso'
WHERE enf_id = 2

UPDATE Enfermidade
SET tratamento = 'remedio'
WHERE enf_id = 4

--10 
ALTER TABLE Animal RENAME COLUMN Ani_nome TO Nome

--11 
UPDATE Consulta
SET DATA = '12/01/2022'
WHERE cod_consulta = 1

--12 
UPDATE Veterinario
SET SALARIO=SALARIO+500.00

--13
UPDATE CONSULTA
SET VALOR=VALOR-20.00

--14 
UPDATE VETERINARIO
SET SALARIO=SALARIO-50
WHERE CRV IN (65893,68712)

--15
SELECT cli_nome
FROM cliente
ORDER BY CLI_NOME;

--16
SELECT vet_nome
FROM veterinario
ORDER BY vet_nome;

--17
SELECT nome
FROM animal
ORDER BY nome desc

--18
SELECT CRV,
COUNT (1)FROM CONSULTA
GROUP BY CRV;

--20 
SELECT SUM(salario)
FROM Veterinario

--21 
SELECT vet_nome,salario
from veterinario
order by salario desc

--23 
SELECT AVG(Salario)
FROM VETERINARIO

--24 
SELECT vet_nome,salario
FROM veterinario
ORDER BY salario DESC
LIMIT 1

--25 
SELECT vet_nome,salario
FROM veterinario
ORDER BY salario ASC
LIMIT 1

--30 
DELETE FROM Consulta
WHERE ani_ID IN (2,4)

--31 
DELETE FROM Veterinario
WHERE CRV = 68712

--32 
DELETE FROM cli_telefone
WHERE CPF ='22222222222'
DELETE FROM Animal
WHERE Ani_ID IN(2,4)
DELETE FROM cliente
WHERE cpf ='22222222222'

--33 
DELETE FROM CONSULTA

--34
DROP TABLE CONSULTA

--35 
DELETE FROM VETERINARIO

--36
DROP TABLE VETERINARIO

--37 
DROP TABLE ANIMAL;

DROP TABLE CLI_TELEFONE;

DROP TABLE CLIENTE;

DROP TABLE ENFERMIDADE
