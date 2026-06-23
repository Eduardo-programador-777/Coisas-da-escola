/* COMPLEMENTO - 10 UPDATES E 10 SELECTS PARA CADA TABELA */


/* ===== 10 UPDATES - Cliente ===== */
UPDATE Cliente SET senha='senha1' WHERE id_cliente=1;
UPDATE Cliente SET senha='senha2' WHERE id_cliente=2;
UPDATE Cliente SET senha='senha3' WHERE id_cliente=3;
UPDATE Cliente SET senha='senha4' WHERE id_cliente=4;
UPDATE Cliente SET senha='senha5' WHERE id_cliente=5;
UPDATE Cliente SET senha='senha6' WHERE id_cliente=6;
UPDATE Cliente SET senha='senha7' WHERE id_cliente=7;
UPDATE Cliente SET senha='senha8' WHERE id_cliente=8;
UPDATE Cliente SET senha='senha9' WHERE id_cliente=9;
UPDATE Cliente SET senha='senha10' WHERE id_cliente=10;

/* ===== 10 SELECTS - Cliente ===== */
SELECT * FROM Cliente;
SELECT TOP 5 * FROM Cliente;
SELECT COUNT(*) AS Total FROM Cliente;
SELECT * FROM Cliente ORDER BY id_cliente;
SELECT * FROM Cliente WHERE id_cliente >= 1;
SELECT * FROM Cliente WHERE id_cliente <= 5;
SELECT * FROM Cliente WHERE id_cliente <> 1;
SELECT DISTINCT id_cliente FROM Cliente;
SELECT MAX(id_cliente) AS MaiorID FROM Cliente;
SELECT MIN(id_cliente) AS MenorID FROM Cliente;

/* ===== 10 UPDATES - Categoria ===== */
UPDATE Categoria SET nome='Categoria1' WHERE id_categoria=1;
UPDATE Categoria SET nome='Categoria2' WHERE id_categoria=2;
UPDATE Categoria SET nome='Categoria3' WHERE id_categoria=3;
UPDATE Categoria SET nome='Categoria4' WHERE id_categoria=4;
UPDATE Categoria SET nome='Categoria5' WHERE id_categoria=5;
UPDATE Categoria SET nome='Categoria6' WHERE id_categoria=6;
UPDATE Categoria SET nome='Categoria7' WHERE id_categoria=7;
UPDATE Categoria SET nome='Categoria8' WHERE id_categoria=8;
UPDATE Categoria SET nome='Categoria9' WHERE id_categoria=9;
UPDATE Categoria SET nome='Categoria10' WHERE id_categoria=10;

/* ===== 10 SELECTS - Categoria ===== */
SELECT * FROM Categoria;
SELECT TOP 5 * FROM Categoria;
SELECT COUNT(*) AS Total FROM Categoria;
SELECT * FROM Categoria ORDER BY id_categoria;
SELECT * FROM Categoria WHERE id_categoria >= 1;
SELECT * FROM Categoria WHERE id_categoria <= 5;
SELECT * FROM Categoria WHERE id_categoria <> 1;
SELECT DISTINCT id_categoria FROM Categoria;
SELECT MAX(id_categoria) AS MaiorID FROM Categoria;
SELECT MIN(id_categoria) AS MenorID FROM Categoria;

/* ===== 10 UPDATES - Fornecedor ===== */
UPDATE Fornecedor SET contato='contato1@email.com' WHERE id_fornecedor=1;
UPDATE Fornecedor SET contato='contato2@email.com' WHERE id_fornecedor=2;
UPDATE Fornecedor SET contato='contato3@email.com' WHERE id_fornecedor=3;
UPDATE Fornecedor SET contato='contato4@email.com' WHERE id_fornecedor=4;
UPDATE Fornecedor SET contato='contato5@email.com' WHERE id_fornecedor=5;
UPDATE Fornecedor SET contato='contato6@email.com' WHERE id_fornecedor=6;
UPDATE Fornecedor SET contato='contato7@email.com' WHERE id_fornecedor=7;
UPDATE Fornecedor SET contato='contato8@email.com' WHERE id_fornecedor=8;
UPDATE Fornecedor SET contato='contato9@email.com' WHERE id_fornecedor=9;
UPDATE Fornecedor SET contato='contato10@email.com' WHERE id_fornecedor=10;

/* ===== 10 SELECTS - Fornecedor ===== */
SELECT * FROM Fornecedor;
SELECT TOP 5 * FROM Fornecedor;
SELECT COUNT(*) AS Total FROM Fornecedor;
SELECT * FROM Fornecedor ORDER BY id_fornecedor;
SELECT * FROM Fornecedor WHERE id_fornecedor >= 1;
SELECT * FROM Fornecedor WHERE id_fornecedor <= 5;
SELECT * FROM Fornecedor WHERE id_fornecedor <> 1;
SELECT DISTINCT id_fornecedor FROM Fornecedor;
SELECT MAX(id_fornecedor) AS MaiorID FROM Fornecedor;
SELECT MIN(id_fornecedor) AS MenorID FROM Fornecedor;

/* ===== 10 UPDATES - Jogo ===== */
UPDATE Jogo SET preco=51 WHERE id_jogo=1;
UPDATE Jogo SET preco=52 WHERE id_jogo=2;
UPDATE Jogo SET preco=53 WHERE id_jogo=3;
UPDATE Jogo SET preco=54 WHERE id_jogo=4;
UPDATE Jogo SET preco=55 WHERE id_jogo=5;
UPDATE Jogo SET preco=56 WHERE id_jogo=6;
UPDATE Jogo SET preco=57 WHERE id_jogo=7;
UPDATE Jogo SET preco=58 WHERE id_jogo=8;
UPDATE Jogo SET preco=59 WHERE id_jogo=9;
UPDATE Jogo SET preco=60 WHERE id_jogo=10;

/* ===== 10 SELECTS - Jogo ===== */
SELECT * FROM Jogo;
SELECT TOP 5 * FROM Jogo;
SELECT COUNT(*) AS Total FROM Jogo;
SELECT * FROM Jogo ORDER BY id_jogo;
SELECT * FROM Jogo WHERE id_jogo >= 1;
SELECT * FROM Jogo WHERE id_jogo <= 5;
SELECT * FROM Jogo WHERE id_jogo <> 1;
SELECT DISTINCT id_jogo FROM Jogo;
SELECT MAX(id_jogo) AS MaiorID FROM Jogo;
SELECT MIN(id_jogo) AS MenorID FROM Jogo;

/* ===== 10 UPDATES - Pedido ===== */
UPDATE Pedido SET status='Status1' WHERE id_pedido=1;
UPDATE Pedido SET status='Status2' WHERE id_pedido=2;
UPDATE Pedido SET status='Status3' WHERE id_pedido=3;
UPDATE Pedido SET status='Status4' WHERE id_pedido=4;
UPDATE Pedido SET status='Status5' WHERE id_pedido=5;
UPDATE Pedido SET status='Status6' WHERE id_pedido=6;
UPDATE Pedido SET status='Status7' WHERE id_pedido=7;
UPDATE Pedido SET status='Status8' WHERE id_pedido=8;
UPDATE Pedido SET status='Status9' WHERE id_pedido=9;
UPDATE Pedido SET status='Status10' WHERE id_pedido=10;

/* ===== 10 SELECTS - Pedido ===== */
SELECT * FROM Pedido;
SELECT TOP 5 * FROM Pedido;
SELECT COUNT(*) AS Total FROM Pedido;
SELECT * FROM Pedido ORDER BY id_pedido;
SELECT * FROM Pedido WHERE id_pedido >= 1;
SELECT * FROM Pedido WHERE id_pedido <= 5;
SELECT * FROM Pedido WHERE id_pedido <> 1;
SELECT DISTINCT id_pedido FROM Pedido;
SELECT MAX(id_pedido) AS MaiorID FROM Pedido;
SELECT MIN(id_pedido) AS MenorID FROM Pedido;

/* ===== 10 UPDATES - Item_Pedido ===== */
UPDATE Item_Pedido SET quantidade=1 WHERE id_item=1;
UPDATE Item_Pedido SET quantidade=2 WHERE id_item=2;
UPDATE Item_Pedido SET quantidade=3 WHERE id_item=3;
UPDATE Item_Pedido SET quantidade=4 WHERE id_item=4;
UPDATE Item_Pedido SET quantidade=5 WHERE id_item=5;
UPDATE Item_Pedido SET quantidade=6 WHERE id_item=6;
UPDATE Item_Pedido SET quantidade=7 WHERE id_item=7;
UPDATE Item_Pedido SET quantidade=8 WHERE id_item=8;
UPDATE Item_Pedido SET quantidade=9 WHERE id_item=9;
UPDATE Item_Pedido SET quantidade=10 WHERE id_item=10;

/* ===== 10 SELECTS - Item_Pedido ===== */
SELECT * FROM Item_Pedido;
SELECT TOP 5 * FROM Item_Pedido;
SELECT COUNT(*) AS Total FROM Item_Pedido;
SELECT * FROM Item_Pedido ORDER BY id_item;
SELECT * FROM Item_Pedido WHERE id_item >= 1;
SELECT * FROM Item_Pedido WHERE id_item <= 5;
SELECT * FROM Item_Pedido WHERE id_item <> 1;
SELECT DISTINCT id_item FROM Item_Pedido;
SELECT MAX(id_item) AS MaiorID FROM Item_Pedido;
SELECT MIN(id_item) AS MenorID FROM Item_Pedido;

/* ===== 10 UPDATES - Pagamento ===== */
UPDATE Pagamento SET valor=101 WHERE id_pagamento=1;
UPDATE Pagamento SET valor=102 WHERE id_pagamento=2;
UPDATE Pagamento SET valor=103 WHERE id_pagamento=3;
UPDATE Pagamento SET valor=104 WHERE id_pagamento=4;
UPDATE Pagamento SET valor=105 WHERE id_pagamento=5;
UPDATE Pagamento SET valor=106 WHERE id_pagamento=6;
UPDATE Pagamento SET valor=107 WHERE id_pagamento=7;
UPDATE Pagamento SET valor=108 WHERE id_pagamento=8;
UPDATE Pagamento SET valor=109 WHERE id_pagamento=9;
UPDATE Pagamento SET valor=110 WHERE id_pagamento=10;

/* ===== 10 SELECTS - Pagamento ===== */
SELECT * FROM Pagamento;
SELECT TOP 5 * FROM Pagamento;
SELECT COUNT(*) AS Total FROM Pagamento;
SELECT * FROM Pagamento ORDER BY id_pagamento;
SELECT * FROM Pagamento WHERE id_pagamento >= 1;
SELECT * FROM Pagamento WHERE id_pagamento <= 5;
SELECT * FROM Pagamento WHERE id_pagamento <> 1;
SELECT DISTINCT id_pagamento FROM Pagamento;
SELECT MAX(id_pagamento) AS MaiorID FROM Pagamento;
SELECT MIN(id_pagamento) AS MenorID FROM Pagamento;

/* ===== 10 UPDATES - Avaliacao ===== */
UPDATE Avaliacao SET nota=5 WHERE id_avaliacao=1;
UPDATE Avaliacao SET nota=5 WHERE id_avaliacao=2;
UPDATE Avaliacao SET nota=5 WHERE id_avaliacao=3;
UPDATE Avaliacao SET nota=5 WHERE id_avaliacao=4;
UPDATE Avaliacao SET nota=5 WHERE id_avaliacao=5;
UPDATE Avaliacao SET nota=5 WHERE id_avaliacao=6;
UPDATE Avaliacao SET nota=5 WHERE id_avaliacao=7;
UPDATE Avaliacao SET nota=5 WHERE id_avaliacao=8;
UPDATE Avaliacao SET nota=5 WHERE id_avaliacao=9;
UPDATE Avaliacao SET nota=5 WHERE id_avaliacao=10;

/* ===== 10 SELECTS - Avaliacao ===== */
SELECT * FROM Avaliacao;
SELECT TOP 5 * FROM Avaliacao;
SELECT COUNT(*) AS Total FROM Avaliacao;
SELECT * FROM Avaliacao ORDER BY id_avaliacao;
SELECT * FROM Avaliacao WHERE id_avaliacao >= 1;
SELECT * FROM Avaliacao WHERE id_avaliacao <= 5;
SELECT * FROM Avaliacao WHERE id_avaliacao <> 1;
SELECT DISTINCT id_avaliacao FROM Avaliacao;
SELECT MAX(id_avaliacao) AS MaiorID FROM Avaliacao;
SELECT MIN(id_avaliacao) AS MenorID FROM Avaliacao;

/* ===== 10 UPDATES - Suporte ===== */
UPDATE Suporte SET status='Resolvido' WHERE id_suporte=1;
UPDATE Suporte SET status='Resolvido' WHERE id_suporte=2;
UPDATE Suporte SET status='Resolvido' WHERE id_suporte=3;
UPDATE Suporte SET status='Resolvido' WHERE id_suporte=4;
UPDATE Suporte SET status='Resolvido' WHERE id_suporte=5;
UPDATE Suporte SET status='Resolvido' WHERE id_suporte=6;
UPDATE Suporte SET status='Resolvido' WHERE id_suporte=7;
UPDATE Suporte SET status='Resolvido' WHERE id_suporte=8;
UPDATE Suporte SET status='Resolvido' WHERE id_suporte=9;
UPDATE Suporte SET status='Resolvido' WHERE id_suporte=10;

/* ===== 10 SELECTS - Suporte ===== */
SELECT * FROM Suporte;
SELECT TOP 5 * FROM Suporte;
SELECT COUNT(*) AS Total FROM Suporte;
SELECT * FROM Suporte ORDER BY id_suporte;
SELECT * FROM Suporte WHERE id_suporte >= 1;
SELECT * FROM Suporte WHERE id_suporte <= 5;
SELECT * FROM Suporte WHERE id_suporte <> 1;
SELECT DISTINCT id_suporte FROM Suporte;
SELECT MAX(id_suporte) AS MaiorID FROM Suporte;
SELECT MIN(id_suporte) AS MenorID FROM Suporte;

/* ===== 10 UPDATES - Carrinho ===== */
UPDATE Carrinho SET id_cliente=id_cliente WHERE id_carrinho=1;
UPDATE Carrinho SET id_cliente=id_cliente WHERE id_carrinho=2;
UPDATE Carrinho SET id_cliente=id_cliente WHERE id_carrinho=3;
UPDATE Carrinho SET id_cliente=id_cliente WHERE id_carrinho=4;
UPDATE Carrinho SET id_cliente=id_cliente WHERE id_carrinho=5;
UPDATE Carrinho SET id_cliente=id_cliente WHERE id_carrinho=6;
UPDATE Carrinho SET id_cliente=id_cliente WHERE id_carrinho=7;
UPDATE Carrinho SET id_cliente=id_cliente WHERE id_carrinho=8;
UPDATE Carrinho SET id_cliente=id_cliente WHERE id_carrinho=9;
UPDATE Carrinho SET id_cliente=id_cliente WHERE id_carrinho=10;

/* ===== 10 SELECTS - Carrinho ===== */
SELECT * FROM Carrinho;
SELECT TOP 5 * FROM Carrinho;
SELECT COUNT(*) AS Total FROM Carrinho;
SELECT * FROM Carrinho ORDER BY id_carrinho;
SELECT * FROM Carrinho WHERE id_carrinho >= 1;
SELECT * FROM Carrinho WHERE id_carrinho <= 5;
SELECT * FROM Carrinho WHERE id_carrinho <> 1;
SELECT DISTINCT id_carrinho FROM Carrinho;
SELECT MAX(id_carrinho) AS MaiorID FROM Carrinho;
SELECT MIN(id_carrinho) AS MenorID FROM Carrinho;