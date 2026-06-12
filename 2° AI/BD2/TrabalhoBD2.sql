/* Davi Ribeiro Calado e Eduardo Marassatti Sassone
*/
create database LocadoraDeVideo3;
use LocadoraDeVideo3;

create table Categoria(
codcateg numeric(4) primary key,
descricao varchar(50) not null,
);
create table Filme(
codfilme numeric(4) primary key,
titulo varchar(70) not null,
codcat numeric(4) references Categoria(codcateg),
);
create table DVD(
NumDVD numeric(4) primary key,
Tipo char(1),
codifilme numeric (4) references Filme(codfilme),
);
create table Cliente(
codcli numeric(4) primary key,
prenome varchar(50) not null,
sobrenome varchar(50),
endereço varchar(70),
telefone varchar(20),
);
create table Ator(
codator numeric(4) primary key,
nome_popular varchar (50) not null,
nome_artistico varchar (50),
datanasc date
);
insert into Filme values (1, 'Sai pra lá', 1);
insert into Filme values (2, 'Ajuda Eterna', 2);
insert into Filme values (3, 'Anjos Malditos', 2);
insert into Filme values (4, 'Pânico II', 4);
insert into Filme values (5, 'Um dia de furia', 3);
insert into Filme values (6, 'Lente Cega', 3);
insert into Filme values (7, 'Sinais do tempo', 2);
insert into Filme values (8, 'A melodia da vida', 1);
select * from Filme;
insert into Cliente values (1, 'João', 'Silva', 'Rua da Cruz sem Pé', 44441111);
insert into Cliente values (2, 'Antônio', 'Ferreira', 'Av. da Vila Velha', 66609333);
insert into Cliente values (3, 'Fabio', 'Dias', 'Rua Antonio Vieira', 23370393);
insert into Cliente values (4, 'Andreia', 'Melo', 'Rua da Praia Bonita', 89897777);
insert into Cliente values (5, 'Murilo', 'Fontes', 'Av. dos Autonomistas', 90909090);
select * from Cliente;
insert into DVD values (1, 'S', 1);
insert into DVD values (2, 'S', 1);
insert into DVD values (3, 'S', 1);
insert into DVD values (4, 'D', 2);
insert into DVD values (5, 'S', 3);
select * from DVD;
insert into Categoria values (1, 'Comédia');
insert into Categoria values (2, 'Drama');
insert into Categoria values (3, 'Aventura');
insert into Categoria values (4, 'Terror');
select * from Categoria;
alter table Filme add sinopse varchar(300);
insert into Categoria values (5, 'Ficção');
insert into Ator values (1, 'Davi', 'Calado', '170909');
insert into Ator values (2, 'Eduardo', 'Sassone', '030509');
insert into Ator values (3, 'Gabriel', 'Ferreira', '270309');


/* Nossa resposta da 3)

Usaria o alter table para alterar a coluna de descrição pra alterar o valor da chave,
onde eu deixaria ela sem chave, e depois alteraria de novo para dar o valor de primary key de volta.
*/

