--Gustavo Andrews e Erick Martins 2ºAI

create table Categoria(
Codcateg numeric(4) primary key,
Descricao varchar(50) not null,
);

create table Filme(
CodFilme numeric(4) primary key,
Titulo varchar(70) not null,
CodCat numeric(4) references Categoria(Codcateg)
);

create table DVD(
NumDVD numeric(4) primary key,
Tipo char(1),
CodiFime numeric(4) references Filme(CodFilme)
);

create table Cliente(
CodCli numeric(4) primary key,
Prenome varchar(50) not null,
Sobrenome varchar(50),
Endereco varchar(70),
Telefone varchar(20),
);

create table Ator(
Codator numeric(4) primary key,
Nome_popular varchar(50) not null,
Nome_artistico varchar(50),
Datanasc date,
);

insert into Filme (CodFilme, Titulo, CodCat) values (1, 'Sai pra lá', 1)
insert into Filme (CodFilme, Titulo, CodCat) values (2, 'Ajuda Eterna', 2)
insert into Filme (CodFilme, Titulo, CodCat) values (3, 'Anjos Malditos', 2)
insert into Filme (CodFilme, Titulo, CodCat) values (4, 'Pânico II', 4)
insert into Filme (CodFilme, Titulo, CodCat) values (5, 'Um dia de furia', 3)
insert into Filme (CodFilme, Titulo, CodCat) values (6, 'Lente Cega', 3)
insert into Filme (CodFilme, Titulo, CodCat) values (7, 'Sinais do Tempo', 2)
insert into Filme (CodFilme, Titulo, CodCat) values (8, 'A melodia da vida', 1)

insert into Cliente (CodCli, Prenome, Sobrenome, Endereco, Telefone) values (1, 'João', 'Silva', 'Rua da Cruz sem Pé', 4444-1111)
insert into Cliente (CodCli, Prenome, Sobrenome, Endereco, Telefone) values (2, 'Antônio', 'Ferreira', 'Av. da Vila Velha', 6660-9333)
insert into Cliente (CodCli, Prenome, Sobrenome, Endereco, Telefone) values (3, 'Fabio', 'Dias', 'Rua Antonio Vieira', 2337-0393)
insert into Cliente (CodCli, Prenome, Sobrenome, Endereco, Telefone) values (4, 'Andreia', 'Melo', 'Melo', 8989-7777)
insert into Cliente (CodCli, Prenome, Sobrenome, Endereco, Telefone) values (5, 'Murilo', 'Fontes', 'Av. dos Autonomistas', 9090-9090)

insert into DVD (NumDVD, Tipo, CodiFime) values (1, 'S', 1)
insert into DVD (NumDVD, Tipo, CodiFime) values (2, 'S',1)
insert into DVD (NumDVD, Tipo, CodiFime) values (3, 'S', 1)
insert into DVD (NumDVD, Tipo, CodiFime) values (4, 'D', 2)
insert into DVD (NumDVD, Tipo, CodiFime) values (5, 'S', 3)

insert into Categoria (Codcateg, Descricao) values (1, 'Comédia')
insert into Categoria (Codcateg, Descricao) values (2, 'Drama')
insert into Categoria (Codcateg, Descricao) values (3, 'Aventura')
insert into Categoria (Codcateg, Descricao) values (4, 'Terror')

insert into Ator (Codator, Nome_popular, Nome_artistico,Datanasc) values (1, 'Arlette Pinheiro', 'Fernanda Montenegro', '1929-10-16')
insert into Ator (Codator, Nome_popular, Nome_artistico,Datanasc) values (2, 'Zendaya Maree', 'Zendaya', '1996-09-01')
insert into Ator (Codator, Nome_popular, Nome_artistico,Datanasc) values (4, 'Adam Richard Sandler', 'Adam Sandles', '1966-09-09')

--update Categoria set Codcateg = 8 where Codcateg = 1

alter table Filme add Sinopse varchar(300) not null


insert into Categoria (Codcateg, Descricao) values (5, 'Ficção')

delete from Filme where Titulo in ('Anjos Malditos', 'A melodia da vida');
