--Para exemplificar e tornar mais clara a utilização de gatilhos, 
--simularemos a seguinte situação: 

--“Uma mercearia, ao registrar vendas (INSERT), 
--precisa que o estoque dos produtos seja 
--automaticamente reduzido. A atualização do estoque deve também ser automática no 
--caso de devolução de produtos (DELETE) ”.

--Como se trata de um ambiente hipotético, 
--teremos apenas duas tabelas de base e estrutura simples:

CREATE TABLE Produtos (
	NumProduto INTEGER NOT NULL PRIMARY KEY,
	Descricao VARCHAR(50) UNIQUE,
	Estoque INTEGER NOT NULL DEFAULT 0);

CREATE TABLE ItensVenda (
	Venda INTEGER NOT NULL PRIMARY KEY, 
	NProduto INTEGER, -- PK e FK da tabela PRODUTO referencia NumProduto
	Quantidade INTEGER NOT NULL DEFAULT 0);
	
	
INSERT INTO Produtos (NumProduto, Descricao, Estoque) VALUES (001, 'Feijão', 10);
INSERT INTO Produtos (NumProduto, Descricao, Estoque) VALUES (002, 'Arroz', 5);
INSERT INTO Produtos (NumProduto, Descricao, Estoque) VALUES (003, 'Farinha', 15);

SELECT * FROM Produtos;

--Ao inserir e remover registros da tabela ItensVenda, 
--o estoque do produto referenciado deve ser alterado 
--na tabela Produtos. 

--Para isso, serão criados dois triggers na tabela ItensVenda: 
--um AFTER INSERT para dar baixa no estoque (diminuir estoque);
--um AFTER DELETE para fazer a devolução do produto (aumentar estoque).

--Antes de tudo, precisamos criar a função que será chamada pela TRIGGER

CREATE OR REPLACE FUNCTION functionInsertItensVendaTrigger()
	RETURNS TRIGGER
	LANGUAGE plpgsql
AS $$
BEGIN
	UPDATE Produtos 
	SET Estoque = Estoque - NEW.Quantidade 
	WHERE NumProduto = NEW.NProduto; --correspondência das chaves (PK e FK) 
	RETURN NEW;
END;
$$

--Agora sim podemos criar a Trigger.
CREATE TRIGGER ItensVenda_Insert
    AFTER INSERT ON ItensVenda
    FOR EACH ROW
    EXECUTE FUNCTION functionInsertItensVendaTrigger();
	
--Tendo criado o trigger, podemos testá-lo inserindo 
--dados na tabela ItensVenda. Nesse caso, 
--vamos simular vendas que contenhan:
-- 3 unidades do produto 001, 
-- 1 unidade do produto 002 e
-- 5 unidades do produto 003.

SELECT * FROM Produtos WHERE NumProduto = 001;
INSERT INTO ItensVenda VALUES (1, 001, 3);
SELECT * FROM Produtos WHERE NumProduto = 001;

SELECT * FROM Produtos WHERE NumProduto = 002;
INSERT INTO ItensVenda VALUES (2, 002, 1);
SELECT * FROM Produtos WHERE NumProduto = 002;

SELECT * FROM Produtos WHERE NumProduto = 003;
INSERT INTO ItensVenda VALUES (3, 003, 5);
SELECT * FROM Produtos WHERE NumProduto = 003;

--Agora vamos criar uma Trigger para aumentar o estoque 
--da tabala Produtos quando um ItensVenda foi DELETADO

CREATE OR REPLACE FUNCTION functionDeleteItensVendaTrigger()
	RETURNS TRIGGER
	LANGUAGE plpgsql
AS $$
BEGIN
	UPDATE Produtos 
	SET Estoque = Estoque + OLD.Quantidade 
	WHERE NumProduto = OLD.NProduto; --correspondência das chaves (PK e FK) 
	RETURN NEW;
END;
$$

--Agora sim podemos criar nosso TRIGGER
CREATE TRIGGER ItensVenda_Delete
    AFTER DELETE ON ItensVenda
    FOR EACH ROW
    EXECUTE FUNCTION functionDeleteItensVendaTrigger();

--Agora para testar o trigger da exclusão, 
--removeremos o produto 001 da tabela dos 
--itens vendidos (ou seja, o produto 001 VAI SER DEVOLVIDO). 

--Com isso, o seu estoque deve ser alterado para o 
--valor inicial antes da venda das 3 unidades, 
--ou seja, voltando a 10 unidades.

-- Excluindo dados da tabela ItensVenda (devolução produto)
SELECT * FROM Produtos WHERE NumProduto = 001;
DELETE FROM ItensVenda
WHERE Venda = 1 AND NProduto = 001;
--Ao executar SELECT na tabela Produtos, 
--apenas o produto 001 teve o estoque atualizado, voltando a 10.
SELECT * FROM Produtos WHERE NumProduto = 001;

--No primeiro gatilho, foi utilizado o registro NEW 
--para obter as informações da linha (tupla) que está 
--sendo inserida na tabela. 

--O mesmo é feito no segundo gatilho, onde se obtém os 
--dados que estão sendo apagados da tabela através do 
--registro OLD.
