CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL,
    descricao  VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT,
    nome_pizza VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    massa VARCHAR(20) NOT NULL, 
    borda VARCHAR(20) NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id)
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (tipo, descricao) VALUES 
("Tradicional", "Receitas clássicas e populares"),
("Premium", "Pizzas com ingredientes sofisticados"),
("Vegana", "Sem produtos de origem animal"),
("Doce", " Sabores sobremesas"),
("Fitness", "Opções saudáveis");

INSERT INTO tb_pizzas (nome_pizza, preco, massa, borda, id_categoria) VALUES
("Margherita", 30.00, "Fina", "Simples", 1),
("Calabresa", 35.00, "Grossa", "Recheada", 1),
("Trufa Negra", 70.00, "Fina", "Simples", 2),
("Quatro Queijos", 50.00, "Grossa", "Simples", 2),
("Vegana Supreme", 40.00, "Integral", "Simples", 3),
("Chocolate com Morango", 25.00, "Grossa", "Recheada", 4),
("Banana com Canela", 20.00, "Fina", "Simples", 4),
("Integral Vegetariana", 38.00, "Integral", "Recheada", 5);

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
 
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%m%"; 

SELECT tb_categorias.*, tb_pizzas.*
FROM tb_categorias INNER JOIN tb_pizzas 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT tb_pizzas.*, tb_categorias.*
FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.tipo = "Doce";
