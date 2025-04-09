CREATE DATABASE escola;

USE escola;

CREATE TABLE alunos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(200) NOT NULL,
idade INT NOT NULL,
curso VARCHAR (100) NOT NULL,
nota DECIMAL(4,2) NOT NULL,
data_entrada DATE NOT NULL
);

INSERT INTO alunos (nome, idade, curso, nota, data_entrada)
VALUES
("NATALIA ZILO", 22, "Administração", 9, "2024-03-28"),
("GABI GUIMARÃES", 21, "Fisica", 8.7, "2024-03-01"),
("XHEILA CASTRO", 20, "Direito", 8.3, "2025-01-07"),
("EKATERINA SOKOLOVA", 20, "Fisica", 6.8, "2023-02-08"),
("MIREYA LUIS", 21, "Direito", 7.9, "2024-07-11"),
("PAOLA EGONU", 22, "Administração", 9.6, "2024-03-30"),
("TIJIANA BOSKOVIC", 23, "Direito", 8.6, "2024-02-15"),
("ANA CRISTINA", 22,"Fisica", 9.3, "2025-01-19");

SELECT * FROM alunos
WHERE nota > 7.0;

SELECT * FROM alunos
WHERE nota < 7.0;

UPDATE alunos
SET nota = 7.4
WHERE ID = 4;

