CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id_categoria INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(100) NOT NULL
);
CREATE TABLE tb_pizzas (
id_pizzas INT PRIMARY KEY AUTO_INCREMENT,
nome_pizza VARCHAR(255) NOT NULL,
valor DECIMAL(5,2) NOT NULL, 
tamanho VARCHAR(255) NOT NULL,
borda BOOLEAN,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias(nome, descricao)
VALUES
("Especial", "Pizza com ingredientes da casa"),
("Tradicional", "Pizza com ingredientes salgados"),
("Doce", "Pizza com ingredientes doces"),
("Vegetariana", "Pizza com ingredientes vegetarianos"),
("Fitness", "Pizza com ingredientes saudáveis");

INSERT INTO tb_pizzas (nome_pizza, valor, tamanho, borda, id_categoria)
VALUES
("Nutella com Morango", 55.90, "Grande", 0, 3),
("Moda da Casa", 69.70, "Grande", 0, 1),
("Frango com Catupity", 46.00, "Media", 1, 2),
("Vegetariana", 49.90, "Pequena", 1, 4),
("Pizza Integral", 62.80, "Pequena", 0, 5),
("Quatro Queijos", 52.60, "Media", 0, 2),
("Bana com Canela", 42.00 , "Grande", 1, 3),
("Margerita", 38.00, "Media", 0, 2);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON id_categoria = id_categoria;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb.categorias.id_categoria
WHERE tb.categorias.id_categoria = "Doce";