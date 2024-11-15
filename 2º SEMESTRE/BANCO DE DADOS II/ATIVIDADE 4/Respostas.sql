--ATIVIDADE FUNCTION

--1 
CREATE FUNCTION contagem_conta(codClientee CHAR (4))
RETURNS INTEGER AS $$
DECLARE
total_contasv INTEGER;
BEGIN
SELECT COUNT (*)
INTO total_contasv
FROM Conta
WHERE codCliente=codClientee;
RETURN total_contasv;
END
$$ LANGUAGE plpgsql;
SELECT contagem_conta ('0114');

--A) 
SELECT cliente.nomecliente, cliente.cidadecliente, cliente.estadocliente
FROM Cliente
JOIN Conta ON cliente.codcliente=conta.codcliente
GROUP BY cliente.codcliente,cliente.nomecliente,cliente.cidadecliente,cliente.estadocliente;

--2 
CREATE OR REPLACE FUNCTION total_Contas (codiAgencia CHAR (5))
RETURNS INTEGER
LANGUAGE plpgsql AS $$
DECLARE
total_contasv INTEGER;
BEGIN
SELECT COUNT (*)
INTO total_contasv
FROM Conta
WHERE codAgencia=codiAgencia;
RETURN total_contasv;
END;
$$
SELECT total_contas ('02925');

--A ) 
SELECT agencia.nomeagencia,agencia.cidadeagencia
FROM Agencia
JOIN conta ON agencia.codAgencia=conta.codAgencia
GROUP BY agencia.codagencia,agencia.nomeagencia,agencia.cidadeagencia
HAVING COUNT (conta.numeroconta)>=2;

--3 
CREATE OR REPLACE FUNCTION saldo_total_cliente (cod_cliente CHAR (4))
RETURNS NUMERIC
LANGUAGE plpgsql AS $$
DECLARE
saldo_totalv NUMERIC;
BEGIN
SELECT COALESCE (SUM(saldo), 0)
INTO saldo_totalv
FROM Conta
WHERE codcliente =cod_cliente;
RETURN saldo_totalv;
END;
$$
SELECT saldo_total_cliente('0111');

--B) 
SELECT cliente.nomecliente,cliente.cidadecliente,cliente.estadocliente,saldo_total_cliente('0111')
FROM cliente WHERE cliente.codcliente='0111';

--c) 
SELECT cliente.nomecliente,cliente.cidadecliente,cliente.estadocliente,saldo_total_cliente(cliente.codcliente)
FROM cliente WHERE saldo_total_cliente(cliente.codcliente)>1000;

--4 
CREATE OR REPLACE FUNCTION maximo_saldo (cod_agencia CHAR(5))
RETURNS NUMERIC
LANGUAGE plpgsql AS
$$
DECLARE
max_saldov NUMERIC;
BEGIN
SELECT COALESCE (MAX(saldo),0)
INTO max_saldov
FROM Conta
WHERE codagencia=cod_agencia;
RETURN max_saldov;
END;
$$
SELECT maximo_saldo ('02925');

--b) 
SELECT agencia.nomeagencia,agencia.cidadeagencia,cliente.nomecliente,conta.saldo
FROM Agencia JOIN Conta ON agencia.codagencia=conta.codagencia
JOIN Cliente ON conta.codcliente=cliente.codcliente
WHERE conta.saldo=maximo_saldo(agencia.codAgencia)
ORDER BY conta.saldo DESC;

--5 
CREATE OR REPLACE FUNCTION minimo_saldo(cod_agencia CHAR (5))
RETURNS NUMERIC AS $$
DECLARE
min_saldov NUMERIC;
BEGIN
SELECT COALESCE (MIN(saldo),0)
INTO min_saldov
FROM Conta
WHERE codagencia=cod_agencia;
RETURN min_saldov;
END;
$$ LANGUAGE plpgsql;
SELECT minimo_saldo ('02925');

--b) 
SELECT agencia.nomeagencia,agencia.cidadeagencia,cliente.nomecliente,conta.saldo
FROM agencia JOIN conta ON agencia.codagencia=conta.codagencia
JOIN cliente ON conta.codcliente=cliente.codcliente
WHERE conta.saldo=minimo_saldo(agencia.codagencia)
ORDER BY conta.saldo ASC;
