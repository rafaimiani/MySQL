CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50),
    tamanho VARCHAR(20)
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    ingredientes VARCHAR(255),
    valor DECIMAL(6,2),
    borda_recheada BOOLEAN,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, tamanho) VALUES
('Salgada', 'Grande'),
('Doce', 'Média'),
('Vegana', 'Pequena'),
('Especial', 'Grande'),
('Tradicional', 'Média');

INSERT INTO tb_pizzas (nome, ingredientes, valor, borda_recheada, categoria_id) VALUES
('Mussarela', 'Queijo e molho de tomate', 40.00, TRUE, 5),
('Calabresa', 'Calabresa e cebola', 48.00, TRUE, 1),
('Chocolate', 'Chocolate e morango', 55.00, FALSE, 2),
('Brócolis', 'Brócolis e alho', 45.00, TRUE, 3),
('Frango Catupiry', 'Frango e catupiry', 60.00, TRUE, 4),
('Marguerita', 'Tomate e manjericão', 42.00, FALSE, 5),
('Romeu e Julieta', 'Goiabada e queijo', 50.00, FALSE, 2),
('Pepperoni', 'Pepperoni e queijo', 65.00, TRUE, 1);

SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id 
WHERE tb_categorias.tipo = 'Doce';
