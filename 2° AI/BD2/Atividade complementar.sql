create DATABASE ClinicaVeterinaria2
use ClinicaVeterinaria2

create table Cliente(
id_cliente int primary key,
nome varchar(100) not null,
telefone varchar(20) not null,
cidade varchar(100) not null
);

create table Animal(
id_animal int primary key,
nome varchar(100) not null,
especie varchar(100) not null,
raca varchar(100) not null,
idade int,
id_cliente int,
foreign key (id_cliente) references Cliente(id_cliente)
);

create table Consulta(
id_consulta int primary key,
data_consulta DATE DEFAULT CAST(GETDATE() AS DATE) not null,
valor decimal(10,2) not null,
diagnostico varchar(100) not null,
id_animal int,
FOREIGN KEY (id_animal) REFERENCES Animal(id_animal)
);

INSERT INTO Cliente (id_cliente, nome, telefone, cidade)
VALUES
(1, 'João Silva', '11999990001', 'São Paulo'),
(2, 'Maria Oliveira', '21999990002', 'Rio de Janeiro'),
(3, 'Carlos Souza', '31999990003', 'Belo Horizonte'),
(4, 'Ana Pereira', '41999990004', 'Curitiba'),
(5, 'Fernanda Lima', '51999990005', 'Porto Alegre');

INSERT INTO Animal (id_animal, nome, especie, raca, idade, id_cliente)
VALUES
(1, 'Rex', 'Cachorro', 'Labrador', 5, 1),
(2, 'Mimi', 'Gato', 'Siamês', 3, 2),
(3, 'Thor', 'Cachorro', 'Pastor Alemão', 4, 3),
(4, 'Luna', 'Gato', 'Persa', 2, 4),
(5, 'Pipoca', 'Coelho', 'Mini Lion', 1, 5);

INSERT INTO Consulta (id_consulta, data_consulta, valor, diagnostico, id_animal)
VALUES
(1, '2026-07-20', 150.00, 'Vacinação', 1),
(2, '2026-07-21', 200.00, 'Consulta de rotina', 2),
(3, '2026-07-22', 350.00, 'Infecção de ouvido', 3),
(4, '2026-07-23', 180.00, 'Alergia', 4),
(5, '2026-07-24', 120.00, 'Exame geral', 5);

-- Exercício 1
SELECT * FROM Cliente;

-- Exercício 2
SELECT * FROM Animal;

-- Exercício 3
SELECT * FROM Consulta;

-- Exercício 4
SELECT * FROM Cliente
ORDER BY nome ASC;

-- Exercício 5
SELECT * FROM Animal
ORDER BY idade DESC;

-- Exercício 6
SELECT * FROM Consulta
ORDER BY valor ASC;

-- Exercício 7
SELECT * FROM Animal
WHERE especie = 'Cachorro';

-- Exercício 8
SELECT * FROM Cliente
WHERE cidade = 'São Paulo';

-- Exercício 9
SELECT * FROM Animal
WHERE idade > 5;

-- Exercício 10
SELECT * FROM Cliente
WHERE cidade = 'São Paulo'
   OR cidade = 'Campinas';

-- Exercício 11
SELECT * FROM Animal
WHERE especie = 'Gato'
   OR especie = 'Coelho';

-- Exercício 12
SELECT * FROM Consulta
WHERE valor > 100
  AND valor < 300;

-- Exercício 13
SELECT * FROM Animal
WHERE especie = 'Cachorro'
  AND idade > 3;

-- Exercício 14
SELECT * FROM Cliente
WHERE cidade <> 'São Paulo';

-- Exercício 15
SELECT * FROM Animal
WHERE especie <> 'Cachorro';

-- Exercício 16
SELECT * FROM Consulta
WHERE valor BETWEEN 100 AND 250;

-- Exercício 17
SELECT * FROM Animal
WHERE idade BETWEEN 2 AND 8;

-- Exercício 18
SELECT * FROM Cliente
WHERE cidade IN ('São Paulo', 'Campinas', 'Sorocaba');

-- Exercício 19
SELECT * FROM Animal
WHERE especie IN ('Cachorro', 'Gato', 'Ave');

-- Exercício 20a
SELECT * FROM Cliente
WHERE nome LIKE 'A%';

-- Exercício 20b
SELECT * FROM Cliente
WHERE nome LIKE '%o';

-- Exercício 20c
SELECT * FROM Animal
WHERE nome LIKE '%a%';

-- Exercício 20d
SELECT * FROM Cliente
WHERE nome LIKE '%an%';

-- Exercício 20e
SELECT * FROM Animal
WHERE nome LIKE '%a';

-- Exercício 21
SELECT * FROM Animal
WHERE especie = 'Cachorro'
  AND idade BETWEEN 2 AND 8;

-- Exercício 22
SELECT * FROM Consulta
WHERE valor BETWEEN 100 AND 300
  AND diagnostico <> 'Vacinação';

-- Exercício 23
SELECT * FROM Cliente
WHERE (cidade = 'São Paulo'
    OR cidade = 'Campinas')
  AND nome LIKE 'M%';