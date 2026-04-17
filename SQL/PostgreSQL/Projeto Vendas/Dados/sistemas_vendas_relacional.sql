-- PROJETO: Sistema de Vendas Relacional (Versão 2.0)
-- Objetivo: Demonstrar integridade referencial entre Clientes, Vendedores e Vendas.
-- 1. Limpeza do Ambiente
DROP TABLE IF EXISTS vendas;

DROP TABLE IF EXISTS clientes;

DROP TABLE IF EXISTS vendedores;

-- 2. Tabela de Clientes (Quem compra)
CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100)
);

-- 3. Tabela de Vendedores (Quem vende)
CREATE TABLE vendedores (
    id_vendedor SERIAL PRIMARY KEY,
    nome_vendedor VARCHAR(100)
);

-- 4. Tabela de Vendas (O encontro de ID_Cliente e ID_Vendedor)
CREATE TABLE vendas (
    id_venda SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES clientes(id_cliente),
    id_vendedor INT REFERENCES vendedores(id_vendedor),
    valor NUMERIC(10, 2),
    data_venda DATE DEFAULT CURRENT_DATE
);

-- 5. Povoamento (DML)
INSERT INTO
    clientes (nome, cidade)
VALUES
    ('Adriano', 'Fortaleza'),
    ('Yuna', 'Seul');

INSERT INTO
    vendedores (nome_vendedor)
VALUES
    ('Carlos'),
    ('Ana');

-- Aqui você liga o Cliente 1 ao Vendedor 1
INSERT INTO
    vendas (id_cliente, id_vendedor, valor)
VALUES
    (1, 1, 1200.50),
    (2, 2, 99999.00);

-- 6. Query de Análise (A prova técnica)
SELECT
    v.id_venda,
    c.nome AS nome_cliente,
    vend.nome_vendedor,
    v.valor
FROM
    vendas v
    JOIN clientes c ON v.id_cliente = c.id_cliente
    JOIN vendedores vend ON v.id_vendedor = vend.id_vendedor;