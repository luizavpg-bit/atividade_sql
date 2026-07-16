-- 1. Criação do banco de dados
CREATE DATABASE db_ecommerce;
USE db_ecommerce;
 
CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    marca VARCHAR(100) NOT NULL
);

INSERT INTO tb_produtos (nome, categoria, valor, quantidade_estoque, marca) VALUES
('Notebook Gamer', 'Informática', 4500.00, 8, 'Dell'),
('Fone Bluetooth', 'Acessórios', 150.00, 40, 'JBL'),
('Smartphone X20', 'Celulares', 2300.00, 15, 'Samsung'),
('Mouse Sem Fio', 'Acessórios', 89.90, 60, 'Logitech'),
('Smart TV 50"', 'Eletrônicos', 2100.00, 10, 'LG'),
('Cadeira Gamer', 'Móveis', 899.00, 12, 'ThunderX3'),
('Teclado Mecânico', 'Acessórios', 320.00, 25, 'Redragon'),
('Caixa de Som Bluetooth', 'Acessórios', 199.90, 30, 'JBL'),
('Monitor 27"', 'Informática', 1200.00, 18, 'AOC');
 
-- SELECT com valor > 500
SELECT * FROM tb_produtos
WHERE valor > 500;
 
-- SELECT com valor < 500
SELECT * FROM tb_produtos
WHERE valor < 500;
 
-- Atualização do preço
UPDATE tb_produtos
SET valor = 4200.00
WHERE nome = 'Notebook Gamer';