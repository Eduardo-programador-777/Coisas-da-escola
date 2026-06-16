
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
select * from vendedor;
--exibir o nome dos vendedores e suas comissões.
--mostrar os vendedores com seu nome e salário do menor salário cadastrado para o maior salário cadastrado.
--criar um relatório que mostre os pedidos cadastrados na tabela pedido.
--selecionar os produtos dos pedidos já realizados por ordem de pedido e por código do produto.
select * from item_pedido
--mostrar pedido por ordem de vendedor
select * from pedido
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

--Exercícios com operadores de banco de dados
1. Exibir o nome e cnpj dos clientes com código maior que 500.
2. Mostrar o nome e salário dos vendedores de comissão "A" ou "B".
3. Quais produtos (descrição) possuem unidade de medida diferente de "KG"
4. Quais pedidos são do cliente de código 410 e foram realizados pelo vendedor de código 209?
5. Quais foram os pedidos com prazo de entrega igual a 20, dos vendedores de código 101 e 11?
6. Em quais pedidos existem os produtos 77, 53 e 31?
7. Mostre os clientes com código entre 200 e 800 e que sejam do estado de São Paulo.
8. Indique os produtos do pedido 148.
9. Crie um relatório que mostre os clientes que estão no intervalo de código entre 130 e 390 (inclusive). Ordene pelo código do cliente de forma crescente.
10.  Crie uma lista com os nomes dos clientes que estão no intervalo de "B" até "R" (inclusive).
11.  Exibir o nome do cliente, o estado onde ele mora, desde que morem em: SP, MG e RJ.
12.  Liste a descrição e o preço dos produtos de unidade: 'Bar', 'L' e 'G'.
13.  Mostre os dados dos vendedores de código: 101, 213 e 310.
14.  Mostre os clientes (código e nome) de código: 20 até 180 e 250 até 720.
15.  Mostre os dados dos pedidos que não tenham os produtos: 25, 53 e 78 e possuam os produtos: 77 e 13.
16.  Mostre os clientes (código e nome) de código: 20 até 350 e que morem nos estados de: 'Sp, Mg e Rj'.
17. Nome do cliente terminando com "a" sem preocupação com a quantidade de caracteres.
18. Nome do cliente começando com "a" sem preocupação com a quantidade de caracteres.
19.  Nome do cliente contendo a letra "e" em qualquer posição.
20.  Nome do cliente com a letra "o" na segunda posição.
21.  Nome do cliente com 5 caracteres.
22.  Quais vendedores não possuem a letra "a" em seu nome?
23.  Quais vendedores possuem duas letras "o" em seu nome?
24.  Quais vendedores possuem a penúltima letra do nome a letra "i"?
25. Exibe o nome dos clientes que possuam as letras “o” e “e” em seu nome.
