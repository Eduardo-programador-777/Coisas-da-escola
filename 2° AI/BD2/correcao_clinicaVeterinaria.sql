CREATE DATABASE ClinicaVeterinaria;

USE ClinicaVeterinaria;


CREATE TABLE Cliente(
    id_cliente INT IDENTITY PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    cidade VARCHAR(50)
);

CREATE TABLE Animal(
    id_animal INT IDENTITY PRIMARY KEY,
    nome VARCHAR(50),
    especie VARCHAR(30),
    raca VARCHAR(40),
    idade INT,
    id_cliente INT,
    FOREIGN KEY(id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Consulta(
    id_consulta INT IDENTITY PRIMARY KEY,
    data_consulta DATE,
    valor DECIMAL(10,2),
    diagnostico VARCHAR(100),
    id_animal INT,
    FOREIGN KEY(id_animal) REFERENCES Animal(id_animal)
);


INSERT INTO Cliente(nome,telefone,cidade)
VALUES
('Ana Souza','11999990001','São Paulo'),
('Bruno Lima','11999990002','Campinas'),
('Carlos Mendes','11999990003','Sorocaba'),
('Daniela Rocha','11999990004','São Paulo'),
('Eduardo Silva','11999990005','Jundiaí');


INSERT INTO Animal(nome,especie,raca,idade,id_cliente)
VALUES
('Rex','Cachorro','Labrador',8,1),
('Mimi','Gato','Persa',3,2),
('Luna','Cachorro','Poodle',2,3),
('Pingo','Coelho','Mini Lop',4,4),
('Kiara','Ave','Calopsita',1,5);


INSERT INTO Consulta(data_consulta,valor,diagnostico,id_animal)
VALUES
('2025-03-10',120.00,'Vacinação',1),
('2025-03-15',250.00,'Infecção',2),
('2025-04-01',180.00,'Check-up',3),
('2025-04-20',90.00,'Corte de unhas',4),
('2025-05-05',320.00,'Cirurgia',5);


SELECT * FROM Cliente;

SELECT * FROM Animal;

SELECT * FROM Consulta;

SELECT * FROM Cliente
ORDER BY nome;

SELECT * FROM Animal
ORDER BY idade DESC;

SELECT * FROM Consulta
ORDER BY valor;

SELECT * FROM Animal
WHERE especie='Cachorro';

SELECT * FROM Cliente
WHERE cidade='São Paulo';


SELECT * FROM Animal
WHERE idade>5;

SELECT * FROM Cliente
WHERE cidade='São Paulo'
OR cidade='Campinas';

SELECT * FROM Animal
WHERE especie='Gato'
OR especie='Coelho';

SELECT * FROM Consulta
WHERE valor>100
AND valor<300;

SELECT * FROM Animal
WHERE especie='Cachorro'
AND idade>3;

SELECT * FROM Cliente
WHERE NOT cidade='São Paulo';


SELECT * FROM Animal
WHERE NOT especie='Cachorro';

SELECT * FROM Consulta
WHERE valor BETWEEN 100 AND 250;

SELECT * FROM Animal
WHERE idade BETWEEN 2 AND 8;

SELECT * FROM Cliente
WHERE cidade IN ('São Paulo','Campinas','Sorocaba');

SELECT * FROM Animal
WHERE especie IN ('Cachorro','Gato','Ave');


SELECT * FROM Cliente
WHERE nome LIKE 'A%';

SELECT * FROM Cliente
WHERE nome LIKE '%o';

SELECT * FROM Animal
WHERE nome LIKE '%a%';

SELECT * FROM Cliente
WHERE nome LIKE '%an%';

SELECT * FROM Animal
WHERE nome LIKE '%a';

SELECT * FROM Animal
WHERE especie = 'cachorro' and idade between 2 and 8;

select * from Consulta 
where valor between 100 and 300 and diagnostico != 'Vacinação';

select * from Cliente
where cidade in('São Paulo', 'Campinas') and nome like 'M%';

SELECT cidade, COUNT(*) AS quantidade_clientes
FROM Cliente
GROUP BY cidade;

SELECT especie, COUNT(*) AS quantidade_animais
FROM Animal
GROUP BY especie;

SELECT id_animal, COUNT(*) AS quantidade_consultas
FROM Consulta
GROUP BY id_animal;

SELECT cidade, COUNT(*) AS quantidade_clientes
FROM Cliente
GROUP BY cidade
HAVING COUNT(*) > 1;

SELECT especie, COUNT(*) AS quantidade_animais
FROM Animal
GROUP BY especie
HAVING COUNT(*) >= 1;

SELECT id_animal, SUM(valor) AS total_gasto
FROM Consulta
GROUP BY id_animal
HAVING SUM(valor) > 200;

SELECT DISTINCT cidade
FROM Cliente;

SELECT DISTINCT especie
FROM Animal;

SELECT DISTINCT diagnostico
FROM Consulta;