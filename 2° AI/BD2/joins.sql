-- Join
-- Junção de tabelas (JOIN): criar relatórios mais completos, com uso de mais de um tabela

-- SINTAXE
-- SELECT COLUNAS FROM TABELA1 TIPO_JUNCAO TABELA2 ON PK = FK

-- Exemplo 1: criar um relatório que exiba os pedido com o nome do cliente.
select * from pedido;
select * from cliente;
select * from vendedor;
select p.num_pedido, c.nome_clie from pedido p
inner join cliente c on c.cod_clie = p.cod_clie
order by c.nome_clie;

select p.num_pedido, c.nome_clie, v.nome_ven from pedido p
inner join cliente c on c.cod_clie = p.cod_clie
inner join vendedor v on v.cod_ven = p.cod_ven
order by c.nome_clie;

select pedido.num_pedido, cliente.nome_clie, vendedor.nome_ven from pedido 
inner join cliente  on cliente.cod_clie = pedido.cod_clie
inner join vendedor  on vendedor.cod_ven = pedido.cod_ven
order by cliente.nome_clie;
select * from item_pedido;
select * from produto;

-- Mostre o pedido (número) e a descrição dos produtos que ele tem.
select itp.num_pedido, p.descricao from item_pedido itp
inner join produto p on itp.cod_prod = p.cod_prod
order by itp.num_pedido;

-- Crie um relatório que mostre os produtos comprados por cada cliente.
select itp.num_pedido, prod.descricao, c.nome_clie from item_pedido itp
inner join produto prod on itp.cod_prod = prod.cod_prod
inner join pedido p on p.num_pedido = itp.num_pedido
inner join cliente c on c.cod_clie = p.cod_clie
order by c.cod_clie;

-- Crie um relatório que mostre os produtos vendidos por cada vendedor.
select p.num_pedido, prod.descricao, v.nome_ven from item_pedido itp
inner join pedido p on itp.num_pedido = p.num_pedido
inner join produto prod on prod.cod_prod = itp.cod_prod
inner join vendedor v on v.cod_ven = p.cod_ven
order by v.cod_ven;

-- Qual cliente comprou chocolate?
select 	p.num_pedido, prod.descricao, c.nome_clie from item_pedido itp
inner join pedido p on itp.num_pedido = p.num_pedido
inner join produto prod on prod.cod_prod = itp.cod_prod
inner join cliente c on c.cod_clie = p.cod_clie
where lower(prod.descricao) = 'chocolate';

-- Qual vendedor vendeu mais chocolate?
select TOP 1 
v.nome_ven, sum(itp.quant) as total from item_pedido itp
inner join pedido p on itp.num_pedido = p.num_pedido
inner join produto prod on prod.cod_prod = itp.cod_prod
inner join vendedor v on v.cod_ven = p.cod_ven
where lower(prod.descricao) = 'chocolate' 
group by v.cod_ven, v.nome_ven
order by total desc
