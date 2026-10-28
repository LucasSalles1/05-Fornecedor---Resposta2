
-- ==========================================
-- 1. CRIAR O BANCO DE DADOS E A TABELA
-- ==========================================

CREATE DATABASE IF NOT EXISTS EmpresaHotelaria;
USE EmpresaHotelaria;

DROP TABLE IF EXISTS Hotel;

CREATE TABLE Hotel (
    id INT,
    nome VARCHAR(256),
    cidade VARCHAR(256),
    estado VARCHAR(256),
    diaria DECIMAL(10, 2),
    estrelas INT,
    acomodacao VARCHAR(256),
    checkin VARCHAR(20),
    checkout VARCHAR(20),
    cafe_incluso VARCHAR(3),
    garagem_inclusa VARCHAR(3)
);

-- ==========================================
-- 2. INSERIR OS DADOS NA TABELA HOTEL
-- ==========================================

INSERT INTO Hotel (
    id, nome, cidade, estado, diaria, estrelas,
    acomodacao, checkin, checkout, cafe_incluso, garagem_inclusa
) VALUES
(1, 'Grand Resort Elite', 'Belo Horizonte', 'Minas Gerais', 280.00, 3, 'Quarto duplo', '2027-03-10', '2028-01-15', 'Sim', 'Sim'),
(2, 'Hotel São Luís', 'São Luís', 'Maranhão', 200.00, 3, 'Suite Standard', '2027-05-01', '2027-05-10', 'Não', 'Sim'),
(3, 'Recife Sun Hotel', 'Recife', 'Pernambuco', 350.00, 4, 'Quarto duplo', '2026-11-20', '2026-11-25', 'Sim', 'Não'),
(4, 'Bahia Beach Resort', 'Salvador', 'Bahia', 500.00, 5, 'Acomodação Elite', '2027-08-10', '2028-02-10', 'Não', 'Não'),
(5, 'Curitiba Palace', 'Curitiba', 'Paraná', 400.00, 4, 'Suite', '2027-01-15', '2027-01-20', 'Sim', 'Sim'),
(6, 'Gaucho Hotel', 'Gramado', 'Rio Grande do Sul', 290.00, 3, 'Quarto Standard', '2026-06-01', '2026-06-05', 'Não', 'Sim'),
(7, 'Sampa Inn', 'São Paulo', 'São Paulo', 90.00, 2, 'Quarto Solteiro', '2027-09-01', '2027-09-05', 'Sim', 'Não');

-- ==========================================
-- 3. CONSULTAS (SELECT)
-- ==========================================

-- Cidade de Minas Gerais
SELECT *
FROM Hotel
WHERE estado LIKE '%Minas Gerais%'
   OR cidade LIKE '%Minas Gerais%';

-- Valor da diária abaixo de R$ 300,00
SELECT *
FROM Hotel
WHERE diaria < 300.00;

-- Cidade São Luís
SELECT *
FROM Hotel
WHERE cidade LIKE '%São Luís%';

-- Categoria 3 estrelas
SELECT *
FROM Hotel
WHERE estrelas = 3;

-- Substring "resort" no nome do hotel
SELECT *
FROM Hotel
WHERE nome LIKE '%resort%';

-- Cidade Recife ou Salvador
SELECT *
FROM Hotel
WHERE cidade LIKE '%Recife%'
   OR cidade LIKE '%Salvador%';

-- Tipo de acomodação "Quarto duplo"
SELECT *
FROM Hotel
WHERE acomodacao = 'Quarto duplo';

-- Valor da diária acima de R$ 100,00
SELECT *
FROM Hotel
WHERE diaria > 100.00;

-- Substring "elite" no nome do hotel ou da acomodação
SELECT *
FROM Hotel
WHERE nome LIKE '%elite%'
   OR acomodacao LIKE '%elite%';

-- Hotel com check-in agendado para 2027
SELECT *
FROM Hotel
WHERE checkin LIKE '2027%';

-- Cidade Curitiba e acomodação tipo "Suite"
SELECT *
FROM Hotel
WHERE cidade LIKE '%Curitiba%'
  AND acomodacao LIKE '%Suite%';

-- Estado Rio Grande do Sul
SELECT *
FROM Hotel
WHERE estado LIKE '%Rio Grande do Sul%';

-- Estado São Paulo ou Paraná
SELECT *
FROM Hotel
WHERE estado LIKE '%São Paulo%'
   OR estado LIKE '%Paraná%';

-- Hospedagem sem café incluso
SELECT *
FROM Hotel
WHERE cafe_incluso = 'Não';

-- Substring "standard" no tipo da acomodação
SELECT *
FROM Hotel
WHERE acomodacao LIKE '%standard%';

-- Valor da diária entre R$ 250,00 e R$ 450,00
SELECT *
FROM Hotel
WHERE diaria >= 250.00
  AND diaria <= 450.00;

-- Hotel com check-out agendado para 2028
SELECT *
FROM Hotel
WHERE checkout LIKE '2028%';

-- Garagem inclusa na hospedagem
SELECT *
FROM Hotel
WHERE garagem_inclusa = 'Sim';

-- Garagem inclusa, mas sem café incluso
SELECT *
FROM Hotel
WHERE garagem_inclusa = 'Sim'
  AND cafe_incluso = 'Não';

-- Café incluso, mas sem garagem inclusa
SELECT *
FROM Hotel
WHERE cafe_incluso = 'Sim'
  AND garagem_inclusa = 'Não';
