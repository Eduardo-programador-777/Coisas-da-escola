--Grupo: Eduardo Marassatti Sassone, Davi Ribeiro Calado, Gabriel Pereira, Gustavo Andrews Meirinho Lencina

create database Loja_Jogo
use Loja_Jogo

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY IDENTITY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(100) NOT NULL,
    data_cadastro DATE DEFAULT CAST(GETDATE() AS DATE)
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
    data_pedido DATE DEFAULT CAST(GETDATE() AS DATE),
    status VARCHAR(50) DEFAULT 'Pendente',
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
    status VARCHAR(50) DEFAULT 'Aguardando',
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
    status VARCHAR(50) DEFAULT 'Aberto',
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

INSERT INTO Cliente (nome, email, senha) VALUES ('Eduardo Sassone', 'eduardo@email.com', '123456');
INSERT INTO Cliente (nome, email, senha) VALUES ('Davi Calado', 'davi@email.com', '123456');
INSERT INTO Cliente (nome, email, senha) VALUES ('Gabriel Pereira', 'gabriel@email.com', '123456');

INSERT INTO Categoria (nome) VALUES ('Ação');
INSERT INTO Categoria (nome) VALUES ('RPG');
INSERT INTO Categoria (nome) VALUES ('Esporte');
INSERT INTO Categoria (nome) VALUES ('Estratégia');

INSERT INTO Fornecedor (nome, contato) VALUES ('Steam', 'contato@steam.com');
INSERT INTO Fornecedor (nome, contato) VALUES ('Epic Games', 'suporte@epicgames.com');
INSERT INTO Fornecedor (nome, contato) VALUES ('Ubisoft', 'contato@ubisoft.com');

INSERT INTO Jogo (nome, preco, descricao, id_categoria, id_fornecedor) VALUES ('Counter Strike 2', 0.00, 'Jogo de tiro online', 1, 1);
INSERT INTO Jogo (nome, preco, descricao, id_categoria, id_fornecedor) VALUES ('The Witcher 3', 99.90, 'RPG de mundo aberto', 2, 1);
INSERT INTO Jogo (nome, preco, descricao, id_categoria, id_fornecedor) VALUES ('FIFA 25', 299.90, 'Simulador de futebol', 3, 2);
INSERT INTO Jogo (nome, preco, descricao, id_categoria, id_fornecedor) VALUES ('Civilization VI', 79.90, 'Jogo de estratégia', 4, 3);

INSERT INTO Pedido (id_cliente, status) VALUES (1, 'Concluído');
INSERT INTO Pedido (id_cliente, status) VALUES (2, 'Pendente');
INSERT INTO Pedido (id_cliente, status) VALUES (3, 'Em andamento');

INSERT INTO Item_Pedido (id_pedido, id_jogo, quantidade, preco_unitario) VALUES (1, 2, 1, 99.90);
INSERT INTO Item_Pedido (id_pedido, id_jogo, quantidade, preco_unitario) VALUES (2, 3, 1, 299.90);
INSERT INTO Item_Pedido (id_pedido, id_jogo, quantidade, preco_unitario) VALUES (3, 4, 2, 79.90);

INSERT INTO Pagamento (id_pedido, tipo, status, valor) VALUES (1, 'Cartão', 'Pago', 99.90);
INSERT INTO Pagamento (id_pedido, tipo, status, valor) VALUES (2, 'Pix', 'Aguardando', 299.90);
INSERT INTO Pagamento (id_pedido, tipo, status, valor) VALUES (3, 'Boleto', 'Pago', 159.80);

INSERT INTO Avaliacao (id_cliente, id_jogo, nota, comentario) VALUES (1, 5, 5, 'Excelente jogo!');
INSERT INTO Avaliacao (id_cliente, id_jogo, nota, comentario) VALUES (2, 3, 4, 'Muito divertido.');
INSERT INTO Avaliacao (id_cliente, id_jogo, nota, comentario) VALUES (3, 4, 5, 'Ótima estratégia.');

INSERT INTO Suporte (id_cliente, mensagem, status) VALUES (1, 'Não consigo acessar minha conta.', 'Aberto');
INSERT INTO Suporte (id_cliente, mensagem, status) VALUES (2, 'Problema no pagamento.', 'Em análise');

INSERT INTO Carrinho (id_cliente) VALUES (1);
INSERT INTO Carrinho (id_cliente) VALUES (2);
INSERT INTO Carrinho (id_cliente) VALUES (3);

INSERT INTO Carrinho_Jogo (id_carrinho, id_jogo, quantidade) VALUES (1, 1, 1);
INSERT INTO Carrinho_Jogo (id_carrinho, id_jogo, quantidade) VALUES (1, 2, 1);
INSERT INTO Carrinho_Jogo (id_carrinho, id_jogo, quantidade) VALUES (2, 3, 2);
INSERT INTO Carrinho_Jogo (id_carrinho, id_jogo, quantidade) VALUES (3, 4, 1);