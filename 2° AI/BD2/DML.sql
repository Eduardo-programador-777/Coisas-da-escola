create database aula;
use aula
create table aluno(
	rm numeric(3) not null primary key,
	nome varchar(40) not null,
	celular varchar(14)
);

/*
DML - Data Manipulation Language
INSERT -> Insere dados
UPDATE -> Altera dados
DELETE -> Exclui dados

campos texto e data precisam estar entre (')
*/

insert into aluno values (1, 'Eliane', '9876555');
insert into aluno (rm, nome) values (2, 'Maria');
insert into aluno (rm, celular, nome) values (3,'9098890','Jose');

select * from aluno;

-- update tabela set campo = valor 
-- [where condicao];
update aluno set celular = '987654321'
where rm = 1;

/*
condição => campo OP_Rel valor
operadores aritméticos + - * / ()
operadores relacionais 
>
>=
<
<= 
=
<> ou != (diferente)
operador lógicos: and or not

update funcionario set salario = salario * 1.1, 
comissao = salario * 0.05
where cidade = 'SP' and cargo = 'Vendedor'
*/