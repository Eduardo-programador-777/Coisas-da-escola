--Grupo: Eduardo Marassatti Sassone, Davi Ribeiro Calado, Gabriel Pereira, Gustavo Andrews Meirinho Lencina, Ian Souza Wan Sang

create database Loja_Jogo
use Loja_Jogo

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY IDENTITY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(100) NOT NULL,
    data_cadastro DATE 
);

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY IDENTITY,
    nome VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Fornecedor (
    id_fornecedor INT PRIMARY KEY IDENTITY,
    nome VARCHAR(100) NOT NULL,
    contato VARCHAR(100)
);

CREATE TABLE Jogo (
    id_jogo INT PRIMARY KEY IDENTITY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL CHECK (preco >= 0),
    descricao TEXT,
    id_categoria INT,
    id_fornecedor INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

CREATE TABLE Pedido (
    id_pedido INT PRIMARY KEY IDENTITY,
    id_cliente INT NOT NULL,
    data_pedido DATE,
    status_ped VARCHAR(50) DEFAULT 'Pendente',
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Item_Pedido (
    id_item INT PRIMARY KEY IDENTITY,
    id_pedido INT NOT NULL,
    id_jogo INT NOT NULL,
    quantidade INT NOT NULL CHECK (quantidade > 0),
    preco_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_jogo) REFERENCES Jogo(id_jogo)
);

CREATE TABLE Pagamento (
    id_pagamento INT PRIMARY KEY IDENTITY,
    id_pedido INT UNIQUE,
    tipo VARCHAR(50) NOT NULL,
    status_pag VARCHAR(50) DEFAULT 'Aguardando',
    valor DECIMAL(10,2) NOT NULL CHECK (valor >= 0),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)
);

CREATE TABLE Avaliacao (
    id_avaliacao INT PRIMARY KEY IDENTITY,
    id_cliente INT,
    id_jogo INT,
    nota INT CHECK (nota BETWEEN 1 AND 5),
    comentario TEXT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_jogo) REFERENCES Jogo(id_jogo)
);

CREATE TABLE Suporte (
    id_suporte INT PRIMARY KEY IDENTITY,
    id_cliente INT,
    mensagem TEXT NOT NULL,
    status_sup VARCHAR(50) DEFAULT 'Aberto',
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Carrinho (
    id_carrinho INT PRIMARY KEY IDENTITY,
    id_cliente INT UNIQUE,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Carrinho_Jogo (
    id_carrinho INT,
    id_jogo INT,
    quantidade INT DEFAULT 1 CHECK (quantidade > 0),
    PRIMARY KEY (id_carrinho, id_jogo),
    FOREIGN KEY (id_carrinho) REFERENCES Carrinho(id_carrinho),
    FOREIGN KEY (id_jogo) REFERENCES Jogo(id_jogo)
);

INSERT INTO Cliente (nome, email, senha, data_cadastro) VALUES ('Lucas Silva', 'lucas@email.com', '123456', '2026-06-21');
INSERT INTO Cliente (nome, email, senha, data_cadastro) VALUES ('Mariana Costa', 'mariana@email.com', '123456', '2026-06-01');
INSERT INTO Cliente (nome, email, senha, data_cadastro) VALUES ('Pedro Santos', 'pedro@email.com', '123456', '2026-06-28');
INSERT INTO Cliente (nome, email, senha, data_cadastro) VALUES ('Ana Souza', 'ana@email.com', '123456', '2026-06-13');
INSERT INTO Cliente (nome, email, senha, data_cadastro) VALUES ('Joao Lima', 'joao@email.com', '123456', '2026-06-10');

INSERT INTO Categoria (nome) VALUES ('Ação');
INSERT INTO Categoria (nome) VALUES ('RPG');
INSERT INTO Categoria (nome) VALUES ('Esporte');
INSERT INTO Categoria (nome) VALUES ('Estratégia');
INSERT INTO Categoria (nome) VALUES ('Aventura');

INSERT INTO Fornecedor (nome, contato) VALUES ('Steam', 'contato@steam.com');
INSERT INTO Fornecedor (nome, contato) VALUES ('Epic Games', 'suporte@epicgames.com');
INSERT INTO Fornecedor (nome, contato) VALUES ('Ubisoft', 'contato@ubisoft.com');
INSERT INTO Fornecedor (nome, contato) VALUES ('EA Games', 'suporte@ea.com');
INSERT INTO Fornecedor (nome, contato) VALUES ('Rockstar', 'contato@rockstar.com');

INSERT INTO Jogo (nome, preco, descricao, id_categoria, id_fornecedor) VALUES ('Counter Strike 2', 0.00, 'Jogo de tiro online', 1, 1);
INSERT INTO Jogo (nome, preco, descricao, id_categoria, id_fornecedor) VALUES ('The Witcher 3', 99.90, 'RPG de mundo aberto', 2, 1);
INSERT INTO Jogo (nome, preco, descricao, id_categoria, id_fornecedor) VALUES ('FIFA 25', 299.90, 'Simulador de futebol', 3, 2);
INSERT INTO Jogo (nome, preco, descricao, id_categoria, id_fornecedor) VALUES ('Civilization VI', 79.90, 'Jogo de estratégia', 4, 3);
INSERT INTO Jogo (nome, preco, descricao, id_categoria, id_fornecedor) VALUES ('GTA V', 89.90, 'Mundo aberto e ação', 5, 5);

INSERT INTO Pedido (id_cliente, status_ped) VALUES (1, 'Concluído');
INSERT INTO Pedido (id_cliente, status_ped) VALUES (2, 'Pendente');
INSERT INTO Pedido (id_cliente, status_ped) VALUES (3, 'Em andamento');
INSERT INTO Pedido (id_cliente, status_ped) VALUES (4, 'Concluído');
INSERT INTO Pedido (id_cliente, status_ped) VALUES (5, 'Pendente');

INSERT INTO Item_Pedido (id_pedido, id_jogo, quantidade, preco_unitario) VALUES (1, 2, 1, 99.90);
INSERT INTO Item_Pedido (id_pedido, id_jogo, quantidade, preco_unitario) VALUES (2, 3, 1, 299.90);
INSERT INTO Item_Pedido (id_pedido, id_jogo, quantidade, preco_unitario) VALUES (3, 4, 2, 79.90);
INSERT INTO Item_Pedido (id_pedido, id_jogo, quantidade, preco_unitario) VALUES (4, 1, 3, 0.00);
INSERT INTO Item_Pedido (id_pedido, id_jogo, quantidade, preco_unitario) VALUES (5, 5, 1, 89.90);

INSERT INTO Pagamento (id_pedido, tipo, status_pag, valor) VALUES (1, 'Cartão', 'Pago', 99.90);
INSERT INTO Pagamento (id_pedido, tipo, status_pag, valor) VALUES (2, 'Pix', 'Aguardando', 299.90);
INSERT INTO Pagamento (id_pedido, tipo, status_pag, valor) VALUES (3, 'Boleto', 'Pago', 159.80);
INSERT INTO Pagamento (id_pedido, tipo, status_pag, valor) VALUES (4, 'Pix', 'Pago', 0.00);
INSERT INTO Pagamento (id_pedido, tipo, status_pag, valor) VALUES (5, 'Cartão', 'Aguardando', 89.90);

INSERT INTO Avaliacao (id_cliente, id_jogo, nota, comentario) VALUES (1, 1, 5, 'Excelente jogo');
INSERT INTO Avaliacao (id_cliente, id_jogo, nota, comentario) VALUES (2, 2, 4, 'Muito bom');
INSERT INTO Avaliacao (id_cliente, id_jogo, nota, comentario) VALUES (3, 3, 5, 'Gostei bastante');
INSERT INTO Avaliacao (id_cliente, id_jogo, nota, comentario) VALUES (4, 4, 3, 'Bom jogo');
INSERT INTO Avaliacao (id_cliente, id_jogo, nota, comentario) VALUES (5, 5, 5, 'Perfeito');

INSERT INTO Suporte (id_cliente, mensagem, status_sup) VALUES (1, 'Problema no pagamento', 'Aberto');
INSERT INTO Suporte (id_cliente, mensagem, status_sup) VALUES (2, 'Erro ao baixar jogo', 'Resolvido');
INSERT INTO Suporte (id_cliente, mensagem, status_sup) VALUES (3, 'Dúvida sobre compra', 'Aberto');
INSERT INTO Suporte (id_cliente, mensagem, status_sup) VALUES (4, 'Problema na conta', 'Resolvido');
INSERT INTO Suporte (id_cliente, mensagem, status_sup) VALUES (5, 'Solicitação de reembolso', 'Aberto');

INSERT INTO Carrinho (id_cliente) VALUES (1);
INSERT INTO Carrinho (id_cliente) VALUES (2);
INSERT INTO Carrinho (id_cliente) VALUES (3);
INSERT INTO Carrinho (id_cliente) VALUES (4);
INSERT INTO Carrinho (id_cliente) VALUES (5);

INSERT INTO Carrinho_Jogo (id_carrinho, id_jogo, quantidade) VALUES (1, 1, 1);
INSERT INTO Carrinho_Jogo (id_carrinho, id_jogo, quantidade) VALUES (2, 2, 2);
INSERT INTO Carrinho_Jogo (id_carrinho, id_jogo, quantidade) VALUES (3, 3, 1);
INSERT INTO Carrinho_Jogo (id_carrinho, id_jogo, quantidade) VALUES (4, 4, 3);
INSERT INTO Carrinho_Jogo (id_carrinho, id_jogo, quantidade) VALUES (5, 5, 1);

-- Atualiza registros da tabela Cliente conforme os novos valores definidos neste comando.
UPDATE Cliente SET nome='Lucas Oliveira', email='lucas.oliveira@email.com', senha='abc123' WHERE id_cliente = 1;
-- Atualiza registros da tabela Cliente conforme os novos valores definidos neste comando.
UPDATE Cliente SET nome='Mariana Ferreira', email='mariana.ferreira@email.com', senha='mari456' WHERE id_cliente = 2;
-- Atualiza registros da tabela Cliente conforme os novos valores definidos neste comando.
UPDATE Cliente SET nome='Pedro Henrique', email='pedro.henrique@email.com', senha='pedro789' WHERE id_cliente = 3;
-- Atualiza registros da tabela Cliente conforme os novos valores definidos neste comando.
UPDATE Cliente SET nome='Ana Clara', email='ana.clara@email.com', senha='ana321' WHERE id_cliente = 4;
-- Atualiza registros da tabela Cliente conforme os novos valores definidos neste comando.
UPDATE Cliente SET nome='Joao Vitor', email='joao.vitor@email.com', senha='joao654' WHERE id_cliente = 5;
-- Atualiza registros da tabela Cliente conforme os novos valores definidos neste comando.
UPDATE Cliente SET nome='Lucas Santos', email='lucas.santos@email.com', senha='novaSenha1' WHERE id_cliente = 1;
-- Atualiza registros da tabela Cliente conforme os novos valores definidos neste comando.
UPDATE Cliente SET nome='Mariana Costa', email='mariana.costa@email.com', senha='novaSenha2' WHERE id_cliente = 2;
-- Atualiza registros da tabela Cliente conforme os novos valores definidos neste comando.
UPDATE Cliente SET nome='Pedro Silva', email='pedro.silva@email.com', senha='novaSenha3' WHERE id_cliente = 3;
-- Atualiza registros da tabela Cliente conforme os novos valores definidos neste comando.
UPDATE Cliente SET nome='Ana Beatriz', email='ana.beatriz@email.com', senha='novaSenha4' WHERE id_cliente = 4;
-- Atualiza registros da tabela Cliente conforme os novos valores definidos neste comando.
UPDATE Cliente SET nome='Joao Pedro', email='joao.pedro@email.com', senha='novaSenha5' WHERE id_cliente = 5;

-- Atualiza registros da tabela Categoria conforme os novos valores definidos neste comando.
UPDATE Categoria SET nome='Acao e Aventura' WHERE id_categoria = 1;
-- Atualiza registros da tabela Categoria conforme os novos valores definidos neste comando.
UPDATE Categoria SET nome='RPG Medieval' WHERE id_categoria = 2;
-- Atualiza registros da tabela Categoria conforme os novos valores definidos neste comando.
UPDATE Categoria SET nome='Esportes Virtuais' WHERE id_categoria = 3;
-- Atualiza registros da tabela Categoria conforme os novos valores definidos neste comando.
UPDATE Categoria SET nome='Estrategia em Tempo Real' WHERE id_categoria = 4;
-- Atualiza registros da tabela Categoria conforme os novos valores definidos neste comando.
UPDATE Categoria SET nome='Aventura Grafica' WHERE id_categoria = 5;
-- Atualiza registros da tabela Categoria conforme os novos valores definidos neste comando.
UPDATE Categoria SET nome='Jogos de Tiro' WHERE id_categoria = 1;
-- Atualiza registros da tabela Categoria conforme os novos valores definidos neste comando.
UPDATE Categoria SET nome='RPG Online' WHERE id_categoria = 2;
-- Atualiza registros da tabela Categoria conforme os novos valores definidos neste comando.
UPDATE Categoria SET nome='Simulador de Futebol' WHERE id_categoria = 3;
-- Atualiza registros da tabela Categoria conforme os novos valores definidos neste comando.
UPDATE Categoria SET nome='Estrategia por Turnos' WHERE id_categoria = 4;
-- Atualiza registros da tabela Categoria conforme os novos valores definidos neste comando.
UPDATE Categoria SET nome='Mundo Aberto' WHERE id_categoria = 5;

-- Atualiza registros da tabela Fornecedor conforme os novos valores definidos neste comando.
UPDATE Fornecedor SET nome='Steam Brasil', contato='steambrasil@email.com' WHERE id_fornecedor = 1;
-- Atualiza registros da tabela Fornecedor conforme os novos valores definidos neste comando.
UPDATE Fornecedor SET nome='Epic Games Store', contato='epicgames@email.com' WHERE id_fornecedor = 2;
-- Atualiza registros da tabela Fornecedor conforme os novos valores definidos neste comando.
UPDATE Fornecedor SET nome='Ubisoft Connect', contato='ubisoft@email.com' WHERE id_fornecedor = 3;
-- Atualiza registros da tabela Fornecedor conforme os novos valores definidos neste comando.
UPDATE Fornecedor SET nome='EA Sports', contato='ea@email.com' WHERE id_fornecedor = 4;
-- Atualiza registros da tabela Fornecedor conforme os novos valores definidos neste comando.
UPDATE Fornecedor SET nome='Rockstar Games', contato='rockstar@email.com' WHERE id_fornecedor = 5;
-- Atualiza registros da tabela Fornecedor conforme os novos valores definidos neste comando.
UPDATE Fornecedor SET nome='Steam Internacional', contato='suporte.steam@email.com' WHERE id_fornecedor = 1;
-- Atualiza registros da tabela Fornecedor conforme os novos valores definidos neste comando.
UPDATE Fornecedor SET nome='Epic Games Brasil', contato='suporte.epic@email.com' WHERE id_fornecedor = 2;
-- Atualiza registros da tabela Fornecedor conforme os novos valores definidos neste comando.
UPDATE Fornecedor SET nome='Ubisoft Brasil', contato='suporte.ubi@email.com' WHERE id_fornecedor = 3;
-- Atualiza registros da tabela Fornecedor conforme os novos valores definidos neste comando.
UPDATE Fornecedor SET nome='Electronic Arts', contato='contato.ea@email.com' WHERE id_fornecedor = 4;
-- Atualiza registros da tabela Fornecedor conforme os novos valores definidos neste comando.
UPDATE Fornecedor SET nome='Rockstar North', contato='contato.rockstar@email.com' WHERE id_fornecedor = 5;

-- Atualiza registros da tabela Jogo conforme os novos valores definidos neste comando.
UPDATE Jogo SET nome='Counter Strike 2', preco=0.00, descricao='FPS online', id_categoria = 1, id_fornecedor = 1 WHERE id_jogo = 1;
-- Atualiza registros da tabela Jogo conforme os novos valores definidos neste comando.
UPDATE Jogo SET nome='The Witcher 3', preco=99.90, descricao='RPG medieval', id_categoria = 2, id_fornecedor = 2 WHERE id_jogo = 2;
-- Atualiza registros da tabela Jogo conforme os novos valores definidos neste comando.
UPDATE Jogo SET nome='FIFA 25', preco=299.90, descricao='Simulador de futebol', id_categoria = 3, id_fornecedor = 3 WHERE id_jogo = 3;
-- Atualiza registros da tabela Jogo conforme os novos valores definidos neste comando.
UPDATE Jogo SET nome='Civilization VI', preco=79.90, descricao='Estrategia por turnos', id_categoria = 4, id_fornecedor = 4 WHERE id_jogo = 4;
-- Atualiza registros da tabela Jogo conforme os novos valores definidos neste comando.
UPDATE Jogo SET nome='GTA V', preco=89.90, descricao='Mundo aberto', id_categoria = 5, id_fornecedor = 5 WHERE id_jogo = 5;
-- Atualiza registros da tabela Jogo conforme os novos valores definidos neste comando.
UPDATE Jogo SET nome='CS2 Prime', preco=19.90, descricao='FPS competitivo', id_categoria = 1, id_fornecedor = 2 WHERE id_jogo = 1;
-- Atualiza registros da tabela Jogo conforme os novos valores definidos neste comando.
UPDATE Jogo SET nome='The Witcher 3 Complete', preco=119.90, descricao='Inclui DLCs', id_categoria = 2, id_fornecedor = 3 WHERE id_jogo = 2;
-- Atualiza registros da tabela Jogo conforme os novos valores definidos neste comando.
UPDATE Jogo SET nome='EA FC 25', preco=279.90, descricao='Futebol atualizado', id_categoria = 3, id_fornecedor = 4 WHERE id_jogo = 3;
-- Atualiza registros da tabela Jogo conforme os novos valores definidos neste comando.
UPDATE Jogo SET nome='Civilization VII', preco=149.90, descricao='Nova versao', id_categoria = 4, id_fornecedor = 5 WHERE id_jogo = 4;
-- Atualiza registros da tabela Jogo conforme os novos valores definidos neste comando.
UPDATE Jogo SET nome='GTA Online', preco=59.90, descricao='Modo online', id_categoria = 5, id_fornecedor = 1 WHERE id_jogo = 5;

-- Atualiza registros da tabela Pedido conforme os novos valores definidos neste comando.
UPDATE Pedido SET id_cliente = 1, status_ped='Pendente' WHERE id_pedido = 1;
-- Atualiza registros da tabela Pedido conforme os novos valores definidos neste comando.
UPDATE Pedido SET id_cliente = 2, status_ped='Pago' WHERE id_pedido = 2;
-- Atualiza registros da tabela Pedido conforme os novos valores definidos neste comando.
UPDATE Pedido SET id_cliente = 3, status_ped='Enviado' WHERE id_pedido = 3;
-- Atualiza registros da tabela Pedido conforme os novos valores definidos neste comando.
UPDATE Pedido SET id_cliente = 4, status_ped='Entregue' WHERE id_pedido = 4;
-- Atualiza registros da tabela Pedido conforme os novos valores definidos neste comando.
UPDATE Pedido SET id_cliente = 5, status_ped='Cancelado' WHERE id_pedido = 5;
-- Atualiza registros da tabela Pedido conforme os novos valores definidos neste comando.
UPDATE Pedido SET id_cliente = 2, status_ped='Aguardando Pagamento' WHERE id_pedido = 1;
-- Atualiza registros da tabela Pedido conforme os novos valores definidos neste comando.
UPDATE Pedido SET id_cliente = 3, status_ped='Processando' WHERE id_pedido = 2;
-- Atualiza registros da tabela Pedido conforme os novos valores definidos neste comando.
UPDATE Pedido SET id_cliente = 4, status_ped='Em Transporte' WHERE id_pedido = 3;
-- Atualiza registros da tabela Pedido conforme os novos valores definidos neste comando.
UPDATE Pedido SET id_cliente = 5, status_ped='Finalizado' WHERE id_pedido = 4;
-- Atualiza registros da tabela Pedido conforme os novos valores definidos neste comando.
UPDATE Pedido SET id_cliente = 1, status_ped='Reembolsado' WHERE id_pedido = 5;

-- Atualiza registros da tabela Item_Pedido conforme os novos valores definidos neste comando.
UPDATE Item_Pedido SET id_pedido = 1, id_jogo = 1, quantidade = 1, preco_unitario = 10.00 WHERE id_item = 1;
-- Atualiza registros da tabela Item_Pedido conforme os novos valores definidos neste comando.
UPDATE Item_Pedido SET id_pedido = 2, id_jogo = 2, quantidade = 2, preco_unitario = 20.00 WHERE id_item = 2;
-- Atualiza registros da tabela Item_Pedido conforme os novos valores definidos neste comando.
UPDATE Item_Pedido SET id_pedido = 3, id_jogo = 3, quantidade = 3, preco_unitario = 30.00 WHERE id_item = 3;
-- Atualiza registros da tabela Item_Pedido conforme os novos valores definidos neste comando.
UPDATE Item_Pedido SET id_pedido = 4, id_jogo = 4, quantidade = 4, preco_unitario = 40.00 WHERE id_item = 4;
-- Atualiza registros da tabela Item_Pedido conforme os novos valores definidos neste comando.
UPDATE Item_Pedido SET id_pedido = 5, id_jogo = 5, quantidade = 5, preco_unitario = 50.00 WHERE id_item = 5;
-- Atualiza registros da tabela Item_Pedido conforme os novos valores definidos neste comando.
UPDATE Item_Pedido SET id_pedido = 2, id_jogo = 5, quantidade = 1, preco_unitario = 89.90 WHERE id_item = 1;
-- Atualiza registros da tabela Item_Pedido conforme os novos valores definidos neste comando.
UPDATE Item_Pedido SET id_pedido = 3, id_jogo = 4, quantidade = 2, preco_unitario = 79.90 WHERE id_item = 2;
-- Atualiza registros da tabela Item_Pedido conforme os novos valores definidos neste comando.
UPDATE Item_Pedido SET id_pedido = 4, id_jogo = 3, quantidade = 1, preco_unitario = 299.90 WHERE id_item = 3;
-- Atualiza registros da tabela Item_Pedido conforme os novos valores definidos neste comando.
UPDATE Item_Pedido SET id_pedido = 5, id_jogo = 2, quantidade = 3, preco_unitario = 99.90 WHERE id_item = 4;
-- Atualiza registros da tabela Item_Pedido conforme os novos valores definidos neste comando.
UPDATE Item_Pedido SET id_pedido = 1, id_jogo = 1, quantidade = 2, preco_unitario = 0.00 WHERE id_item = 5;

-- Atualiza registros da tabela Pagamento conforme os novos valores definidos neste comando.
UPDATE Pagamento SET id_pedido = 1, tipo='Pix', status_pag='Pago', valor=99.90 WHERE id_pagamento = 1;
-- Atualiza registros da tabela Pagamento conforme os novos valores definidos neste comando.
UPDATE Pagamento SET id_pedido = 2, tipo='Cartao', status_pag='Pendente', valor=299.90 WHERE id_pagamento = 2;
-- Atualiza registros da tabela Pagamento conforme os novos valores definidos neste comando.
UPDATE Pagamento SET id_pedido = 3, tipo='Boleto', status_pag='Pago', valor=159.80 WHERE id_pagamento = 3;
-- Atualiza registros da tabela Pagamento conforme os novos valores definidos neste comando.
UPDATE Pagamento SET id_pedido = 4, tipo='Pix', status_pag='Pago', valor=50.00 WHERE id_pagamento = 4;
-- Atualiza registros da tabela Pagamento conforme os novos valores definidos neste comando.
UPDATE Pagamento SET id_pedido = 5, tipo='Cartao', status_pag='Cancelado', valor=89.90 WHERE id_pagamento = 5;
-- Atualiza registros da tabela Pagamento conforme os novos valores definidos neste comando.
UPDATE Pagamento SET id_pedido = 1, tipo='Boleto', status_pag='Aguardando', valor=120.00 WHERE id_pagamento = 1;
-- Atualiza registros da tabela Pagamento conforme os novos valores definidos neste comando.
UPDATE Pagamento SET id_pedido = 2, tipo='Pix', status_pag='Processando', valor=250.00 WHERE id_pagamento = 2;
-- Atualiza registros da tabela Pagamento conforme os novos valores definidos neste comando.
UPDATE Pagamento SET id_pedido = 3, tipo='Cartao', status_pag='Estornado', valor=300.00 WHERE id_pagamento = 3;
-- Atualiza registros da tabela Pagamento conforme os novos valores definidos neste comando.
UPDATE Pagamento SET id_pedido = 4, tipo='Pix', status_pag='Reembolsado', valor=80.00 WHERE id_pagamento = 4;
-- Atualiza registros da tabela Pagamento conforme os novos valores definidos neste comando.
UPDATE Pagamento SET id_pedido = 5, tipo='Boleto', status_pag='Concluido', valor=150.00 WHERE id_pagamento = 5;

-- Atualiza registros da tabela Avaliacao conforme os novos valores definidos neste comando.
UPDATE Avaliacao SET id_cliente = 1, id_jogo = 1, nota = 5, comentario='Excelente' WHERE id_avaliacao = 1;
-- Atualiza registros da tabela Avaliacao conforme os novos valores definidos neste comando.
UPDATE Avaliacao SET id_cliente = 2, id_jogo = 2, nota = 4, comentario='Muito bom' WHERE id_avaliacao = 2;
-- Atualiza registros da tabela Avaliacao conforme os novos valores definidos neste comando.
UPDATE Avaliacao SET id_cliente = 3, id_jogo = 3, nota = 3, comentario='Bom' WHERE id_avaliacao = 3;
-- Atualiza registros da tabela Avaliacao conforme os novos valores definidos neste comando.
UPDATE Avaliacao SET id_cliente = 4, id_jogo = 4, nota = 2, comentario='Regular' WHERE id_avaliacao = 4;
-- Atualiza registros da tabela Avaliacao conforme os novos valores definidos neste comando.
UPDATE Avaliacao SET id_cliente = 5, id_jogo = 5, nota = 1, comentario='Ruim' WHERE id_avaliacao = 5;
-- Atualiza registros da tabela Avaliacao conforme os novos valores definidos neste comando.
UPDATE Avaliacao SET id_cliente = 2, id_jogo = 5, nota = 5, comentario='Perfeito' WHERE id_avaliacao = 1;
-- Atualiza registros da tabela Avaliacao conforme os novos valores definidos neste comando.
UPDATE Avaliacao SET id_cliente = 3, id_jogo = 4, nota = 4, comentario='Gostei bastante' WHERE id_avaliacao = 2;
-- Atualiza registros da tabela Avaliacao conforme os novos valores definidos neste comando.
UPDATE Avaliacao SET id_cliente = 4, id_jogo = 3, nota = 3, comentario='Interessante' WHERE id_avaliacao = 3;
-- Atualiza registros da tabela Avaliacao conforme os novos valores definidos neste comando.
UPDATE Avaliacao SET id_cliente = 5, id_jogo = 2, nota = 2, comentario='Poderia melhorar' WHERE id_avaliacao = 4;
-- Atualiza registros da tabela Avaliacao conforme os novos valores definidos neste comando.
UPDATE Avaliacao SET id_cliente = 1, id_jogo = 1, nota = 5, comentario='Meu favorito' WHERE id_avaliacao = 5;

-- Atualiza registros da tabela Suporte conforme os novos valores definidos neste comando.
UPDATE Suporte SET id_cliente = 1, mensagem='Problema no pagamento', status_sup='Aberto' WHERE id_suporte = 1;
-- Atualiza registros da tabela Suporte conforme os novos valores definidos neste comando.
UPDATE Suporte SET id_cliente = 2, mensagem='Erro ao baixar jogo', status_sup='Resolvido' WHERE id_suporte = 2;
-- Atualiza registros da tabela Suporte conforme os novos valores definidos neste comando.
UPDATE Suporte SET id_cliente = 3, mensagem='Duvida sobre compra', status_sup='Aberto' WHERE id_suporte = 3;
-- Atualiza registros da tabela Suporte conforme os novos valores definidos neste comando.
UPDATE Suporte SET id_cliente = 4, mensagem='Problema na conta', status_sup='Resolvido' WHERE id_suporte = 4;
-- Atualiza registros da tabela Suporte conforme os novos valores definidos neste comando.
UPDATE Suporte SET id_cliente = 5, mensagem='Pedido de reembolso', status_sup='Aberto' WHERE id_suporte = 5;
-- Atualiza registros da tabela Suporte conforme os novos valores definidos neste comando.
UPDATE Suporte SET id_cliente = 2, mensagem='Pagamento recusado', status_sup='Em Analise' WHERE id_suporte = 1;
-- Atualiza registros da tabela Suporte conforme os novos valores definidos neste comando.
UPDATE Suporte SET id_cliente = 3, mensagem='Erro de login', status_sup='Pendente' WHERE id_suporte = 2;
-- Atualiza registros da tabela Suporte conforme os novos valores definidos neste comando.
UPDATE Suporte SET id_cliente = 4, mensagem='Jogo nao inicia', status_sup='Respondido' WHERE id_suporte = 3;
-- Atualiza registros da tabela Suporte conforme os novos valores definidos neste comando.
UPDATE Suporte SET id_cliente = 5, mensagem='Conta bloqueada', status_sup='Fechado' WHERE id_suporte = 4;
-- Atualiza registros da tabela Suporte conforme os novos valores definidos neste comando.
UPDATE Suporte SET id_cliente = 1, mensagem='Solicitacao atendida', status_sup='Concluido' WHERE id_suporte = 5;

-- Atualiza registros da tabela Carrinho conforme os novos valores definidos neste comando.
UPDATE Carrinho SET id_cliente = 1 WHERE id_carrinho = 1;
-- Atualiza registros da tabela Carrinho conforme os novos valores definidos neste comando.
UPDATE Carrinho SET id_cliente = 2 WHERE id_carrinho = 2;
-- Atualiza registros da tabela Carrinho conforme os novos valores definidos neste comando.
UPDATE Carrinho SET id_cliente = 3 WHERE id_carrinho = 3;
-- Atualiza registros da tabela Carrinho conforme os novos valores definidos neste comando.
UPDATE Carrinho SET id_cliente = 4 WHERE id_carrinho = 4;
-- Atualiza registros da tabela Carrinho conforme os novos valores definidos neste comando.
UPDATE Carrinho SET id_cliente = 5 WHERE id_carrinho = 5;
-- Atualiza registros da tabela Carrinho conforme os novos valores definidos neste comando.
UPDATE Carrinho SET id_cliente = 2 WHERE id_carrinho = 1;
-- Atualiza registros da tabela Carrinho conforme os novos valores definidos neste comando.
UPDATE Carrinho SET id_cliente = 3 WHERE id_carrinho = 2;
-- Atualiza registros da tabela Carrinho conforme os novos valores definidos neste comando.
UPDATE Carrinho SET id_cliente = 4 WHERE id_carrinho = 3;
-- Atualiza registros da tabela Carrinho conforme os novos valores definidos neste comando.
UPDATE Carrinho SET id_cliente = 5 WHERE id_carrinho = 4;
-- Atualiza registros da tabela Carrinho conforme os novos valores definidos neste comando.
UPDATE Carrinho SET id_cliente = 1 WHERE id_carrinho = 5;

-- Atualiza registros da tabela Carrinho_Jogo conforme os novos valores definidos neste comando.
UPDATE Carrinho_Jogo SET quantidade=1 WHERE id_carrinho = 1 AND id_jogo = 1;
-- Atualiza registros da tabela Carrinho_Jogo conforme os novos valores definidos neste comando.
UPDATE Carrinho_Jogo SET quantidade=2 WHERE id_carrinho = 2 AND id_jogo = 2;
-- Atualiza registros da tabela Carrinho_Jogo conforme os novos valores definidos neste comando.
UPDATE Carrinho_Jogo SET quantidade=3 WHERE id_carrinho = 3 AND id_jogo = 3;
-- Atualiza registros da tabela Carrinho_Jogo conforme os novos valores definidos neste comando.
UPDATE Carrinho_Jogo SET quantidade=4 WHERE id_carrinho = 4 AND id_jogo = 4;
-- Atualiza registros da tabela Carrinho_Jogo conforme os novos valores definidos neste comando.
UPDATE Carrinho_Jogo SET quantidade=5 WHERE id_carrinho = 5 AND id_jogo = 5;
-- Atualiza registros da tabela Carrinho_Jogo conforme os novos valores definidos neste comando.
UPDATE Carrinho_Jogo SET quantidade=2 WHERE id_carrinho = 1 AND id_jogo = 1;
-- Atualiza registros da tabela Carrinho_Jogo conforme os novos valores definidos neste comando.
UPDATE Carrinho_Jogo SET quantidade=3 WHERE id_carrinho = 2 AND id_jogo = 2;
-- Atualiza registros da tabela Carrinho_Jogo conforme os novos valores definidos neste comando.
UPDATE Carrinho_Jogo SET quantidade=4 WHERE id_carrinho = 3 AND id_jogo = 3;
-- Atualiza registros da tabela Carrinho_Jogo conforme os novos valores definidos neste comando.
UPDATE Carrinho_Jogo SET quantidade=5 WHERE id_carrinho = 4 AND id_jogo = 4;
-- Atualiza registros da tabela Carrinho_Jogo conforme os novos valores definidos neste comando.
UPDATE Carrinho_Jogo SET quantidade=6 WHERE id_carrinho = 5 AND id_jogo = 5;

SELECT * FROM Cliente;
SELECT nome, email FROM Cliente;
SELECT * FROM Cliente WHERE nome LIKE 'L%';
SELECT * FROM Cliente WHERE email LIKE '%@email.com';
SELECT * FROM Cliente WHERE id_cliente > 2;
SELECT * FROM Cliente WHERE id_cliente BETWEEN 2 AND 5;
SELECT * FROM Cliente WHERE id_cliente IN (1,3,5);
SELECT DISTINCT nome FROM Cliente;
SELECT * FROM Cliente ORDER BY nome;
SELECT * FROM Cliente ORDER BY email DESC;

SELECT * FROM Categoria;
SELECT nome FROM Categoria;
SELECT * FROM Categoria WHERE nome LIKE 'A%';
SELECT * FROM Categoria WHERE nome LIKE '%RPG%';
SELECT * FROM Categoria WHERE id_categoria > 2;
SELECT * FROM Categoria WHERE id_categoria BETWEEN 1 AND 4;
SELECT * FROM Categoria WHERE id_categoria IN (2,4,5);
SELECT DISTINCT nome FROM Categoria;
SELECT * FROM Categoria ORDER BY nome;
SELECT * FROM Categoria ORDER BY id_categoria DESC;

SELECT * FROM Fornecedor;
SELECT nome, contato FROM Fornecedor;
SELECT * FROM Fornecedor WHERE nome LIKE 'S%';
SELECT * FROM Fornecedor WHERE contato LIKE '%email.com';
SELECT * FROM Fornecedor WHERE id_fornecedor > 2;
SELECT * FROM Fornecedor WHERE id_fornecedor BETWEEN 1 AND 4;
SELECT * FROM Fornecedor WHERE id_fornecedor IN (1,3,5);
SELECT DISTINCT nome FROM Fornecedor;
SELECT * FROM Fornecedor ORDER BY nome;
SELECT * FROM Fornecedor ORDER BY contato DESC;

SELECT * FROM Jogo;
SELECT nome, preco FROM Jogo;
SELECT * FROM Jogo WHERE preco > 50;
SELECT * FROM Jogo WHERE preco BETWEEN 20 AND 100;
SELECT * FROM Jogo WHERE nome LIKE 'G%';
SELECT * FROM Jogo WHERE id_categoria IN (1,2,3);
SELECT * FROM Jogo WHERE id_fornecedor IN (1,3,5);
SELECT DISTINCT id_categoria FROM Jogo;
SELECT * FROM Jogo ORDER BY preco;
SELECT * FROM Jogo ORDER BY nome DESC;

SELECT * FROM Pedido;
SELECT id_cliente, status_ped FROM Pedido;
SELECT * FROM Pedido WHERE status_ped LIKE 'P%';
SELECT * FROM Pedido WHERE id_cliente = 1;
SELECT * FROM Pedido WHERE id_cliente > 2;
SELECT * FROM Pedido WHERE id_cliente BETWEEN 1 AND 4;
SELECT * FROM Pedido WHERE id_cliente IN (1,3,5);
SELECT DISTINCT status_ped FROM Pedido;
SELECT * FROM Pedido ORDER BY status_ped;
SELECT * FROM Pedido ORDER BY id_pedido DESC;

SELECT * FROM Item_Pedido;
SELECT id_pedido, quantidade FROM Item_Pedido;
SELECT * FROM Item_Pedido WHERE quantidade > 1;
SELECT * FROM Item_Pedido WHERE quantidade BETWEEN 1 AND 3;
SELECT * FROM Item_Pedido WHERE preco_unitario > 50;
SELECT * FROM Item_Pedido WHERE id_jogo IN (1,2,3);
SELECT * FROM Item_Pedido WHERE id_pedido IN (2,4,5);
SELECT DISTINCT id_jogo FROM Item_Pedido;
SELECT * FROM Item_Pedido ORDER BY quantidade;
SELECT * FROM Item_Pedido ORDER BY preco_unitario DESC;

SELECT * FROM Pagamento;
SELECT tipo, valor FROM Pagamento;
SELECT * FROM Pagamento WHERE valor > 100;
SELECT * FROM Pagamento WHERE valor BETWEEN 50 AND 200;
SELECT * FROM Pagamento WHERE tipo LIKE 'P%';
SELECT * FROM Pagamento WHERE status_pag LIKE 'P%';
SELECT * FROM Pagamento WHERE id_pedido IN (1,3,5);
SELECT DISTINCT tipo FROM Pagamento;
SELECT * FROM Pagamento ORDER BY valor;
SELECT * FROM Pagamento ORDER BY status_pag DESC;

SELECT * FROM Avaliacao;
SELECT nota, comentario FROM Avaliacao;
SELECT * FROM Avaliacao WHERE nota = 5;
SELECT * FROM Avaliacao WHERE nota >= 3;
SELECT * FROM Avaliacao WHERE nota BETWEEN 2 AND 5;
SELECT * FROM Avaliacao WHERE id_cliente IN (1,2,3);
SELECT * FROM Avaliacao WHERE comentario LIKE '%bom%';
SELECT DISTINCT nota FROM Avaliacao;
SELECT * FROM Avaliacao ORDER BY nota;
SELECT * FROM Avaliacao ORDER BY id_avaliacao DESC;

SELECT * FROM Suporte;
SELECT mensagem, status_sup FROM Suporte;
SELECT * FROM Suporte WHERE status_sup LIKE 'A%';
SELECT * FROM Suporte WHERE status_sup LIKE 'R%';
SELECT * FROM Suporte WHERE id_cliente > 2;
SELECT * FROM Suporte WHERE id_cliente BETWEEN 1 AND 4;
SELECT * FROM Suporte WHERE id_cliente IN (1,3,5);
SELECT DISTINCT status_sup FROM Suporte;
SELECT * FROM Suporte ORDER BY status_sup;
SELECT * FROM Suporte ORDER BY id_suporte DESC;

SELECT * FROM Carrinho;
SELECT id_cliente FROM Carrinho;
SELECT * FROM Carrinho WHERE id_cliente = 1;
SELECT * FROM Carrinho WHERE id_cliente > 2;
SELECT * FROM Carrinho WHERE id_cliente BETWEEN 1 AND 4;
SELECT * FROM Carrinho WHERE id_cliente IN (1,3,5);
SELECT DISTINCT id_cliente FROM Carrinho;
SELECT * FROM Carrinho ORDER BY id_cliente;
SELECT * FROM Carrinho ORDER BY id_carrinho DESC;
SELECT * FROM Carrinho WHERE id_carrinho > 1;

SELECT * FROM Carrinho_Jogo;
SELECT id_carrinho, id_jogo FROM Carrinho_Jogo;
SELECT * FROM Carrinho_Jogo WHERE quantidade > 1;
SELECT * FROM Carrinho_Jogo WHERE quantidade BETWEEN 1 AND 3;
SELECT * FROM Carrinho_Jogo WHERE id_carrinho = 1;
SELECT * FROM Carrinho_Jogo WHERE id_jogo = 2;
SELECT * FROM Carrinho_Jogo WHERE id_carrinho IN (1,2,3);
SELECT DISTINCT id_jogo FROM Carrinho_Jogo;
SELECT * FROM Carrinho_Jogo ORDER BY quantidade;
SELECT * FROM Carrinho_Jogo ORDER BY id_jogo DESC;