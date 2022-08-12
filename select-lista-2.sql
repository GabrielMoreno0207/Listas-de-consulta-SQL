
--Exercicio 1----------------------------------------------------------------------------------------------------------------------------------------
select cliente.Nome, nota_fiscal.Num_nota, nota_fiscal.Data 
	from cliente, nota_fiscal 
	where cliente.Cod_cli = nota_fiscal.Cod_cli	
	order by cliente.Nome, nota_fiscal.Data;

select cliente.Nome, nota_fiscal.Num_nota, nota_fiscal.Data 
	from cliente inner join nota_fiscal on cliente.Cod_cli = nota_fiscal.Cod_cli 
	order by cliente.Nome, nota_fiscal.Data;
-----------------------------------------------------------------------------------------------------------------------------------------------------

--Exercicio 2----------------------------------------------------------------------------------------------------------------------------------------
select cliente.Nome, cliente.Endereco, cidades.Nome, cidades.uf 
	from cliente, cidades
	where (cliente.Cod_cidade = cidades.Cod_cidade) and cidades.uf = 'SP';

select cliente.Nome, cliente.Endereco, cidades.Nome, cidades.uf	
	from cliente inner join cidades on (cliente.Cod_cidade = cidades.Cod_cidade) and cidades.uf = 'SP';
-----------------------------------------------------------------------------------------------------------------------------------------------------

--Exercicio 3----------------------------------------------------------------------------------------------------------------------------------------
select produto.Descricao, produto.Unidade, nota_fiscal.Num_nota, itens_pedido.Qde, itens_pedido.Valor,
(itens_pedido.Qde * itens_pedido.Valor) as Valor_Total 
	from produto, nota_fiscal, itens_pedido
	where (nota_fiscal.Num_nota = itens_pedido.Num_nota) and (itens_pedido.Cod_produto = produto.Cod_produto) 
	order by produto.Descricao;

select produto.Descricao, produto.Unidade, nota_fiscal.Num_nota, itens_pedido.Qde, itens_pedido.Valor, (itens_pedido.Qde * itens_pedido.Valor) as Valor_Total 
	from nota_fiscal inner join itens_pedido on (nota_fiscal.Num_nota = itens_pedido.Num_nota)
	inner join produto on (itens_pedido.Cod_produto = produto.Cod_produto) 
	order by produto.Descricao;
-----------------------------------------------------------------------------------------------------------------------------------------------------

--Exercicio 4----------------------------------------------------------------------------------------------------------------------------------------
select produto.Descricao, produto.Unidade, nota_fiscal.Num_nota, itens_pedido.Qde, itens_pedido.Valor, (itens_pedido.Qde * itens_pedido.Valor) as Valor_Total, nota_fiscal.Data
	from produto, nota_fiscal, itens_pedido
	where ((nota_fiscal.Num_nota = itens_pedido.Num_nota) and (itens_pedido.Cod_produto = produto.Cod_produto)) and (nota_fiscal.Data between '01/04/2000' and '15/04/2000')
	order by produto.Descricao;

select produto.Descricao, produto.Unidade, nota_fiscal.Num_nota, itens_pedido.Qde, itens_pedido.Valor, (itens_pedido.Qde * itens_pedido.Valor) as Valor_Total 
	from nota_fiscal inner join itens_pedido on (nota_fiscal.Num_nota = itens_pedido.Num_nota)
	inner join produto on (itens_pedido.Cod_produto = produto.Cod_produto) and (nota_fiscal.Data between '01/04/2000' and '15/04/2000') order by produto.Descricao;
-----------------------------------------------------------------------------------------------------------------------------------------------------

--Exercicio 5----------------------------------------------------------------------------------------------------------------------------------------
select cliente.Nome, cidades.Nome, nota_fiscal.Num_nota, nota_fiscal.Data
	from cliente, cidades, nota_fiscal
	where (cliente.Cod_cidade = cidades.Cod_cidade) and (cliente.Cod_cli = nota_fiscal.Cod_cli) 
	order by nota_fiscal.Data, nota_fiscal.Num_nota, cliente.Nome;

select cliente.Nome, cidades.Nome, nota_fiscal.Num_nota, nota_fiscal.Data
	from cliente inner join cidades on (cliente.Cod_cidade = cidades.Cod_cidade)
	inner join nota_fiscal on (cliente.Cod_cli = nota_fiscal.Cod_cli) 
	order by nota_fiscal.Data, nota_fiscal.Num_nota, cliente.Nome;
-----------------------------------------------------------------------------------------------------------------------------------------------------

--Exercicio 6----------------------------------------------------------------------------------------------------------------------------------------
select cliente.Nome, cidades.Nome, nota_fiscal.Num_nota, nota_fiscal.Data
	from cliente, cidades, nota_fiscal
	where (cliente.Cod_cidade = cidades.Cod_cidade) and (cliente.Cod_cli = nota_fiscal.Cod_cli) and ((cidades.uf = 'SP') and (nota_fiscal.Data > '01/08/2000'))
	order by nota_fiscal.Data, nota_fiscal.Num_nota, cliente.Nome;

select cliente.Nome, cidades.Nome, nota_fiscal.Num_nota, nota_fiscal.Data
	from cliente inner join cidades on (cliente.Cod_cidade = cidades.Cod_cidade)
	inner join nota_fiscal on (cliente.Cod_cli = nota_fiscal.Cod_cli) and ((cidades.uf = 'SP') and (nota_fiscal.Data > '01/08/2000'))
	order by nota_fiscal.Data, nota_fiscal.Num_nota, cliente.Nome;
-----------------------------------------------------------------------------------------------------------------------------------------------------

--Exercicio 7----------------------------------------------------------------------------------------------------------------------------------------
select produto.Descricao, itens_pedido.Qde 
	from produto left outer join itens_pedido on produto.Cod_produto = itens_pedido.Cod_produto;

select produto.Descricao, itens_pedido.Qde 
	from produto right outer join itens_pedido on produto.Cod_produto = itens_pedido.Cod_produto;
-----------------------------------------------------------------------------------------------------------------------------------------------------

--Exercicio 8----------------------------------------------------------------------------------------------------------------------------------------
select cliente.Nome, nota_fiscal.Num_nota 
	from cliente left outer join nota_fiscal on cliente.Cod_cli = nota_fiscal.Cod_cli;

select cliente.Nome, nota_fiscal.Num_nota 
	from cliente right outer join nota_fiscal on cliente.Cod_cli = nota_fiscal.Cod_cli;
-----------------------------------------------------------------------------------------------------------------------------------------------------

--Exercicio 9----------------------------------------------------------------------------------------------------------------------------------------
select cidades.Nome as Cidade, cliente.Nome as Cliente, nota_fiscal.Num_nota, nota_fiscal.Data, 
produto.Descricao, itens_pedido.Qde, itens_pedido.Valor, (itens_pedido.Qde * itens_pedido.Valor) as Valor_Total 
	from cidades, cliente, nota_fiscal, produto, itens_pedido
	where (cliente.Cod_cidade = cidades.Cod_cidade) and (cliente.Cod_cli = nota_fiscal.Cod_cli) and (produto.Cod_produto = itens_pedido.Cod_produto);

select cidades.Nome as Cidade, cliente.Nome as Cliente, nota_fiscal.Num_nota, nota_fiscal.Data, 
produto.Descricao, itens_pedido.Qde, itens_pedido.Valor, (itens_pedido.Qde * itens_pedido.Valor) as Valor_Total
	from cliente inner join cidades on (cliente.Cod_cidade = cidades.Cod_cidade)
	inner join nota_fiscal on (cliente.Cod_cli = nota_fiscal.Cod_cli) 
	inner join itens_pedido on (nota_fiscal.Num_nota = itens_pedido.Num_nota)
	inner join produto on (itens_pedido.Cod_produto = produto.Cod_produto);
-----------------------------------------------------------------------------------------------------------------------------------------------------

