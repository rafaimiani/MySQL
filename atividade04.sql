CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50),
    origem VARCHAR(50)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(6,2),
    peso DECIMAL(5,2),
    fornecedor VARCHAR(50),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, origem) VALUES
('Bovina', 'Fazenda São João'),
('Suína', 'Fazenda Verde'),
('Aves', 'Granja Boa Vista'),
('Peixes', 'Marítima'),
('Frutas', 'Sítio da Serra');

INSERT INTO tb_produtos (nome, preco, peso, fornecedor, categoria_id) VALUES
('Picanha', 120.00, 1.00, 'Friboi', 1),
('Linguiça Toscana', 40.00, 1.00, 'Sadia', 2),
('Frango Inteiro', 30.00, 2.00, 'Perdigão', 3),
('Salmão', 150.00, 1.50, 'Noron', 4),
('Banana', 6.00, 1.00, 'Sítio Verde', 5),
('Alcatra', 90.00, 1.00, 'Friboi', 1),
('Costelinha Suína', 75.00, 1.20, 'Seara', 2),
('Tilápia', 60.00, 1.00, 'Noron', 4);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id 
WHERE tb_categorias.tipo = 'Aves';
