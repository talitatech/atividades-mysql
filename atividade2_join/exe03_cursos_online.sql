-- Cria o banco de dados
CREATE DATABASE db_curso_da_minha_vida;

-- Usa o banco de dados
USE db_curso_da_minha_vida;

-- Cria a tabela de categorias
CREATE TABLE tb_categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    area VARCHAR(30) NOT NULL
);

-- Cria a tabela de cursos com Foreign Key
CREATE TABLE tb_cursos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    carga_horaria INT NOT NULL,
    professor VARCHAR(50) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere 5 registros na tabela categorias
INSERT INTO tb_categorias (nome_categoria, area) VALUES
('Programação', 'Tecnologia'),
('Banco de Dados', 'Tecnologia'),
('Front-end', 'Design'),
('Data Science', 'Análise'),
('DevOps', 'Infraestrutura');

-- Insere 8 registros na tabela cursos
INSERT INTO tb_cursos (nome, valor, carga_horaria, professor, categoria_id) VALUES
('Java Fundamentals', 650.00, 40, 'Prof. Ricardo', 1),
('MySQL para Iniciantes', 450.00, 30, 'Profa. Carla', 2),
('Spring Boot Expert', 850.00, 50, 'Prof. André', 1),
('React JS', 550.00, 35, 'Profa. Mariana', 3),
('Python para Dados', 750.00, 45, 'Prof. Lucas', 4),
('JavaScript Avançado', 520.00, 40, 'Profa. Fernanda', 1),
('AWS Cloud Practitioner', 900.00, 60, 'Prof. Gustavo', 5),
('Docker e Kubernetes', 680.00, 35, 'Prof. Rafael', 5);

-- SELECT cursos com valor > 500
SELECT * FROM tb_cursos WHERE valor > 500.00;

-- SELECT cursos com valor entre 600 e 1000
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

-- SELECT com LIKE (letra J no nome do curso)
SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

-- SELECT com INNER JOIN (cursos + categorias)
SELECT * FROM tb_cursos 
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;

-- SELECT com INNER JOIN filtrando categoria específica (Ex: Programação)
SELECT * FROM tb_cursos 
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Programação';