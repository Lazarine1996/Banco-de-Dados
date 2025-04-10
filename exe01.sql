CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id_classe INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
arma VARCHAR (100) NOT NULL
);

CREATE TABLE tb_personagens(
id_personagem INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
nivel INT NOT NULL, 
ataque INT NOT NULL,
defesa INT NOT NULL,
id_classe INT,
FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_classes(nome, arma)
VALUES
("Assasino", "Faca"),
("Guerreiro", "Espada"),
("Açougueiro", "Facao"),
("Aqrqueiro", "Arco e Flecha"),
("Bruxo", "Magia");

INSERT INTO tb_personagens(nome, nivel, ataque, defesa, id_classe)
VALUES
("KAZUYA", 59, 2700, 1900,1),
("AKUMA", 54, 2100, 3000,2),
("BOGARD", 57, 3000, 1500,2),
("FELICIA", 49, 1500, 2000,3),
("ATENA", 45, 1800, 2100,1),
("SAMUS", 47, 2300, 2700,2),
("MEGA MAN", 59, 2300, 3500,3),
("THOR", 45, 3000, 3200,1);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.nome = tb.classes.nome;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb.classes.id_classe
WHERE tb.classes.nome = "Arqueiro";




