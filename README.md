🌾 Fase 3 – Capítulo 1: Etapas de uma Máquina Agrícola

Este repositório foi criado para armazenar os dados provenientes da coleta de sensores e disponibilizar consultas SQL voltadas à geração e monitoramento de métricas relacionadas ao desempenho agrícola.

⚙️ Execução das Consultas

As consultas estão disponíveis na pasta /script.
Siga as instruções abaixo antes de executá-las:

Importe a base de dados.

O nome da tabela deve ser histsensores.

Configuração dos campos numéricos:

Os campos que contêm valores percentuais (com duas casas decimais) devem ser importados como inteiros, sem ponto decimal.

O tratamento percentual é feito diretamente nas consultas SQL.

Atenção ao separador decimal:

Caso os valores sejam importados com ponto (.) como separador decimal, será necessário ajustar as consultas SQL para refletir essa formatação corretamente.

<p>Importação da base no Oracle</p>
https://youtu.be/BlUPposGB_E

📊 Resultado Esperado

Amostra do conteúdo da base:

<p align="center"> <img width="614" height="489" alt="base" src="https://github.com/user-attachments/assets/61ab0569-9917-46b6-a437-65013d8a3ebb" /> </p>

Resultado da consulta de acidez do solo:

<p align="center"> <img width="562" height="72" alt="acidez_solo" src="https://github.com/user-attachments/assets/64c5366b-6349-41a0-b535-6b93aee3b59f" /> </p>

