CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
	cargo VARCHAR(255) NOT NULL,
	idade INT NOT NULL,
    salario DECIMAL(6,2),
    PRIMARY KEY(id)
);

INSERT INTO tb_colaboladores(nome, cargo, idade,salario)
VALUES("José Silva", "Desenvolvedor back-end Senior", 45, 7000),
("Mariana Andrade","CEO",38,9800),
("José Silva", "Desenvolvedora Front-end Pleno",27,4000),
("Anderson Maia", "Desenvolvedor back-end Jr",26, 3000),
("Ana Antunes", "Analista de projetos", 35,5000);

SELECT * FROM tb_colaboradores;
SHOW TABLES;
