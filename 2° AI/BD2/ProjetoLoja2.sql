create database Loja2;
use Loja2;

create table cliente2(
cod_clie numeric(4) primary key,
nome_clie varchar(20) not null,
endereco varchar(30),
cidade varchar(15),
cep char(8),
uf char(2),
cnpj char(16),
ie char(12),
);
create table vendedor2(
cod_ven numeric(4) primary key,
nome_ven varchar(20) not null,
salario_fixo numeric(10,2),
comissao char(1)
);

create table produto2(
cod_prod numeric(4) primary key,
unidade varchar(3),
descricao varchar(20),
val_unit numeric(8,2),
);

create table pedido2(
num_pedido numeric(4) primary key,
pr_entrenga numeric(3) not null,
cod_ven numeric(4) foreign key references vendedor2(cod_ven),
cod_clie numeric(4) foreign key references cliente2(cod_clie),
);
create table item_pedido2(
num_pedido numeric(4) foreign key references pedido2(num_pedido),
cod_prod numeric(4) foreign key references produto2(cod_prod),
quant numeric(8,2),
);

insert into cliente2 values
(720, 'Ana', 'Rua 17 n.19', 'Niterói', '24358310', 'RJ', '12113231/0001-34', '2134'),
(870, 'Flávio', 'Av. Pres. Vargas, 10', 'São Paulo', '22763931', 'SP', '22534126/9387-9', '4631'),
(110, 'Jorge', 'Rua Caçapó, 13', 'Curitiba', '30078500', 'PR', '14512764/9834-9', NULL),
(222, 'Lúcia', 'Rua Itabira, 123', 'Belo Horizonte', '22124391', 'MG', '283152123/9348-8', '2985'),
(830, 'Mauricio', 'Av. Paulista, 1236', 'São Paulo', '3012683', 'SP', '32816985/7465-6', '9343'),
(130, 'Edmar', 'Rua da Praia, s/n', 'Salvador', '30079300', 'BA', '23463284/234-9', '7121'),
(410, 'Rodolfo', 'Largo da Lapa, 27', 'Rio de Janeiro', '30078900', 'RJ', '12835128/2346-9', '7431'),
(20, 'Beth', 'Av. Cilmênio, 45', 'São Paulo', '25679300', 'SP', '32485126/7326-8', '9280'),
(157, 'Paulo', 'Trav. Moraes, casa 3', 'Londrina', NULL, 'PR', '32848223/324-2', '1923'),
(180, 'Lívio', 'Av. Beira Mar, 1256', 'Florianópolis', '30077500', 'SC', '12736571/2347-4', '1111'),
(260, 'Susana', 'Rua Lopes Mendes, 12', 'Niterói', '30046500', 'RJ', '21763571/232-9', '2530'),
(290, 'Renato', 'Rua Meireles, 123', 'São Paulo', '30225900', 'SP', '13276571/1231-4', NULL),
(390, 'Sebastião', 'Rua da Igreja, 10', 'Uberaba', '30438700', 'MG', '32176547/213-3', '1820'),
(234, 'José', 'Quadra 3, Bl. 3, sl. 1003', 'Brasília', '22841650', 'DF', '21763576/1232-3', '2931');

insert into vendedor2 values
(209, 'José', 1800.00, 'C'),
(111, 'Carlos', 2490.00, 'A'),
(11, 'João', 2780.00, 'C'),
(240, 'Antônio', 9500.00, 'C'),
(720, 'Felipe', 4600.00, 'A'),
(213, 'Jonas', 2300.00, 'A'),
(101, 'João', 2650, 'C'),
(310, 'Josias', 870, 'B'),
(250, 'Maurício', 2930, 'B');

INSERT INTO produto2 VALUES
(25,'KG','Queijo',0.97),
(31,'BAR','Chocolate',0.87),
(78,'L','Vinho',2.00),
(22,'M','Linho',0.11),
(30,'SAC','Açúcar',0.30),
(53,'M','Linha',1.80),
(13,'G','Ouro',6.18),
(45,'M','Madeira',0.25),
(87,'M','Cano',1.97),
(77,'M','Papel',1.05);

INSERT INTO pedido2 VALUES
(121,20,209,410),
(97,20,101,720),
(101,15,101,720),
(137,20,720,720),
(148,20,101,720),
(189,15,213,870),
(104,30,101,110),
(203,30,250,830),
(98,20,209,410),
(143,30,111,20),
(105,30,240,180),
(111,15,240,260),
(103,20,11,260),
(91,20,11,260),
(138,20,11,260),
(108,15,310,290),
(119,30,250,390),
(127,10,11,410);

INSERT INTO item_pedido2 VALUES
(121,25,10),
(121,31,35),
(97,77,20),
(101,31,9),
(101,78,18),
(101,13,5),
(98,77,5),
(148,45,8),
(148,31,7),
(148,77,3),
(148,25,10),
(148,78,30),
(104,53,32),
(203,31,6),
(189,78,45),
(143,31,20),
(143,78,10);

SELECT produto2.cod_prod, produto2.descricao, item_pedido2.quant FROM produto2, item_pedido2 WHERE produto2.cod_prod = item_pedido2.cod_prod AND num_pedido = 148;

