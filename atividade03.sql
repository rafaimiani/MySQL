CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(100)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(6,2),
    estoque INT,
    marca VARCHAR(50),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Cosméticos', 'Produtos de beleza'),
('Medicamentos', 'Uso controlado e comum'),
('Higiene', 'Itens de uso pessoal'),
('Suplementos', 'Vitaminas e minerais'),
('Infantil', 'Produtos para crianças');

INSERT INTO tb_produtos (nome, preco, estoque, marca, categoria_id) VALUES
('Shampoo Seda', 25.00, 100, 'Seda', 3),
('Protetor Solar Nivea', 65.00, 80, 'Nivea', 1),
('Vitamina C', 55.00, 50, 'Sundown', 4),
('Sabonete Dove', 7.50, 200, 'Dove', 3),
('Pomada Bepantol', 35.00, 60, 'Bayer', 1),
('Dipirona', 12.00, 300, 'EMS', 2),
('Colônia Infantil', 45.00, 40, 'Johnson', 5),
('Ômega 3', 70.00, 25, 'Now', 4);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id 
WHERE tb_categorias.nome = 'Cosméticos';
