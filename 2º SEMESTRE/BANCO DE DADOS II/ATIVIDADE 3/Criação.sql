CREATE TABLE Produto(
	codigo_produto INTEGER,
	descricao_produto VARCHAR(30) NOT NULL, 
	preco_produto NUMERIC(6,2),
	estoque_produto INTEGER DEFAULT 0,
	tipo_produto VARCHAR(8),
	PRIMARY KEY (codigo_produto)
);
CREATE TABLE Venda(
	cod_venda INTEGER,
	data_venda DATE,
	valor_total NUMERIC(12,2),
	PRIMARY KEY (cod_venda)
);
CREATE TABLE ProdutoVenda(
	ID_ProdutoVenda SERIAL,
	codigo_venda INTEGER,
	codigo_produto INTEGER,
	quantidade_vendida INTEGER,
	valor_total NUMERIC(5,2),
	PRIMARY KEY (ID_ProdutoVenda),
	FOREIGN KEY (codigo_venda) REFERENCES Venda (cod_venda),
	FOREIGN KEY (codigo_produto) REFERENCES Produto (codigo_produto)
);
INSERT INTO Produto (codigo_produto, descricao_produto, preco_produto, estoque_produto, tipo_produto)
VALUES
(1, 'Doce', 5.00, 10, 'ALIMENTO'),
(2, 'Arroz', 10.00, 5, 'ALIMENTO'),
(3, 'Refrigerante', 15.00, 3, 'BEBIDA'),
(4, 'Suco', 12, 10, 'BEBIDA'),
(5, 'Vinho', 15.00, 3, 'BEBIDA'),
(6, 'Feijão', 15.00, 3, 'ALIMENTO');
INSERT INTO Venda (cod_venda, data_venda) 
VALUES (1, current_date);
INSERT INTO Venda (cod_venda, data_venda) 
VALUES (2, current_date);
INSERT INTO Venda (cod_venda, data_venda) 
VALUES (3, current_date);
INSERT INTO Venda (cod_venda, data_venda) 
VALUES (4, current_date);
INSERT INTO ProdutoVenda (codigo_venda, codigo_produto, quantidade_vendida, valor_total) 
VALUES 
(1, 2, 2, (SELECT preco_produto FROM Produto WHERE codigo_produto = 2));
INSERT INTO ProdutoVenda (codigo_venda, codigo_produto, quantidade_vendida, valor_total)
VALUES 
(1, 3, 1, (SELECT preco_produto FROM Produto WHERE codigo_produto = 3));
INSERT INTO ProdutoVenda (codigo_venda, codigo_produto, quantidade_vendida, valor_total)
VALUES 
(2, 5, 1, (SELECT preco_produto FROM Produto WHERE codigo_produto = 5));
INSERT INTO ProdutoVenda (codigo_venda, codigo_produto, quantidade_vendida, valor_total)
VALUES 
(2, 6, 1, (SELECT preco_produto FROM Produto WHERE codigo_produto = 6));
INSERT INTO ProdutoVenda (codigo_venda, codigo_produto, quantidade_vendida, valor_total)
VALUES 
(3, 1, 1, (SELECT preco_produto FROM Produto WHERE codigo_produto = 1));
INSERT INTO ProdutoVenda (codigo_venda, codigo_produto, quantidade_vendida, valor_total)
VALUES 
(3, 6, 1, (SELECT preco_produto FROM Produto WHERE codigo_produto = 6));
INSERT INTO ProdutoVenda (codigo_venda, codigo_produto, quantidade_vendida, valor_total)
VALUES 
(4, 2, 1, (SELECT preco_produto FROM Produto WHERE codigo_produto = 2));
INSERT INTO ProdutoVenda (codigo_venda, codigo_produto, quantidade_vendida, valor_total)
VALUES 
(4, 4, 1, (SELECT preco_produto FROM Produto WHERE codigo_produto = 4));
