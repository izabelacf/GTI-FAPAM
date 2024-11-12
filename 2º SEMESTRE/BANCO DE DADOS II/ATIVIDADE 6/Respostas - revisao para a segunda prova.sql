--1
CREATE FUNCTION addPonto()
RETURNS TRIGGER
LANGUAGUE plpgsql
AS $$
BEGIN
	UPDATE Pontos 
	SET Pontos = Pontos + 1
	WHERE codCliente = NEW.codCliente;
	RETURN NEW;
END;
$$

CREATE TRIGGER pontuar AFTER INSERT ON Aluguel
FOR EACH ROW EXECUTE FUNCTION addPonto();

--2
CREATE FUNCTION salvarLog()
RETURNS TRIGGER
LANGUAGUE plpgsql
AS $$
BEGIN
	INSERT INTO LogBoleto (id, descrica, data, hora) VALUES
	(
		(SELECT MAX(id) + 1 FROM LogBoleto),
		'A data de vencimento foi alterada de ' || 
		to_char(OLD.dataVencimento, 'dd/MM/yyyy')
		|| ' para ' || to_char(NEW.dataVencimento, 'dd/MM/yyyy'), 
		current_date, current_time)
	);
	RETURN NEW;
END;
$$

CREATE TRIGGER logAlteracaoBoleto AFTER UPDATE ON Boleto
FOR EACH ROW EXECUTE FUNCTION salvarLog();

--3
CREATE FUNCTION naoDeletar()
RETURNS TRIGGER
LANGUAGUE plpgsql
AS $$
BEGIN
	INSERT INTO Produto VALUES (OLD.codigo, OLD.descricao,
		OLD.quantidade, OLD.preco);
	RETURN OLD;
END;
$$

CREATE TRIGGER impedirDelecao AFTER DELETE ON Produto
FOR EACH ROW EXECUTE FUNCTION naoDeletar();

--4
CREATE FUNCTION naoAlterar()
RETURNS TRIGGER
LANGUAGUE plpgsql
AS $$
BEGIN
	UPDATE Cliente
	SET nome = OLD.nome, cpf = OLD.cpf, 
	celular = OLD.celular, codigo = OLD.codigo
	WHERE codigo = NEW.codigo;
	RETURN OLD; 
END;
$$

CREATE TRIGGER impedirAlteracao AFTER UPDATE ON Cliente
FOR EACH ROW EXECUTE FUNCTION naoAlterar();

UPDATE Cliente
	SET nome = 'Gabriel', cpf = OLD.cpf, 
	celular = OLD.celular, codigo = 10
	WHERE codigo = 10;

--5
CREATE FUNCTION atualizarMinutos()
RETURNS TRIGGER
LANGUAGUE plpgsql
AS $$
BEGIN
	UPDATE Usuario
	SET minutosAssistidos = minutosAssistidos + 
	(SELECT duracao FROM Filme WHERE codigo = NEW.codigoFilme)
	WHERE cpf = NEW.cpfUsuario;
END;
$$

CREATE TRIGGER atualizarMinutosAssistidos
AFTER INSERT ON FilmeUsuario
FOR EACH ROW EXECUTE FUNCTION atualizarMinutos();




--6
CREATE FUNCTION atualizarFilmes()
RETURNS TRIGGER
LANGUAGUE plpgsql
AS $$
BEGIN
	UPDATE Ator
	SET numeroFilmes = (SELECT COUNT(*) FROM AtorFilme 
		WHERE codigoAtor = NEW.codigoAtor)
	WHERE codigo = NEW.codigoAtor;
END;
$$

CREATE TRIGGER atualizarFilmeAtor
AFTER INSERT, UPDATE ON AtorFilme
FOR EACH ROW EXECUTE FUNCTION atualizarFilmes();

CREATE FUNCTION atualizarFilmes2()
RETURNS TRIGGER
LANGUAGUE plpgsql
AS $$
BEGIN
	UPDATE Ator
	SET numeroFilmes = (SELECT COUNT(*) FROM AtorFilme 
		WHERE codigoAtor = OLD.codigoAtor)
	WHERE codigo = OLD.codigoAtor;
END;
$$

CREATE TRIGGER atualizarFilmeAtor2
AFTER DELETE ON AtorFilme
FOR EACH ROW EXECUTE FUNCTION atualizarFilmes();
