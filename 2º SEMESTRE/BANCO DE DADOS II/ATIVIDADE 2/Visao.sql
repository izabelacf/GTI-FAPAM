--1- a)
create view filmes_locadora
as select filme.titulo, filmecategoria.nomecategoria
from filme
join filmecategoria
on filmecategoria.codcategoria=filme.codcategoria

--b)
select count (nomecategoria)
from filmes_locadora
where nomecategoria= 'Comedia'

--2- a) create view cliente_filme as select filme.titulo, cliente.nome
from cliente
join aluguel
on cliente.codCliente= aluguel.codCliente
join copia
on copia.codCopia=aluguel.codCopia
join filme
on copia.codFilme = filme.codFilme

--b) 
select titulo
From cliente_filme
where nome= 'Fernando'

--c) 
select nome
From cliente_filme
where titulo= 'Matrix'

--3- a) 
CREATE VIEW areas_views
AS SELECT area_municipio, area_estado
FROM tamanho_area_cidades_uf_view

--b) 
SELECT * tamanho_area_cidades_uf_view
SELECT * areas_views

--c) 
drop view areas_views

--4 
Falso. O correto é:
CREATE VIEW Eye AS SELECT A1, A2 FROM Pen
Eye nome da view e Pen da tabela

--5  
create view cliente_pedido as select cliente.nome_cli, pedido.num_pedido
from cliente
join pedido
on cliente.num_cliente=pedido.num_cliente
create view funcionario_pedido as select funcionario.id_funcionario, pedido.num_pedido
from funcionario
join pedido
on funcionario.id_funcionario=pedido.id_funcionario
