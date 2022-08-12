 Select Nome, Endereco 
 from cliente 
 order by nome asc

 Select * 
 from cliente 
 order by nome asc

 Select Nome, Endereco 
 from cliente 
 where Cod_cidade = 1 order by nome asc

 Select Descricao, Valor_Unitario, Unidade 
 from produto 
 order by Unidade desc

 Select * 
 from nota_fiscal 
 where data  '2000-04-01' BETWEEN '2000-04-15'

 Select count(*) 
 from nota_fiscal 
 where data '2000-04-01'BETWEEN '2000-04-15'

 Select Nome 
 from cliente 
 where Cod_cidade = 3 and Cod_cidade = 7 
 order by nome asc

 Select Nome 
 from cliente 
 where Cod_cidade in (1,3,7) 
 order by nome asc

 Select * 
 from produto 
 where Valor_Unitario >= 2 and Valor_Unitario <= 20

 Select *, sum(Valor*Qde) as total 
 from itens_pedido 
 order by Num_nota, Cod_produto

 Select Nome, Endereco 
 from cliente 
 where Nome LIKE '%o%'

 Select Nome, Endereco 
 from cliente 
 where Nome LIKE '%dol%' and Cod_cidade = 1 
 order by Nome

 Select Nome, Endereco 
 from cliente 
 where not Nome LIKE '%dol%' 
 order by Nome

 Select Nome, Endereco 
 from cliente 
 where Nome LIKE 'f%' 

 Select * 
 from produto 
 where Descricao LIKE '%r' and Unidade = 'Kg' 

 Select count(*) 
 from cliente

 Select count(*) 
 from cliente 
 where Cod_cidade = 1

 Select count(*) 
 from nota_fiscal 
 where data  '2000-08-01' BETWEEN'2000-12-31'

 Select sum(Valor) as soma_valor 
 from itens_pedido 

 Select sum(Valor) as soma_valor, count(*) as total, sum(Qde*Valor) as soma_multi, avg(Qde) as media_qtd 
 from itens_pedido 

 Select sum(Valor) as soma_valor, count(*) as total, sum(Qde*Valor) as soma_multi, avg(Qde) as media_qtd 
 from itens_pedido where Qde > 1