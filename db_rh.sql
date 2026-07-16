-- 1. Criação do banco de dados
CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores (
    id_colaborador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE NOT NULL,
    departamento VARCHAR(100) NOT NULL
);

INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao, departamento) VALUES
('Ana Beatriz', 'Analista de RH', 2800.00, '2022-03-10', 'Recursos Humanos'),
('Carlos Eduardo', 'Desenvolvedor', 4500.00, '2021-07-22', 'Tecnologia'),
('Fernanda Lima', 'Assistente Administrativo', 1800.00, '2023-01-15', 'Administrativo'),
('Ricardo Alves', 'Gerente de Vendas', 6200.00, '2019-11-05', 'Comercial'),
('Juliana Costa', 'Estagiária', 1500.00, '2024-02-01', 'Marketing'),
('Marcos Vinícius', 'Analista Financeiro', 3900.00, '2020-06-18', 'Financeiro');
 
-- SELECT com salário > 2000
SELECT * FROM tb_colaboradores
WHERE salario > 2000;
 
-- SELECT com salário < 2000
SELECT * FROM tb_colaboradores
WHERE salario < 2000;
 
-- Atualização de salário
UPDATE tb_colaboradores
SET salario = 3000.00
WHERE nome = 'Ana Beatriz';