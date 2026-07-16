CREATE DATABASE db_registro_escola;
USE db_registro_escola;

CREATE TABLE tb_estudantes (
    id_estudante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    turma VARCHAR(50) NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    frequencia DECIMAL(5,2) NOT NULL
);

INSERT INTO tb_estudantes (nome, idade, turma, nota, frequencia) VALUES
('Beatriz Souza', 15, '9º Ano A', 8.5, 95.00),
('Gabriel Martins', 16, '1º Médio B', 6.2, 87.50),
('Larissa Fernandes', 14, '8º Ano C', 9.0, 98.00),
('Pedro Henrique', 17, '2º Médio A', 5.8, 76.30),
('Camila Rocha', 15, '9º Ano B', 7.4, 90.00),
('Vinícius Almeida', 16, '1º Médio A', 6.9, 82.00),
('Sophia Ribeiro', 14, '8º Ano A', 9.5, 99.00),
('Matheus Cardoso', 17, '2º Médio B', 4.9, 70.00),
('Isabela Nunes', 15, '9º Ano C', 8.1, 93.50);
 
-- SELECT com nota > 7.0
SELECT * FROM tb_estudantes
WHERE nota > 7.0;
 
-- SELECT com nota < 7.0
SELECT * FROM tb_estudantes
WHERE nota < 7.0;
 
-- Atualização da nota
UPDATE tb_estudantes
SET nota = 7.5
WHERE nome = 'Gabriel Martins';
 