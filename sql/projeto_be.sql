SELECT * FROM mulheres;
SELECT * FROM Tabela t;
SELECT DISTINCT m.UF FROM mulheres m;
SELECT COUNT(*) municipio FROM mulheres m;
SELECT COUNT(*) estado FROM Tabela t;
SELECT DISTINCT m.regiao FROM mulheres m; 
SELECT DISTINCT m.UF, m.F_19_39, m.F_40_59 FROM mulheres m; 

-- Perguntas de Negócio:

-- P1. Quantas mulheres de 19 anos ou mais?
SELECT SUM (m.F_19_39 + m.F_40_59 + m.F_60_79 + m.F_80_mais) AS total_mulheres FROM mulheres m;
	
-- P2. Quais estados tem mais mulheres? (Top 5 com % do total)
SELECT 
	m.UF,
	SUM(m.F_19_39 + m.F_40_59 + m.F_60_79 + m.F_80_mais) AS total_estado,
	ROUND (
		SUM(m.F_19_39 + m.F_40_59 + m.F_60_79 + m.F_80_mais) * 100.0 / 
		(SELECT SUM(m.F_19_39 + m.F_40_59 + m.F_60_79 + m.F_80_mais) FROM mulheres m),
2) AS percentual_total
FROM mulheres m
GROUP BY m.UF
ORDER BY total_estado DESC
LIMIT 5;

-- P3. Em quais regioes ha mais mulheres?
SELECT 
	m.regiao,  
	SUM (m.F_19_39 + m.F_40_59 + m.F_60_79 + m.F_80_mais) AS total_regiao
	FROM mulheres m
	GROUP BY m.regiao
	ORDER BY total_regiao DESC; 

-- P3.1 Qual o Percentual por idade?
SELECT 
	m.regiao,
	ROUND(SUM(m.F_19_39 ) * 100.0 / SUM(m.F_19_39 + m.F_40_59 + m.F_60_79 + m.F_80_mais), 2) AS pct_19_39,
	ROUND(SUM(m.F_40_59 ) * 100.0 / SUM(m.F_19_39 + m.F_40_59 + m.F_60_79 + m.F_80_mais), 2) AS pct_40_59,
	ROUND(SUM(m.F_60_79 ) * 100.0 / SUM(m.F_19_39 + m.F_40_59 + m.F_60_79 + m.F_80_mais), 2) AS pct_60_79,
	ROUND(SUM(m.F_80_mais ) * 100.0 / SUM(m.F_19_39 + m.F_40_59 + m.F_60_79 + m.F_80_mais), 2) AS pct_80_mais
	FROM mulheres m
	GROUP BY m.regiao
	ORDER BY m.regiao; 

-- P4. Qual faixa etaria concentra mais mulheres?
SELECT '19 a 39 anos' AS faixa_etaria, SUM(F_19_39) AS total FROM mulheres m
UNION ALL
SELECT '40 a 59 anos' AS faixa_etaria, SUM(F_40_59) AS total FROM mulheres m
UNION ALL
SELECT '60 a 79 anos' AS faixa_etaria, SUM(F_60_79) AS total FROM mulheres m
UNION ALL
SELECT '80 anos ou mais' AS faixa_etaria, SUM(F_80_mais) AS total FROM mulheres m
ORDER BY total DESC;

-- P5. Qual o perfil de idade em cada regiao?
SELECT 
	m.regiao,
	SUM(m.F_19_39 ) AS total_19_39,
	SUM(m.F_40_59 ) AS total_40_59,
	SUM(m.F_60_79 ) AS total_60_79,
	SUM(m.F_80_mais ) AS total_80_mais,
	ROUND(SUM(m.F_19_39)* 100.00 / SUM(m.F_19_39 + m.F_40_59 + m.F_60_79 + m.F_80_mais), 1) AS pct_19_39,
	ROUND(SUM(m.F_40_59)* 100.00 / SUM(m.F_19_39 + m.F_40_59 + m.F_60_79 + m.F_80_mais), 1) AS pct_40_59,
	ROUND(SUM(m.F_60_79)* 100.00 / SUM(m.F_19_39 + m.F_40_59 + m.F_60_79 + m.F_80_mais), 1) AS pct_60_79,
	ROUND(SUM(m.F_80_mais)* 100.00 / SUM(m.F_19_39 + m.F_40_59 + m.F_60_79 + m.F_80_mais), 1) AS pct_80_mais
FROM mulheres m
GROUP BY m.regiao
ORDER BY m.regiao DESC; 

-- P6. Onde o publico de 19 a 59 anos está localizado regionalmente?
SELECT 
	m.regiao,
	SUM (m.F_19_39 + m.F_40_59 ) AS publico_alvo_19_59,
	ROUND (
	SUM(m.F_19_39 + m.F_40_59) * 100.00 / 
	SUM(m.F_19_39 + m.F_40_59 + m.F_60_79 + m.F_80_mais),
	2) AS pct_sobre_total_regiao
	FROM mulheres m
	GROUP BY m.regiao 
	ORDER BY publico_alvo_19_59 DESC;

-- P7. Qual percentual do perfil de idade por território? Tabela 17-Brasil
 SELECT 
    territorio,
    MAX(CASE WHEN idade LIKE '%19 a 39%' THEN pct END) AS pct_19_39,
    MAX(CASE WHEN idade LIKE '%40 a 59%' THEN pct END) AS pct_40_59,
    MAX(CASE WHEN idade LIKE '%60 a 79%' THEN pct END) AS pct_60_79,
    MAX(CASE WHEN idade LIKE '%80%' THEN pct END) AS pct_80_mais
FROM (
    SELECT 'Área Urbana' AS territorio, "Grupos de idade" AS idade, "Em área urbana" AS pct FROM Tabela
    UNION ALL
    SELECT 'Área Rural' AS territorio, "Grupos de idade" AS idade, "Em área rural" AS pct FROM Tabela
    UNION ALL
    SELECT 'Terras Indígenas' AS territorio, "Grupos de idade" AS idade, "Em terras indígenas" AS pct FROM Tabela
    UNION ALL
    SELECT 'Territórios Quilombolas' AS territorio, "Grupos de idade" AS idade, "Em territórios quilombolas" AS pct FROM Tabela
    UNION ALL
    SELECT 'Favelas e Comunidades' AS territorio, "Grupos de idade" AS idade, "Em Favelas e Comunidades Urbanas" AS pct FROM Tabela
)
GROUP BY territorio
ORDER BY pct_19_39 DESC;

-- P8. Território com maior proporção de 19 a 59 anos
SELECT
	territorio,
	ROUND(pct_19_39, 1) AS pct_19_39,
	ROUND(pct_40_59, 1) AS pct_40_59,
	ROUND(pct_19_39 + pct_40_59, 1) AS total_19_59
FROM (
	SELECT
		territorio,
    	AVG(CASE WHEN idade LIKE '%19 a 39%' THEN pct END) AS pct_19_39,
    	AVG(CASE WHEN idade LIKE '%40 a 59%' THEN pct END) AS pct_40_59
    FROM (
    	SELECT 'Área Urbana' AS territorio, "Grupos de idade" AS idade, CAST(REPLACE("Em área urbana", ',', '.') AS REAL) AS pct FROM Tabela
    	UNION ALL
    	SELECT 'Área Rural' AS territorio, "Grupos de idade" AS idade, CAST(REPLACE("Em área rural", ',', '.') AS REAL) AS pct FROM Tabela
    	UNION ALL
    	SELECT 'Terras Indígenas' AS territorio, "Grupos de idade" AS idade, CAST(REPLACE("Em terras indígenas", ',', '.') AS REAL) AS pct FROM Tabela
    	UNION ALL
    	SELECT 'Territórios Quilombolas' AS territorio, "Grupos de idade" AS idade, CAST(REPLACE("Em territórios quilombolas", ',', '.') AS REAL) AS pct FROM Tabela
    	UNION ALL
    	SELECT 'Favelas e Comunidades' AS territorio, "Grupos de idade" AS idade, CAST(REPLACE("Em Favelas e Comunidades Urbanas", ',', '.') AS REAL) AS pct FROM Tabela
)
GROUP BY territorio
)
ORDER BY total_19_59 DESC;
