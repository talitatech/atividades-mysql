-- Cria o banco de dados
CREATE DATABASE db_rh;

-- Seleciona o banco
USE db_rh;

-- Cria a tabela de colaboradores
CREATE TABLE tb_colaboradores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE NOT NULL,
    departamento VARCHAR(50)
);

-- Insere 5 registros
INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao, departamento) VALUES
('Ana Silva', 'Desenvolvedora', 3500.00, '2023-01-15', 'TI'),
('Carlos Souza', 'Analista', 1800.00, '2024-02-20', 'Financeiro'),
('Mariana Lima', 'Gerente', 5500.00, '2022-05-10', 'RH'),
('José Santos', 'Assistente', 1500.00, '2024-03-01', 'Administrativo'),
('Patrícia Dias', 'Coordenadora', 4200.00, '2023-08-22', 'Marketing');

-- SELECT salário maior que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- SELECT salário menor que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Atualiza um registro (aumenta salário do Carlos)
UPDATE tb_colaboradores SET salario = 2200.00 WHERE id = 2;