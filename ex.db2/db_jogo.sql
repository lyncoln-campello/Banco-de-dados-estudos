CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
ferramentas VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classes(tipo, ferramentas)
values ("Mago","Cetro Mágico"),
("Guerreiro", "Espada e Escudo"), 
("Espadachim", "Espada longa"),
("Curandeiro", "Pergaminhos"),
("Bárbaro", "Machado"); 

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
vida BIGINT,
ataque BIGINT NOT NULL,
magia BIGINT,
PRIMARY KEY (id)
);

ALTER TABLE tb_personagens ADD classesid BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_classe_personagem
FOREIGN KEY (classesid) REFERENCES tb_classes (id);

INSERT INTO tb_personagens(nome, vida, ataque, magia, classesid)
VALUES ("Merlin", 2000, 400, 2400, 1),  -- Mago
    ("Arthur", 2300, 2200, 300, 2),  -- Guerreiro
    ("Dante", 2100, 2400, 700, 3),   -- Espadachim
    ("Sophia", 1700, 200, 1900, 4),  -- Curandeiro
    ("Conan", 2500, 2500, 150, 5),   -- Bárbaro
    ("Morgana", 1800, 300, 2400, 1),  -- Mago
    ("Lancelot", 2200, 1900, 200, 2), -- Guerreiro
    ("Zoro", 2100, 2300, 500, 3),     -- Espadachim
    ("Helena", 1600, 150, 1800, 4),   -- Curandeiro
    ("Ragnar", 2500, 2400, 100, 5);   -- Bárbaro
    
select * from tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE ataque < 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT tb_personagens.*, tb_classes.*
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classesid = tb_classes.id;

SELECT tb_personagens.*, tb_classes.*
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classesid = tb_classes.id
WHERE tb_classes.tipo = "Mago";

