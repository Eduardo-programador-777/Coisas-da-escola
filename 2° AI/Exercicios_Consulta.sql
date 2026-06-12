
/*
Sintaxe: Select… >> seleção das colunas
	      From…… >> origem dos dados, tabela(s)
	      Where……… >> filtro para saída de dados
	      Order by….. >> ordenação, classificação

Exemplificando relatórios
*/

-- Exibindo o conteúdo de uma tabela - todas as colunas

select * from cliente
select * from vendedor
select * from pedido
select * from item_pedido

-- Exibindo o conteúdo de uma tabela - selecionando as colunas
select nome_clie, cidade from cliente;
select nome_ven, salario_fixo from vendedor;

Apelidar as colunas
select nome_clie "Nome do cliente", cidade from cliente;


Classificando relatórios

Sintaxe: order by nome_col ou posição por número

Asc - crescente
Desc - decrescente

select * from cliente order by nome_clie asc;
select * from vendedor order by nome_ven desc;
select * from vendedor order by 3 desc;
select cidade, nome_clie from cliente order by 1, 2 ;

-- Condições e filtros

-- Operadores - aritméticos + - * / ()
select nome_ven, salario_fixo "Salário atual", salario_fixo + 250 "Salário reajustado"
from vendedor

-- Operadores Relacionais > >= < <= = <> ou !=

select * from vendedor where salario_fixo < 1500;

-- Operadores lógicos and or not
select * from vendedor where salario_fixo >= 1500
            and salario_fixo < 3000;

--Exercício

--Construir uma instrução (query) em sql para:

--exibir o conteúdo da tabela vendedor.
--exibir o nome dos vendedores e suas comissões.
--mostrar os vendedores com seu nome e salário do menor salário cadastrado para o maior salário cadastrado.
--criar um relatório que mostre os pedidos cadastrados na tabela pedido.
--selecionar os produtos dos pedidos já realizados por ordem de pedido e por código do produto.
--mostrar pedido por ordem de vendedor
--mostrar os produtos com descrição e preço.
--exibir o nome dos vendedores e sua comissão em ordem decrescente de comissão.
--Exibir uma projeção de salário dos vendedores com um acréscimo de 15% e um desconto de 5%.
--Montar um relatório que exiba o novo salário do vendedores de classe C com bônus de R$150,00
--Criar um relatório que mostre os clientes que moram no estado de São Paulo.
--Exibir os clientes que não moram no estado de São Paulo
--Quem são os vendedores de comissão B? Exiba seu nome e comissão em ordem crescente por nome.
--Mostre os produtos com preço superior a R$0,70.
--Quais são os pedidos do vendedor de código 111?
--Liste os pedidos de código 98 a 119.
--Exibir os clientes que não moram no estado de São Paulo
--Exibir o nome dos clientes e o estado onde moram, desde que morem em SP e RJ.
