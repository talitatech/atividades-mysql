-- Cria o banco de dados
CREATE DATABASE db_escola;

-- Seleciona o banco
USE db_escola;

-- Cria a tabela de estudantes
CREATE TABLE tb_estudantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    turma VARCHAR(10) NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(150)
);

-- Insere 8 registros
INSERT INTO tb_estudantes (nome, turma, nota, data_nascimento, endereco) VALUES
('Lucas Andrade', '3A', 8.5, '2012-05-15', 'Rua A, 123'),
('Fernanda Costa', '3B', 6.0, '2012-08-22', 'Rua B, 456'),
('Rafael Oliveira', '3A', 9.0, '2011-11-30', 'Rua C, 789'),
('Beatriz Santos', '3B', 5.5, '2012-02-10', 'Rua D, 101'),
('Thiago Lima', '3A', 7.5, '2012-07-18', 'Rua E, 202'),
('Camila Rocha', '3B', 4.0, '2012-09-25', 'Rua F, 303'),
('Pedro Henrique', '3A', 8.0, '2011-12-05', 'Rua G, 404'),
('Juliana Alves', '3B', 6.5, '2012-03-12', 'Rua H, 505');

-- SELECT nota maior que 7.0
SELECT * FROM tb_estudantes WHERE nota > 7.0;

-- SELECT nota menor que 7.0
SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- Atualiza um registro (aumenta nota da Fernanda)
UPDATE tb_estudantes SET nota = 7.0 WHERE id = 2;