# 🧃 Projeto Banco de Dados "Sucos Vendas" (SQL Server)

## 1. 📝 Descrição do Projeto

Este projeto implementa um banco de dados relacional em SQL Server para a empresa fictícia "Frutally". Com o crescimento da empresa, surgiu a necessidade de uma solução mais robusta para gerenciar dados de produtos, vendas e funcionários, permitindo a realização de consultas e a tomada de decisões estratégicas baseadas em dados.

O script SQL fornecido é um arquivo completo que gerencia todo o ciclo de vida básico do banco de dados, desde sua criação até a execução de consultas e manipulação de dados.

## 2. 💻 Tecnologias Utilizadas

* **SGBD:** SQL Server
* **Linguagem:** T-SQL (Transact-SQL)

## 3. 🗄️ Estrutura do Banco de Dados (Schema)

O banco de dados `SUCOS_VENDAS` é composto por três tabelas principais:

### `[TABELA DE CLIENTES]`

Armazena as informações cadastrais dos clientes.

* `[CPF]` (CHAR(11), PK): Chave primária, CPF do cliente.
* `[NOME]` (VARCHAR(150))
* `[RUA]` (VARCHAR(150))
* `[COMPLEMENTO]` (VARCHAR(150))
* `[BAIRRO]` (VARCHAR(150))
* `[CEP]` (CHAR(8))
* `[DATA DE NASCIMENTO]` (DATE)
* `[IDADE]` (SMALLINT)
* `[SEXO]` (CHAR(1)
* `[LIMITE DE CRÉDITO]` (MONEY)
* `[VOLUME MINIMO]` (FLOAT)
* `[PRIMEIRA COMPRA]` (BIT): 0 para Falso, 1 para Verdadeiro.

### `[TABELA DE PRODUTOS]`

Armazena o catálogo de produtos da empresa.

* `[CODIGO DO PRODUTO]` (CHAR(20), PK): Chave primária, código identificador do produto.
* `[NOME DO PRODUTO]` (VARCHAR(50))
* `[EMBALAGEM]` (VARCHAR(50))
* `[TAMANHO]` (VARCHAR(50))
* `[SABOR]` (VARCHAR(50))
* `[PRECO DE LISTA]` (SMALLMONEY)

### `[TABELA DE VENDEDORES]`

Armazena os dados dos vendedores/funcionários.

* `[MATRICULA]` (CHAR(5))
* `[NOME]` (VARCHAR(100))
* `[PERCENTUAL COMISSAO]` (FLOAT)

## 4. ⚙️ Funcionalidades do Script

O arquivo `Frutallyproject.sql` executa as seguintes operações em ordem:

### 4.1. Gerenciamento do Banco (DDL)

* **`CREATE DATABASE`**: Cria o banco de dados principal chamado `SUCOS_VENDAS`.
* *(Demonstração)*: Cria e remove um banco de dados secundário (`SUCOS_VENDAS_2`) para fins de exemplo.

### 4.2. Definição do Schema (DDL)

* **`CREATE TABLE`**: Define a estrutura das tabelas `[TABELA DE CLIENTES]`, `[TABELA DE PRODUTOS]` e `[TABELA DE VENDEDORES]`.
* **`ALTER TABLE`**: Modifica a `[TABELA DE CLIENTES]` para adicionar uma restrição `NOT NULL` e definir a coluna `[CPF]` como Chave Primária (`PRIMARY KEY`).

### 4.3. Inserção de Dados (DML)

* **`INSERT INTO`**: Popula as três tabelas com dados de exemplo, demonstrando:
    * Inserção de linha única.
    * Inserção de múltiplas linhas.
    * Inserção com especificação de colunas.

### 4.4. Consultas de Dados (DQL)

O script fornece diversos exemplos de consultas `SELECT` para extrair informações do banco de dados:

* Consulta de todos os dados de uma tabela (`SELECT *`).
* Seleção de colunas específicas.
* Uso de apelidos (aliases) com a palavra-chave `AS` para renomear colunas no resultado.
* Busca por valores únicos e distintos com `DISTINCT`.
* Filtragem de linhas usando `WHERE` com operadores lógicos (`=`, `>`, `<`, `>=`, `AND`, `OR`).
* Ordenação dos resultados com `ORDER BY`.

### 4.5. Manipulação de Dados (DML)

Exemplos de como atualizar e deletar registros existentes:

* **`UPDATE`**: Altera dados em registros existentes com base em uma condição.
    * Ex: Aplica um desconto de 10% em produtos com embalagem 'LATA'.
    * Ex: Altera a embalagem e o preço de um produto específico.
* **`DELETE`**: Remove um registro específico da tabela de produtos usando seu código.

## 5. 🚀 Como Executar

1.  Abra um ambiente de gerenciamento do SQL Server (como o SQL Server Management Studio - SSMS).
2.  Conecte-se à sua instância do SQL Server.
3.  Abra o arquivo SQL.
4.  Execute o script. O script criará o banco `SUCOS_VENDAS`, criará as tabelas, inserirá os dados e executará as consultas de exemplo.

## 6. 🧠 Habilidades e Conceitos Aplicados

Este projeto serviu como um estudo prático para aplicar e demonstrar os seguintes conceitos fundamentais de SQL Server:

### Ambiente e Teoria

* **Análise de Requisitos:** Identificação das necessidades de negócio da empresa (Frutally).
* **Configuração de Ambiente:** Instalação e configuração do SQL Server 2022 e do SQL Server Management Studio (SSMS).
* **Teoria Relacional:** Compreensão das vantagens e desvantagens de bancos de dados relacionais.

### Design e Estrutura de Banco de Dados (DDL)

* **Criação de Tabelas:** Uso do `CREATE TABLE` para definir a estrutura dos dados.
* **Restrições (Constraints):** Definição de Chaves Primárias (`PRIMARY KEY`) e compreensão de suas restrições (`NOT NULL`, `UNIQUE`).
* **Troubleshooting:** Leitura e interpretação de erros do sistema, como a violação de uma chave primária.

### Manipulação de Dados (DML)

* **Inserção de Dados:** Uso do `INSERT` para popular tabelas, incluindo técnicas para inserção de múltiplas linhas em um único comando e inserção com colunas fora de ordem.
* **Atualização de Dados:** Modificação de registros existentes com `UPDATE`, utilizando a cláusula `WHERE` para atualizações condicionais.
* **Exclusão de Dados:** Remoção de registros específicos com `DELETE`.

### Consultas de Dados (DQL)

* **Seleção de Dados:** Busca de informações com `SELECT`, tanto de colunas específicas quanto de tabelas inteiras (`*`).
* **Filtragem Avançada:** Uso do `WHERE` para criar filtros precisos, combinados com operadores lógicos (`AND`, `OR`, `NOT`).
* **Ordenação:** Classificação dos resultados da consulta com `ORDER BY`.
* **Formatação de Saída:** Uso de aliases (`AS`) para renomear colunas e melhorar a legibilidade.
* **Valores Únicos:** Eliminação de valores duplicados em uma consulta com `SELECT DISTINCT`.

---

## 7. 👩‍💻 Autora

**Stefany Batista**
* Estudante de Sistemas de Informação
* Foco em Desenvolvimento e Dados

[LinkedIn](www.linkedin.com/in/stefanybrauns) | [GitHub do projeto](https://github.com/Fanaste/frutally-project-sql-server)
