-- Simulando a tabela que o cliente te entregou (com dados fictícios)
CREATE TABLE logs_logistica_brutos (
    cod_rastreio VARCHAR(50),
    cliente_nome VARCHAR(100),
    cidade_destino VARCHAR(50),
    valor_frete DECIMAL(10, 2),
    status_pedido VARCHAR(20) -- 'Sucesso', 'Aguardando', 'Cancelado'
);

INSERT INTO
    logs_logistica_brutos
VALUES
    (
        'BR1001',
        'Oficina do Zé',
        'São Paulo',
        45.00,
        'Sucesso'
    ),
    (
        'BR1002',
        'Padaria Central',
        'Rio de Janeiro',
        80.00,
        'Aguardando'
    ),
    (
        'BR1003',
        'Oficina do Zé',
        'São Paulo',
        35.00,
        'Sucesso'
    ),
    (
        'BR1004',
        'Loja da Maria',
        'Belo Horizonte',
        120.00,
        'Sucesso'
    ),
    (
        'BR1005',
        'Padaria Central',
        'Rio de Janeiro',
        55.00,
        'Cancelado'
    ),
    (
        'BR1006',
        'Oficina do Zé',
        'São Paulo',
        45.00,
        'Aguardando'
    );