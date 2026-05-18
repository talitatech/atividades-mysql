-- Cria o banco de dados
CREATE DATABASE db_pizzaria_legal;

-- Usa o banco de dados
USE db_pizzaria_legal;

-- Cria a tabela de categorias
CREATE TABLE tb_categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    tipo VARCHAR(30) NOT NULL
);

-- Cria a tabela de pizzas com Foreign Key
CREATE TABLE tb_pizzas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    ingredientes TEXT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere 5 registros na tabela categorias
INSERT INTO tb_categorias (nome_categoria, tipo) VALUES
('Salgada', 'Tradicional'),
('Doce', 'Sobremesa'),
('Vegetariana', 'Sem Carne'),
('Especial', 'Premium'),
('Vegana', 'Sem Origem Animal');

-- Insere 8 registros na tabela pizzas
INSERT INTO tb_pizzas (nome, preco, tamanho, ingredientes, categoria_id) VALUES
('Margherita', 45.00, 'Média', 'Mussarela, manjericão, tomate', 1),
('Calabresa', 55.00, 'Grande', 'Calabresa, cebola, mussarela', 1),
('Portuguesa', 65.00, 'Grande', 'Presunto, ovo, cebola, ervilha', 1),
('Chocolate', 50.00, 'Média', 'Chocolate, morango', 2),
('Banana com Canela', 48.00, 'Média', 'Banana, canela, leite condensado', 2),
('Margherita Vegana', 60.00, 'Média', 'Queijo vegano, manjericão, tomate', 5),
('Quatro Queijos', 70.00, 'Grande', 'Mussarela, provolone, parmesão, gorgonzola', 4),
('Rúcula com Tomate Seco', 62.00, 'Grande', 'Rúcula, tomate seco, mussarela', 3);

-- SELECT pizzas com valor > 45
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- SELECT pizzas com valor entre 50 e 100
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- SELECT com LIKE (letra M no nome)
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- SELECT com INNER JOIN (pizzas + categorias)
SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

-- SELECT com INNER JOIN filtrando categoria específica (Ex: Doce)
SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Doce';