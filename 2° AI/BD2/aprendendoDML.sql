create database escola
use escola

create table estudante(
rm numeric(3) primary key not null,
nome varchar (40) not null,
celular varchar (20)
);

insert into estudante values (1, 'Davi', '97691190');
select * from estudante

--update tabela set campo = valor
--[where condicao];
update aluno set celular = '123456789'
where rm = 1;
select * from estudante

/*
condição 