CREATE DATABASE db_exe01_sql;

USE db_exe01_sql;

CREATE TABLE Colaboradores (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(200) NOT NULL,
cargo VARCHAR(50) NOT NULL,
salario DECIMAL (8,2) NOT NULL,
admissao DATE NOT NULL,
departamento VARCHAR(20) NOT NULL
);

INSERT INTO Colaboradores(nome, cargo, salario, admissao,
departamento)
VALUES
("LUAN LAZARINE", "Gerente de RH", 4500.00, "2021-04-28", "RH"),
("VITORIA CAROLINA", "Analista de Sistema", 3000.00, "2022-06-21", "TI"),
("PEDRO HENRIQUE", "Assitente Administrativo", 2500.00, "2022-01-07", "ADM"),
("MATHEUS SILVA", "Auxiliar de RH", 2800.00, "2021-08-08", "RH"),
("VITOR MANOEL", "Analista de Suporte", 3500.00, "2023-06-19", "TI");

SELECT * FROM Colaboradores
WHERE salario > 2000.00;

SELECT * FROM Colaboradores
WHERE salario < 2000.00;

UPDATE Colaboradores
SET salario = 2800.00
WHERE ID = 3;
