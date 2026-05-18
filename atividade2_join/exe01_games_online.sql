-- Cria o banco de dados
CREATE DATABASE db_generation_game_online;

-- Usa o banco de dados
USE db_generation_game_online;

-- Cria a tabela de classes
CREATE TABLE tb_classes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_classe VARCHAR(50) NOT NULL,
    tipo VARCHAR(30) NOT NULL
);

-- Cria a tabela de personagens com Foreign Key
CREATE TABLE tb_personagens (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- Insere 5 registros na tabela classes
INSERT INTO tb_classes (nome_classe, tipo) VALUES
('Arqueiro', 'Distância'),
('Guerreiro', 'Corpo a Corpo'),
('Mago', 'Magia'),
('Assassino', 'Agilidade'),
('Clerigo', 'Suporte');

-- Insere 8 registros na tabela personagens
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
('Legolas', 2500, 1200, 35, 1),
('Aragorn', 1800, 2500, 40, 2),
('Gandalf', 3000, 1800, 50, 3),
('Arqueiro Negro', 2200, 900, 28, 1),
('Shadow', 2800, 800, 32, 4),
('Curo', 800, 2000, 25, 5),
('Thorin', 1900, 2200, 38, 2),
('Mago Branco', 1500, 1500, 30, 3);

-- SELECT poder de ataque > 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- SELECT poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- SELECT com LIKE (letra C no nome)
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- SELECT com INNER JOIN (personagens + classes)
SELECT * FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

-- SELECT com INNER JOIN filtrando classe específica (Ex: Arqueiro)
SELECT * FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome_classe = 'Arqueiro';