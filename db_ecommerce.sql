CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_ecommerce(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    tamanho VARCHAR(3),
    preco DECIMAL(6,2),
    unidades INT,
    PRIMARY KEY(id)
);

INSERT INTO tb_ecommerce(nome, tamanho, preco, unidades)
VALUES("Camisa Polo", "M", 100,10),
("Camisa Polo", "P", 90,50),
("Camisa Polo", "G", 100,5),
("Calça Jeans", "34", 200,150),
("Calça Jeans", "38", 250,80),
("Calça Jeans", "40", 250,50),
("Tênis nike", "42", 700,10),
("Relógio", "", 1000,5);

SELECT * FROM tb_ecommerce WHERE preco > 500;
SELECT * FROM tb_ecommerce WHERE preco < 500;

SELECT * FROM tb_ecommerce;

