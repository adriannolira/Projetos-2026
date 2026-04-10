# 🚀 Projeto LogisticaMaster

## 📝 Descrição do Projeto
Este projeto foi desenvolvido para simular a análise de dados de uma empresa de logística real. O objetivo é transformar dados brutos de entregas em indicadores estratégicos (KPIs) para tomada de decisão.

## 🛠️ Tecnologias Utilizadas
* **Excel:** Limpeza inicial e estruturação dos dados.
* **PostgreSQL:** Processamento de grandes volumes, cálculos de SLA e agregações.
* **Power BI:** Visualização de indicadores de performance (Em breve).

## 📊 Problemas de Negócio Resolvidos
1. **Faturamento por Cliente:** Identificação de quanto cada cliente gera de receita vs. pedidos pendentes.
2. **Performance Regional:** Cálculo de frete máximo, mínimo e médio por cidade de destino.
3. **Análise de SLA:** Classificação automática de entregas em "No Prazo" ou "Atrasado" com base na data de pedido e entrega.

## 🔍 Principais Consultas SQL
* Uso de `GROUP BY` e Funções de Agregação (`SUM`, `AVG`, `MAX`, `MIN`).
* Lógica condicional com `CASE WHEN`.
* Manipulação de datas e cálculos de intervalo.