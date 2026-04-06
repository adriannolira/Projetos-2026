
	-- Criação da tabela clientes
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100),
    idade INT
);

-- Inserção de dados iniciais
INSERT INTO clientes (nome, cidade, idade) VALUES
('Adriano', 'Fortaleza', 31),
('Letícia', 'Brasília', 21),
('Nicoly', 'São Paulo', 25),
('Yuna', 'Seol', 22)
('Tereza', 'Fortaleza', 56);

-- Consulta simples
SELECT * FROM clientes;

-- Clientes de Fortaleza
SELECT *
FROM clientes
WHERE cidade = 'Fortaleza';

-- Quantidade por cidade
SELECT cidade, COUNT(*)
FROM clientes
GROUP BY cidade;

-- Cidades com mais de 1 cliente
SELECT cidade, COUNT(*)
FROM clientes
GROUP BY cidade
HAVING COUNT(*) > 1;
