CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;


CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT,
    tipo_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_categoria)
);


CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT,
    nome_produto VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    fabricante VARCHAR(50) NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_categorias (tipo_categoria, descricao_categoria) VALUES 
("Medicamentos", "Produtos farmacêuticos e medicamentos controlados"),
("Cosméticos", "Produtos de beleza e higiene pessoal"),
("Suplementos", "Vitaminas e suplementos alimentares"),
("Infantil", "Produtos para bebês e crianças"),
("Bem-estar", "Produtos para cuidados com a saúde e conforto");


INSERT INTO tb_produtos (nome_produto, preco, estoque, fabricante, id_categoria) VALUES
("Paracetamol", 25.00, 50, "Farmabem", 1),
("Shampoo Anticaspa", 45.00, 30, "Beleza Plus", 2),
("Vitamina C", 55.00, 20, "NutriVida", 3),
("Pomada para Assaduras", 18.00, 40, "BabyCare", 4),
("Protetor Solar", 65.00, 15, "SunHealth", 2),
("Óleo Essencial", 70.00, 10, "Aroma Vida", 5),
("Fralda Descartável", 60.00, 25, "BabySoft", 4),
("Colágeno em Pó", 40.00, 12, "NutriSkin", 3);


SELECT * FROM tb_produtos WHERE preco > 50;


SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;


SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";


SELECT tb_produtos.*, tb_categorias.*
FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria;


SELECT tb_produtos.*, tb_categorias.*
FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.tipo_categoria = "Cosméticos";


