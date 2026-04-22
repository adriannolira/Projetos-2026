📊 Projeto Vendas: Modelagem Relacional & Dashboard
📝 Descrição
Este projeto foca na transição de uma estrutura de dados plana (flat table) para um Modelo Relacional (Star Schema). O objetivo principal foi garantir a integridade dos dados e a escalabilidade da análise de vendas utilizando IDs únicos para produtos e vendedores, eliminando redundâncias e erros de digitação.

🛠️ Tecnologias Utilizadas
Excel Desktop: Utilizado como repositório de dados brutos e entrada de informações.

Power BI: Modelagem de dados, criação de relacionamentos e desenvolvimento de dashboard.

DAX (Data Analysis Expressions): Criação de medidas dinâmicas para cálculos de faturamento e performance.

PostgreSQL (Próxima Fase): Migração da base para ambiente SQL para suporte a grandes volumes.

🏗️ Arquitetura de Dados
O projeto utiliza um Esquema Estrela (Star Schema) composto por:

Tabela Fato (Vendas): Contém os registros de transações (ID Venda, ID Produto, ID Vendedor, Quantidade).

Tabelas Dimensão (Produtos e Vendedores): Contêm as "certidões de nascimento" dos itens e colaboradores, garantindo uma Verdade Única no sistema.

📊 Problemas de Negócio Resolvidos
Integridade Referencial: Uso de IDs (Chaves Estrangeiras) para evitar nomes duplicados ou escritos de forma errada.

Performance por Vendedor: Dashboard funcional que permite analisar o desempenho individual (incluindo novos membros como o vendedor Ryu, ID 8).

Análise de Receita Dinâmica: Cálculos realizados diretamente no Power BI, mantendo o arquivo de origem (Excel) leve e limpo.

🚀 Como Visualizar
Baixe o arquivo .pbix presente neste repositório.

Abra no Power BI Desktop.

Certifique-se de que o arquivo Excel de origem está na mesma pasta para realizar a atualização dos dados (Refresh).