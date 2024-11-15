--Exercício 1
CREATE PROCEDURE inserir_produto(
	codigo INTEGER,
	descricao VARCHAR(30), 
	preco NUMERIC(6,2),
	estoque INTEGER,
	tipo VARCHAR(8))
LANGUAGE SQL
AS $$
INSERT INTO produto VALUES (codigo, descricao, preco, estoque, tipo);
$$;

CALL inserir_produto(20, 'Novo produto', 10.50, 10, 'ALIMENTO');

--Exercício 2
CREATE PROCEDURE aumentar_preco_por_tipo(
	porcentagem INTEGER,
	tipo VARCHAR(8))
LANGUAGE SQL
AS $$
UPDATE produto
SET preco_produto = preco_produto + (preco_produto * porcentagem / 100)
WHERE tipo_produto = upper(tipo);
$$;

SELECT * FROM produto;

CALL aumentar_preco_por_tipo(50, 'ALIMENTO');

--Exercício 3
CREATE PROCEDURE excluir_produto(
	codigo INTEGER)
LANGUAGE SQL
AS $$
DELETE FROM produto
WHERE codigo_produto = codigo;
$$;

INSERT INTO Produto (codigo_produto, descricao_produto, preco_produto, estoque_produto, tipo_produto)
VALUES
(7, 'Novo', 5.00, 10, 'ALIMENTO');

CALL excluir_produto(7);

--Exercício 4
CREATE PROCEDURE atualiza_total_venda(
	codigo INTEGER)
LANGUAGE SQL
AS $$
UPDATE venda 
SET valor_total = (SELECT SUM(valor_total) FROM ProdutoVenda WHERE codigo_venda = codigo)
WHERE cod_venda = codigo;
$$;

SELECT * FROM Venda;

CALL atualiza_total_venda(1);

--Exercício 5
CREATE PROCEDURE atualiza_total_vendas()
LANGUAGE SQL
AS $$
UPDATE venda 
SET valor_total = (SELECT SUM(valor_total) FROM ProdutoVenda WHERE codigo_venda = venda.cod_venda);
$$;

SELECT * FROM Venda;

CALL atualiza_total_vendas();

--Exercício 6
CREATE PROCEDURE inserir_produto_venda(
	codigovenda INTEGER,
	codigoproduto INTEGER,
	quantidadevendida INTEGER,
	valortotal NUMERIC(5,2))
LANGUAGE SQL
AS $$
INSERT INTO ProdutoVenda (codigo_venda, codigo_produto, quantidade_vendida, valor_total) VALUES 
(codigovenda, codigoproduto, quantidadevendida, valortotal);
CALL atualiza_total_venda(codigovenda);
$$;

SELECT * FROM venda WHERE cod_venda = 1;

CALL inserir_produto_venda(1, 1, 1, 5.0);

--Exercício 7
CREATE PROCEDURE excluir_produto_venda(
	idproduto INTEGER)
LANGUAGE SQL
AS $$
CALL atualiza_total_venda(DELETE FROM ProdutoVenda WHERE id_produtovenda = idproduto RETURNING codigo_venda;);
$$;

SELECT * FROM venda WHERE cod_venda = 1;


DELETE FROM ProdutoVenda WHERE id_produtovenda = 1 RETURNING codigo_venda
