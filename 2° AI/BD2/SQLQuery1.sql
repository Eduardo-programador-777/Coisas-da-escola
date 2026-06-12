-- Comando para criar a base de dados
create database Loja;

-- Selecionar a base 
use Loja;

-- Comando para criar a tabela
create table cliente(
 --nome tipo restrição
  cpf_clie char(11) primary key,
  dt_nasc date not null,
  nm_clie varchar(30) not null,
  end_clie varchar (50),
  cep_clie char(8)
);

create table Produto(
  ds_prod varchar(50) not null,
  cd_prod numeric(6) primary key identity,
  preco numeric(10,2) not null,
  qtde numeric (8,2) not null
);

-- Excluir a tabela
drop table Produto;

/*Sintaxe:
create table nome_tabela (
nome_coluna1 tipo_dados(tamanho) [nome_regra tipo_regra],
nome_colunaN tipo_dados(tamanho) [nome_regra tipo_regra],......
*/
create table funcionario(
id_Func numeric(9) constraint pk_func primary key,
nm_func varchar(40) constraint nn_nome_func not null,
salario_func numeric(10,2),
constraint ck_sal_func check(salario_func > 0 )
--constrait pk_func primary key(id_func)
);

sp_help funcionario

--Criando uma nova tablea chamada fornecedor com código -
create table fornecedor (
     codigo char(2)
);

--Adicionar na tabela fornecedor a coluna nome A 12
alter table fornecedor add nome varchar(12);

--Adicionar a regra PK na coluna código
alter table fornecedor alter column codigo char(2) not null;

alter table fornecedor add constraint forn_codPK primary key(codigo);

--alterar o tamanho da coluna nome para 40
alter table fornecedor
alter column nome varchar(40)

--adicionando telefone a tabela nuumeric 9
alter table fornecedor add telefone numeric(9);

--apagando a coluna telefone
alter table fornecedor drop column telefone;

--apagando uma regra
alter table fornecedor drop constraint forn_codPK;