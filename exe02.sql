DROP DATABASE IF EXISTS db_ecommerce;
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2)
);

INSERT INTO tb_produtos (nome, categoria, preco) VALUES
('Smartphone', 'Eletronicos', 1600.00),
('Notebook', 'Eletronicos', 3500.00),
('Camiseta', 'Vestuario', 40.00),
('Caneca', 'Casa', 25.00),
('Fone', 'Acessorios', 90.00),
('Tenis', 'Calcados', 300.00),
('Livro', 'Livros', 80.00),
('Mouse', 'Acessorios', 150.00);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 3300.00 WHERE id = 2;