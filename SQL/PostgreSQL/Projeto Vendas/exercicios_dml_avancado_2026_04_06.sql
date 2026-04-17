-- Select all rows'
-- Select all rows from 'VENDAS'
UPDATE
    VENDAS
SET
    valor = valor * 1.05
WHERE
    id_cliente IN (
        SELECT
            id_cliente
        FROM
            CLIENTES
        WHERE
            cidade = 'Fortaleza'
    );

INSERT INTO
    vendas (id_cliente, id_vendedor, valor, data_venda)
VALUES
    (3, 2, 999.00, '2026-04-06');

UPDATE
    vendas v
SET
    valor = valor * 1.10
FROM
    clientes c
WHERE
    v.id_cliente = c.id_cliente
    AND c.cidade = 'incheon';

ALTER TABLE
    vendedores
ALTER COLUMN
    nome_vendedor TYPE VARCHAR(100);

SELECT
    *
FROM
    clientes
WHERE
    nome LIKE '%Hae%';

SELECT
    v.id_venda,
    c.nome AS nome_cliente,
    v.id_vendedor,
    z.nome_vendedor,
    v.valor,
    v.data_venda
FROM
    vendas v
    JOIN clientes c ON v.id_cliente = c.id_cliente
    JOIN vendedores z ON v.id_vendedor = z.id_vendedor
ORDER BY
    v.id_venda;

SELECT
    v.id_venda,
    c.nome as cliente,
    v.valor,
    CASE
        WHEN v.valor < 1000 THEN 'Baixa'
        WHEN v.valor >= 1000
        AND v.valor < 1500 THEN 'Média'
        ELSE 'Alta'
    END AS nível
FROM
    vendas v
    JOIN clientes c ON v.id_cliente = c.id_cliente