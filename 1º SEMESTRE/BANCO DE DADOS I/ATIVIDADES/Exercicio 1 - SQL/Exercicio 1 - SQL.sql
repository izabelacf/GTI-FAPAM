CREATE TABLE cliente (
	codigo_cliente INTEGER, 
	nome_cliente VARCHAR(50) NOT NULL,
	cpf_cliente VARCHAR(11) NOT NULL,
	celular_cliente VARCHAR(11),
	PRIMARY KEY (codigo_cliente)
);

CREATE TABLE produto (
	codigo_produto INTEGER, 
	descricao_produto VARCHAR(30) NOT NULL,
	preco_produto NUMERIC(6,2),
	estoque_produto INTEGER DEFAULT (0),
	tipo_produto VARCHAR(8),
	PRIMARY KEY (codigo_produto)
);

CREATE TABLE venda(
	codigo_venda INTEGER,
	data_venda DATE,
	hora_venda TIME,
	codigo_cliente INTEGER,
	PRIMARY KEY(codigo_venda),
	FOREIGN KEY (codigo_cliente) REFERENCES cliente (codigo_cliente)
);

CREATE TABLE produto_venda(
	id_prodvenda SERIAL PRIMARY KEY,
	codigo_venda INTEGER,
	codigo_produto INTEGER,
	quantidade_vendida NUMERIC(5,3),
	valor_total NUMERIC(7,2),
	FOREIGN KEY (codigo_venda) REFERENCES venda (codigo_venda),
	FOREIGN KEY (codigo_produto) REFERENCES produto (codigo_produto)
);

--2
INSERT INTO cliente
(codigo_cliente, nome_cliente, cpf_cliente, celular_cliente)
VALUES
(1, 'Gabriel Ribeiro Diniz', '99999999999', '37999999999');

--3
INSERT INTO cliente
(codigo_cliente, nome_cliente, cpf_cliente, celular_cliente)
VALUES
(2, 'Cliente 2', '88888888888', '37988888888'),
(3, 'Cliente 3', '77777777777', '37977777777'),
(4, 'Cliente 4', '66666666666', '37966666666'),
(5, 'Cliente 5', '55555555555', '37955555555'),
(6, 'Cliente 6', '44444444444', '37944444444');

--4
UPDATE cliente
SET celular_cliente = '37999998888'
WHERE codigo_cliente = 1;

--5
SELECT nome_cliente
FROM cliente
ORDER BY nome_cliente;

--6
INSERT INTO produto 
(codigo_produto, descricao_produto, preco_produto, estoque_produto, tipo_produto)
VALUES
(1, 'Arroz', 15.65, 10, 'ALIMENTO'),
(2, 'Feijão', 11.35, 20, 'ALIMENTO'),
(3, 'Água', 3.99, 35, 'BEBIDA'),
(4, 'Refrigerante', 6.68, 7, 'BEBIDA'),
(5, 'Salgadinho', 5.23, 32, 'ALIMENTO'),
(6, 'Energetico', 6.22, 10, 'BEBIDA');

--7
UPDATE produto
SET preco_produto = preco_produto * 1.1
WHERE codigo_produto = 2 
OR codigo_produto = 4 
OR codigo_produto = 6;

--8
UPDATE produto
SET preco_produto = preco_produto * 0.9
WHERE codigo_produto = 1 
OR codigo_produto = 3 
OR codigo_produto = 5;

--9
SELECT * 
FROM produto
WHERE
estoque_produto > 50
OR 
preco_produto < 100;

--10
INSERT INTO venda
(codigo_venda, data_venda, hora_venda, codigo_cliente)
VALUES
(1, '29/04/2024', '19:44:00', 2);

INSERT INTO produto_venda
(codigo_venda, codigo_produto, quantidade_vendida, valor_total)
VALUES
(1, 2, 1, 12.49),
(1, 6, 2, 13.68);


--11
UPDATE produto
SET estoque_produto = estoque_produto - 1
WHERE codigo_produto = 2;
UPDATE produto
SET estoque_produto = estoque_produto - 2
WHERE codigo_produto = 6;

--12
INSERT INTO produto 
(codigo_produto, descricao_produto, estoque_produto, tipo_produto)
VALUES
(7, 'Chocolate', 60, 'ALIMENTO');
