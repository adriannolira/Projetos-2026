--- 1. RELATÓRIO DE FATURAMENTO E PENDÊNCIAS ---
-- Visão por cliente do que já entrou e do que está travado
SELECT
    cliente_nome,
    SUM(
        CASE
            WHEN status_pedido = 'Sucesso' THEN valor_frete
            ELSE 0
        END
    ) AS total_sucesso,
    COUNT(
        CASE
            WHEN status_pedido = 'Aguardando' THEN 1
        END
    ) AS qtd_aguardando
FROM
    logisticamaster
GROUP BY
    cliente_nome;

--- 2. PERFORMANCE POR REGIÃO (MÉTRICAS DE NEGÓCIO) ---
-- Maior, Menor e Média de frete por cidade
SELECT
    cidade_destino,
    MAX(valor_frete) AS maior_valor,
    MIN(valor_frete) AS menor_valor,
    ROUND(AVG(valor_frete), 2) AS media_valor
FROM
    logisticamaster
WHERE
    status_pedido = 'Sucesso'
GROUP BY
    cidade_destino;

--- 3. ANÁLISE DE SLA (TEMPO DE ENTREGA) ---
-- Identificando gargalos na logística
SELECT
    cliente_nome,
    cidade_destino,
    (data_entrega_real - data_pedido) AS tempo_entrega_dias,
    CASE
        WHEN (data_entrega_real - data_pedido) <= 3 THEN 'No Prazo'
        ELSE 'Atrasado'
    END AS classificacao_sla
FROM
    logisticamaster
WHERE
    status_pedido = 'Sucesso';