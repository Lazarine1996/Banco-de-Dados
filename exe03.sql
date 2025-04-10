CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id_categoria INT PRIMARY KEY AUTO_INCREMENT,
nome_categoria VARCHAR(255) NOT NULL,
descricao TEXT
);

CREATE TABLE tb_produtos (
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL, 
preco DECIMAL (10,2) NOT NULL,
estoque INT NOT NULL,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
("Medicamentos", "Remédios diversos"),
("Produtos Cosmeticos", "Cuidado do corpo"),
("Higiene Pessoal", "Itens de Higiene"),
("Suplementos", "Suplementos fitness"),
("Infantil", "Produtos de cuidados infantil");

INSERT INTO tb_produtos (nome_produto, descricao, preco, estoque, id_categoria)
VALUES
("Paracetamol", "Antitérmico", 11.50, 50, 1),
("Shampoo Antiqueda", "Antiqueda", 35.90, 100, 2),
("Sabonete Liquido", "Sabonete para corpo", 5.50, 200, 3),
("Vitamina A e B", "Suplemento vitaminico", 49.90, 60, 4),
("Pomada para Assadura", "Contra Assadura de Crianças", 15.30, 60, 5),
("Hidratante Corporal", "Hidratante para a pele", 53.00, 60, 2),
("Dorflex", "Analgésico", 8.99, 160, 1),
("Protetor Solar", "Proteçao solar", 99.90, 45, 2);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produto.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb.categorias.id_categoria
WHERE tb.categorias.nome_categoria = "Cosmeticos";