create database juncao;
use juncao;
create table cargex(
	id_cargo int primary key identity,
	nm_cargo varchar(50) not null unique,
	salario numeric(10,2)
);

create table funcionariex(
	id_fun int primary key identity,
	nm_fun varchar(50) not null,
	fk_cargo int references cargo);
	
	insert into cargex values 
	('Programador Java',10000),
	('Adm Banco de Dados', 15000),
	('Estagiário(a)', 3890),
	('Técnico de Segurança',9800);
	
	insert into funcionariex values 
	('Sandra',1),
	('Marcio',1),
	('Estela',2),
	('Flávio',3),
	('Alessandra',null);
	select * from cargex;
	select * from funcionariex;
-- Junção do tipo equivalente ou por igualdade inner join
select nm_fun, nm_cargo from funcionariex inner join cargex on id_cargo = fk_cargo;

-- Junção do tipo diferença + equivalencia left join ou right join
select nm_fun, nm_cargo from funcionariex left join cargex
on id_cargo = fk_cargo;
select nm_fun, nm_cargo from funcionariex right join cargex on id_cargo = fk_cargo;

-- Junção do tipo diferença left join ou right join 
-- + fk null
select nm_fun, nm_cargo from funcionariex
left join cargex on id_cargo = fk_cargo
where fk_cargo is null;

select nm_fun, nm_cargo from funcionariex right join cargex on id_cargo = fk_cargo
where fk_cargo is null;
