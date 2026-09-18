
/*Tabela clientes
id_cliente	nome	cidade		idade
1		Carlos	São Paulo	35
2		Maria	Rio de Janeiro	28
3		João	Belo Horizonte	42
Tabela pedidos
id_pedido	id_cliente	data_pedido	valor
1		1		2026-09-01	1500.00
2		1		2026-09-03	500.00
3		2		2026-09-05	800.00
Tabela produtos
id_produto	nome		preco	id_categoria	estoque
1		Notebook	3500.00		1	10
2		Smartphone	2500.00		1	15
3		Cadeira		700.00		2	20
Tabela categorias
 
id_categoria	nome_categoria
1		Eletrônicos
2		Móveis
3		Livros
 
1. Clientes que possuem pedidos. 
Utilizando uma subquery, liste os nomes dos clientes que possuem pelo menos um pedido cadastrado.
Resultado esperado: Carlos e Maria.

2. Clientes que não possuem pedidos
Utilizando uma subquery, liste os nomes dos clientes que nunca realizaram um pedido.
Resultado esperado: João.

3. Pedidos acima da média
Liste os pedidos cujo valor seja maior que a média de todos os pedidos cadastrados.
Apresente:
ID do pedido
ID do cliente
Valor

4. Clientes com pedido acima de R$ 1.000
Liste os nomes dos clientes que possuem pelo menos um pedido com valor superior a R$ 1.000,00.
Resultado esperado: Carlos.

5. Produto mais caro
Utilizando uma subquery, liste o nome e o preço do produto que possui o maior preço cadastrado.
Resultado esperado: Notebook — R$ 3.500,00.

6. Produtos acima da média
Liste os produtos cujo preço seja maior que a média de preços de todos os produtos.
Apresente:
Nome do produto
Preço

7. Produtos da categoria Eletrônicos
Utilizando uma subquery, liste os produtos que pertencem à categoria Eletrônicos.
Resultado esperado:
Notebook
Smartphone
Regra: não utilize JOIN.

8. Total gasto por Carlos
Utilizando uma subquery, descubra o valor total gasto por Carlos em seus pedidos.
O resultado deve apresentar apenas o valor total.
Resultado esperado: R$ 2.000,00.

9. Clientes que gastaram mais que Maria
Utilizando subquery, liste os clientes cujo total gasto em pedidos seja maior que o total gasto por Maria.
Apresente:
Nome do cliente
Total gasto
Resultado esperado: Carlos — R$ 2.000,00.

10. Cliente que fez o maior pedido
Utilizando subqueries e sem JOIN, descubra o nome do cliente responsável pelo pedido de maior valor.
Resultado esperado: Carlos.

*/

-- 1. Clientes que possuem pedidos
SELECT nome FROM clientes WHERE id_cliente IN (SELECT DISTINCT id_cliente FROM pedidos);

-- 2. Clientes que não possuem pedidos
SELECT nome FROM clientes WHERE id_cliente NOT IN (SELECT id_cliente FROM pedidos);

-- 3. Pedidos acima da média
SELECT id_pedido, id_cliente, valor FROM pedidos WHERE valor > (SELECT AVG(valor) FROM pedidos);

-- 4. Clientes com pedido acima de R$ 1.000
SELECT nome FROM clientes WHERE id_cliente IN (SELECT id_cliente FROM pedidos WHERE valor > 1000.00);

-- 5. Produto mais caro
SELECT nome, preco FROM produtos WHERE preco = (SELECT MAX(preco) FROM produtos);

-- 6. Produtos acima da média
SELECT nome, preco FROM produtos WHERE preco > (SELECT AVG(preco) FROM produtos);

-- 7. Produtos da categoria Eletrônicos
SELECT nome FROM produtos WHERE id_categoria = (SELECT id_categoria FROM categorias WHERE nome_categoria = 'Eletrônicos');

-- 8. Total gasto por Carlos
SELECT SUM(valor) AS total_gasto FROM pedidos WHERE id_cliente = (SELECT id_cliente FROM clientes WHERE nome = 'Carlos');

-- 9. Clientes que gastaram mais que Maria
SELECT nome, (SELECT SUM(valor) FROM pedidos WHERE id_cliente = c.id_cliente) AS total_gasto FROM clientes c WHERE (SELECT SUM(valor) FROM pedidos WHERE id_cliente = c.id_cliente) > (SELECT SUM(valor) FROM pedidos WHERE id_cliente = (SELECT id_cliente FROM clientes WHERE nome = 'Maria'));

-- 10. Cliente que fez o maior pedido
SELECT nome FROM clientes WHERE id_cliente = (SELECT id_cliente FROM pedidos WHERE valor = (SELECT MAX(valor) FROM pedidos));