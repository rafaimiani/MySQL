
-- =========================================================
-- ATIVIDADE 1 - DB Generation Game Online
-- =========================================================

CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- Tabela de classes
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    tipo_ataque VARCHAR(50),
    nivel_dificuldade VARCHAR(20)
);

-- Tabela de personagens
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    poder_ataque INT,
    poder_defesa INT,
    nivel INT,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- Inserção de classes
INSERT INTO tb_classes (nome, tipo_ataque, nivel_dificuldade) VALUES
('Guerreiro', 'Corpo a corpo', 'Fácil'),
('Arqueiro', 'Longo alcance', 'Médio'),
('Mago', 'Magia', 'Difícil'),
('Assassino', 'Stealth', 'Difícil'),
('Cavaleiro', 'Defensivo', 'Médio');

-- Inserção de personagens
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
('Luna', 2500, 1500, 18, 3),
('Drake', 1800, 800, 10, 1),
('Cassia', 2200, 1700, 20, 2),
('Ronan', 900, 2500, 12, 5),
('Kira', 2600, 1200, 22, 4),
('Talon', 1100, 1000, 8, 1),
('Celine', 1900, 950, 9, 2),
('Morgana', 2800, 1300, 25, 3);

-- SELECTs
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;
SELECT * FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = 'Arqueiro';



