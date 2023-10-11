# SQL_comandos_DML_PBL
Este repositório é um estudo sobre operações avançadas em bancos de dados usando SQL e PL/SQL. O foco está na população de dados na nova versão do projeto SGV (Sistema de Gerenciamento de Vídeos), para um e-commerce, usando instruções DML (Data Manipulation Language) e PL/SQL.

* DML (Data Manipulation Language),
* PL/SQL.

# Ferramenta usada
Oracle SQL Data Modeler


# Proposta:

**Entregas Técnicas:**

## Script DML

Arquivo_comandos_DML.sql - popula dados iniciais na nova versão do projeto SGV.

## Código Fonte do Bloco Anônimo em Oracle PL/SQL

O código fonte do bloco anônimo em Oracle PL/SQL responsável pela carga de dados para a tabela MC_SGV_OCORRENCIA_SAC, seguindo as regras de negócio informadas. Entregue este código em um arquivo de texto com extensão Arquivo_1_3_comandos_PBL.sql.

**Parte 1**
Nesta seção, demonstramos um bloco PL/SQL que usa um cursor para recuperar informações de um banco de dados. Os dados são relacionados a ocorrências de SAC (Serviço de Atendimento ao Cliente) em um cenário fictício da empresa "Melhores Compras". O bloco PL/SQL recupera informações detalhadas, como número de SAC, data de abertura, tipo de SAC, código do produto, entre outros.

**Parte 2**
A segunda parte deste repositório apresenta um bloco PL/SQL que não apenas recupera informações de ocorrências de SAC, mas também realiza várias operações adicionais. Aqui estão algumas das ações realizadas:

- Transformação do tipo de SAC em uma descrição mais legível, como 'SUGESTÃO', 'DÚVIDA', 'ELOGIO', ou 'CLASSIFICAÇÃO INVÁLIDA'.
- Cálculo do valor do lucro unitário sobre o produto.
- Recuperação de informações de estado com base no cliente.
- Cálculo do valor médio do ICMS do estado.
- Inserção de dados na tabela MC_SGV_OCORRÊNCIA_SAC com informações adicionais calculadas.

**Parte 3**
Após a inserção dos dados na tabela MC_SGV_OCORRÊNCIA_SAC, é realizada uma consulta para verificar os dados inseridos na tabela.

## Reflexões sobre a LGPD**
Arquivo_1_4_Necessidade_do_sigilo_e_propriedade_dados.docx

# Para este projeto e como parte da FASE 3 do curso de Data Science da Faculdade FIAP, foram estudados os seguintes tópicos:

### Comandos DQL/DRS
SQL: Comandos DQL/DRS - Grupos e agrupamento    	   	   	   
SQL: Comandos DQL/DRS - Subconsultas    	   	   	   
SQL: Comandos DQL/DRS - Funções    	   	   	   

### Comandos PL/SQL
PL/SQL - Conceitos    	   	   	   
PL/SQL - Estruturas de Controle    	   	   	   
PL/SQL - Cursores    	   	   	   
PL/SQL - Tratamento de Exceções

### Governança de Dados e LGPD
Governança de Dados    	   	   	   
Arquitetura de Soluções Tecnológicas    	   	   	   
Requisitos para projetos de banco de dados    	   	   	   
LGPD - Lei Geral de Proteção de Dados
