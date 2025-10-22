-- A Frutally é uma empresa que cresceu e passou a necessitar de uma solução mais robusta para gerenciar dados de produtos, vendas e funcionários. Por isso, adotou um banco de dados relacional com SQL Server, permitindo consultas e decisões baseadas em dados.

-- Criando e excluindo banco de dados:
CREATE DATABASE SUCOS_VENDAS; -- Cria o banco de dados Sucos_Vendas
CREATE DATABASE SUCOS_VENDAS_2; -- Cria o banco de dados Sucos_VENDAS_2
DROP DATABASE SUCOS_VENDAS_2; -- Remove o banco de dados Sucos_Vendas_2 

-- Criando tabelas:

CREATE TABLE [TABELA DE CLIENTES] ( -- SEMPRE USAR COLCHETES PARA NOMES COM ESPAÇOS

[CPF] [CHAR] (11),
[NOME] [VARCHAR] (150),
[RUA] [VARCHAR] (150),
[COMPLEMENTO] [VARCHAR] (150),
[BAIRRO] [VARCHAR] (150),
[CEP] [CHAR] (8),
[DATA DE NASCIMENTO] [DATE],
[IDADE] [SMALLINT],
[SEXO] [CHAR] (1),
[LIMITE DE CRÉDITO] [MONEY],
[VOLUME MINIMO] [FLOAT],
[PRIMEIRA COMPRA] [BIT]  -- BIT = 0 ou 1 (FALSO OU VERDADEIRO)

);

CREATE TABLE [TABELA DE PRODUTOS] (

[CODIGO DO PRODUTO] [CHAR] (20) NOT NULL PRIMARY KEY, -- CHAVE PRIMÁRIA (NÃO REPETE VALORES)
[NOME DO PRODUTO] [VARCHAR] (50),
[EMBALAGEM] [VARCHAR] (50),
[TAMANHO] [VARCHAR] (50),
[SABOR] [VARCHAR] (50),
[PRECO DE LISTA] [SMALLMONEY]
);

CREATE TABLE [TABELA DE VENDEDORES] (

[MATRICULA] [CHAR] (5),
[NOME] [VARCHAR] (100),
[PERCENTUAL COMISSAO] [FLOAT],
);

-- ALTERANDO TABELAS:
ALTER TABLE [TABELA DE CLIENTES] ALTER COLUMN [CPF] [CHAR] (11) NOT NULL; -- ALTERA A COLUNA CPF PARA NÃO ACEITAR VALORES NULOS
ALTER TABLE [TABELA DE CLIENTES] ADD CONSTRAINT PK_CPF PRIMARY KEY ([CPF]); -- ADICIONA A CHAVE PRIMÁRIA NA COLUNA CPF

-- Inserindo novo produto:
INSERT INTO [TABELA DE PRODUTOS] VALUES (
'1040107',
'Light - 350 ml 0 Melância',
'Lata',
'350 ml',
'Melância',
4,23
);

--Inserção de múltiplas linhas:

INSERT INTO [TABELA DE PRODUTOS] VALUES
(10837797, 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01, 1000889, 'Sabor da Montanha 700 ml Uva', 'Garrafa', '700 ml', 'Uva', 6.31),
(10000889, 'Sabor da Montanha 700 ml Uva', 'Garrafa', '700 ml', 'Uva', 6.31),
(10043265, 'Videira do Campo 300 ml Melancia', 'Garrafa', '300 ml', 'Melancia', 3.21),
(10043275, 'Videira do Campo 1,5 Litros Melancia', 'PET', '1,5 Litros', 'Melancia', 19.51),
(10881265, 'Linha Citrus 1 Litro Limão', 'PET', '1 Litro', 'Limão',7.00);

-- Inserindo novos clientes:
INSERT INTO [TABELA DE CLLIENTES] VALUES
('00384393431', 'João da Silva', 'Rua Projetada A', 'Apto 101', 'Centro', '12345678', '1985-06-15', 38, 'M', 5000.00, 10.0, 1),
('00456789012', 'Maria Oliveira', 'Avenida Brasil', 'Casa 2', 'Jardim América', '87654321', '1990-09-25', 33, 'F', 3000.00, 5.0, 0),
('00567890123', 'Carlos Pereira', 'Rua das Flores', '', 'Vila Nova', '11223344', '1978-12-05', 45, 'M', 7000.00, 15.0, 1);

-- Inserção de novos vendedores:

INSERT INTO [TABELA DE VENDEDORES] VALUES
('00236', 'Cláudia Morais', 0.08),
('00237', 'Marcela Ferreira', 0.09),
('00238', 'Márcio Almeira', 0.08);

-- É possível inserir dados em colunas específicas, omitindo as que não serão preenchidas ou em ordem diferente da criação da tabela:

INSERT INTO [TABELA DE PRODUTOS] ([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [PRECO DE LISTA], [SABOR]) VALUES
(5449310, 'Frescor do Verão - 350 ml - Limão','','350 ml', 2.45, 'Limão'),
(1078680, 'Frescor do Verão - 350 ml - Manga', 'Lata', '350 ml', 3.18, 'Manga');

-- Inserindo novos dados na tabela de produtos:

INSERT INTO [TABELA DE PRODUTOS] ([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [PRECO DE LISTA], [SABOR]) VALUES
(1042712, 'Linha Citros - 700 ml - Limão', 'Garrafa', '700 ml', 'Limão', 4.90),
(788975, 'Pedaços de Frutas - 1,5 Litros - Maça', 'PET', '1,5 Litros', 'Maça', 18.01),
(1002767, 'Videira do Campo - 700 ml - Cereja/Maça', 'Garrafa', '700 ml', 'Cereja/Maça', 8.41),
(231776, 'Festival de Sabores - 700 ml - Açai', 'Garrafa', '700 ml', 'Açai', 13.31),
(479745, 'Clean - 470 ml - Laranja', 'Garrafa', '470 ml', 'Laranja', 3.76),
(1051518, 'Frescor do Verão - 470 ml - Limão', 'Garrafa', '470 ml', 'Limão', 3.29),
(1101035, 'Linha Refrescante - 1 Litro - Morango/Limão', 'PET', '1 Litro', 'Morango/Limão', 9.01),
(229900, 'Pedaços de Frutas - 350 ml - Maça', 'Lata', '350 ml', 'Maça', 4.21),
(1086543, 'Linha Refrescante - 1 Litro - Manga', 'PET', '1 Litro', 'Manga', 11.01),
(695594, 'Festival de Sabores - 1,5 Litros - Açai', 'PET', '1,5 Litros', 'Açai', 28.51),
(838819, 'Clean - 1,5 Litros - Laranja', 'PET', '1,5 Litros', 'Laranja', 12.01),
(326779, 'Linha Refrescante - 1,5 Litros - Manga', 'PET', '1,5 Litros', 'Manga', 16.51),
(520380, 'Pedaços de Frutas - 1 Litro - Maça', 'PET', '1 Litro', 'Maça', 12.01),
(1041119, 'Linha Citros - 700 ml - Lima/Limão', 'Garrafa', '700 ml', 'Lima/Limão', 4.90),
(243083, 'Festival de Sabores - 1,5 Litros - Maracujá', 'PET', '1,5 Litros', 'Maracujá', 10.51),
(394479, 'Sabor da Montanha - 700 ml - Cereja', 'Garrafa', '700 ml', 'Cereja', 8.40),
(746596, 'Light - 1,5 Litros - Melancia', 'PET', '1,5 Litros', 'Melancia', 19.50),
(773912, 'Clean - 1 Litro - Laranja', 'PET', '1 Litro', 'Laranja', 8.01),
(826490, 'Linha Refrescante - 700 ml - Morango/Limão', 'Garrafa', '700 ml', 'Morango/Limão', 6.31),
(723457, 'Festival de Sabores - 700 ml - Maracujá', 'Garrafa', '700 ml', 'Maracujá', 4.91),
(812829, 'Clean - 350 ml - Laranja', 'Lata', '350 ml', 'Laranja', 2.80),
(290478, 'Videira do Campo - 350 ml - Melancia', 'Lata', '350 ml', 'Melancia', 4.56),
(783663, 'Sabor da Montanha - 700 ml - Morango', 'Garrafa', '700 ml', 'Morango', 7.70),
(235653, 'Frescor do Verão - 350 ml - Manga', 'Lata', '350 ml', 'Manga', 3.85),
(1002334, 'Linha Citros - 1 Litro - Lima/Limão', 'PET', '1 Litro', 'Lima/Limão', 7.00),
(1013793, 'Videira do Campo - 2 Litros - Cereja/Maça', 'PET', '2 Litros', 'Cereja/Maça', 24.01),
(1096818, 'Linha Refrescante - 700 ml - Manga', 'Garrafa', '700 ml', 'Manga', 7.71),
(1022450, 'Festival de Sabores - 2 Litros - Açai', 'PET', '2 Litros', 'Açai', 38.01);

-- Inserindo novos dados na tabela de Clientes:

INSERT INTO [TABELA DE CLIENTES] ([CPF], [NOME], [RUA], [COMPLEMENTO], [BAIRRO], [CIDADE], [UF], [CEP], [DATA DE NASCIMENTO], [IDADE], [SEXO], [LIMITE DE CRÉDITO], [VOLUME MINIMO], [PRIMEIRA COMPRA]) VALUES
('1471156710', 'Erica Carvalho', 'R. Iriquitia', '', 'Jardins', 'Sao Paulo', 'SP', '80012212', '1990-09-01', 35, 'F', 1700000000.00, 24500, 0),
('19290992743', 'Fernando Cavalcante', 'R. Dois de Fevereiro', '', 'Agua Santa', 'Rio de Janeiro', 'RJ', '22000000', '2000-02-12', 25, 'M', 1000000000.00, 20000, 1),
('2600586709', 'Cesar Teixeira', 'Rua Conde de Bonfim', '', 'Tijuca', 'Rio de Janeiro', 'RJ', '22020001', '2000-03-12', 25, 'M', 1200000000.00, 22000, 0),
('3623344710', 'Marcos Nogueira', 'Av. Pastor Martin Luther King Junior', '', 'Inhauma', 'Rio de Janeiro', 'RJ', '22002012', '1995-01-13', 30, 'M', 1100000000.00, 22000, 1),
('492472718', 'Eduardo Jorge', 'R. Volta Grande', '', 'Tijuca', 'Rio de Janeiro', 'RJ', '22012002', '1994-07-19', 31, 'M', 750000000.00, 9500, 1),
('50534475787', 'Abel Silva', 'Rua Humaita', '', 'Humaita', 'Rio de Janeiro', 'RJ', '22000212', '1995-09-11', 30, 'M', 1700000000.00, 26000, 0),
('5576228758', 'Petra Oliveira', 'R. Benicio de Abreu', '', 'Lapa', 'Sao Paulo', 'SP', '88192029', '1995-11-14', 29, 'F', 700000000.00, 16000, 1),
('5648641702', 'Paulo Cesar Mattos', 'Rua Helio Beltrao', '', 'Tijuca', 'Rio de Janeiro', 'RJ', '21002020', '1991-08-30', 34, 'M', 1200000000.00, 22000, 0),
('5840119709', 'Gabriel Araujo', 'R. Manuel de Oliveira', '', 'Santo Amaro', 'Sao Paulo', 'SP', '80010221', '1985-03-16', 40, 'M', 1400000000.00, 21000, 1),
('7771579779', 'Marcelo Mattos', 'R. Eduardo Luís Lopes', '', 'Bras', 'Sao Paulo', 'SP', '88202912', '1992-03-25', 33, 'M', 1200000000.00, 20000, 1),
('8502682733', 'Valdeci da Silva', 'R. Srg. Edison de Oliveira', '', 'Jardins', 'Sao Paulo', 'SP', '82122020', '1995-10-07', 30, 'M', 1100000000.00, 19000, 0),
('8719655770', 'Carlos Eduardo', 'Av. Gen. Guedes da Fontoura', '', 'Jardins', 'Sao Paulo', 'SP', '81192002', '1983-12-20', 41, 'M', 2000000000.00, 24000, 0),
('9283760794', 'Edson Meilelles', 'R. Pinto de Azevedo', '', 'Cidade Nova', 'Rio de Janeiro', 'RJ', '22002002', '1995-10-07', 30, 'M', 1500000000.00, 25000, 1),
('94387575700', 'Walber Lontra', 'R. Cel. Almeida', '', 'Piedade', 'Rio de Janeiro', 'RJ', '22000201', '1989-06-20', 36, 'M', 600000000.00, 12000, 1),
('95939180787', 'Fabio Carvalho', 'R. dos Jacarandas da Peninsula', '', 'Barra da Tijuca', 'Rio de Janeiro', 'RJ', '22002020', '1992-01-05', 33, 'M', 900000000.00, 18000, 1);

-- Consultando dados da tabela inteira:

SELECT * FROM [TABELA DE PRODUTOS];
SELECT * FROM [TABELA DE CLIENTES];
SELECT * FROM [TABELA DE VENDEDORES];

-- Consultando dados de colunas específicas:

SELECT [NOME], [ESTADO] FROM [TABELA DE CLIENTES] -- A ordem das colunas pode ser alterada
order by [NOME]; -- Ordena em ordem alfabética crescente

-- Personalizando colunas (APELIDOS):

SELECT [NOME] AS [NOME DO CLIENTE], [CPF], [ESTADO] AS [UF]
 FROM [TABELA DE CLIENTES];

SELECT [MATRICULA] AS [IDENTIFICADOR], [NOME] AS [NOME DO VENDEDOR] 
FROM [TABELA DE VENDEDORES];

-- VALORES ÚNICOS (DISTINCT):

SELECT DISTINCT [SABOR] FROM [TABELA DE PRODUTOS]; -- Retorna apenas sabores únicos, sem repetições

-- Filtrando linhas:

SELECT [NOME] AS [NOME DO CLIENTE], [CPF], [ESTADO] AS [UF]
FROM [TABELA DE CLIENTES] 
WHERE [PRIMEIRA COMPRA] = 1;

-- Combinando filtros e operadores lógicos:

SELECT * FROM [TABELA DE PRODUTOS]
WHERE [PRECO DE LISTA] = 7.00;

SELECT * FROM [TABELA DE PRODUTOS]
WHERE [PRECO DE LISTA] > 7.00;

SELECT * FROM [TABELA DE PRODUTOS]
WHERE [PRECO DE LISTA] >= 7.00;

SELECT * FROM [TABELA DE PRODUTOS]
WHERE [PRECO DE LISTA] < 7.00;

SELECT [NOME], [DATA DE NASCIMENTO] FROM [TABELA DE CLIENTES]
WHERE [DATA DE NASCIMENTO] > '1995-12-31';

-- Condições combinadas:

SELECT [NOME], [BAIRRO] 
FROM [TABELA DE CLIENTES]
WHERE [BAIRRO] = 'Copacabana' OR [BAIRRO] = 'Tijuca';

SELECT [NOME], [ESTADO], [PRIMEIRA COMPRA] 
FROM [TABELA DE CLIENTES]
WHERE [PRIMEIRA COMPRA] = '1' AND [ESTADO] = 'SP';

-- Alterando as informações:

UPDATE [TABELA DE PRODUTOS]
SET [PRECO DE LISTA] = [PRECO DE LISTA] * 0.9
WHERE [EMBALAGEM] = 'LATA';

UPDATE [TABELA DE PRODUTOS]
SET [EMBALAGEM] = 'Garrafa', [PRECO DE LISTA] = 8.10
WHERE [CODIGO DO PRODUTO] = '1088126';

-- Deletando registros:

DELETE FROM [TABELA DE PRODUTOS]
WHERE [CODIGO DO PRODUTO] = '1004327';

