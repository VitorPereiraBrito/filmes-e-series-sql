-- =========================================
-- Projeto: Filmes e Séries (SQL)
-- Autor: Vitor Brito
-- Descrição: Consultas para análise de dados
-- =========================================


-- 🔹 1. Listar todas as séries por ano (mais recentes primeiro)
SELECT * 
FROM series_de_tv 
ORDER BY ano DESC;


-- 🔹 2. Filmes ordenados por lucro (bilheteria - custo)
SELECT 
  titulo,
  ano,
  avaliacao,
  (bilheteria - custo) AS lucro
FROM filmes
ORDER BY lucro DESC;


-- 🔹 3. Média de avaliação por duração

-- Até 2 horas
SELECT AVG(avaliacao) AS media_ate_2h
FROM filmes
WHERE duracao <= 120;

-- Mais de 2 horas
SELECT AVG(avaliacao) AS media_acima_2h
FROM filmes
WHERE duracao > 120;


-- 🔹 4. Séries finalizadas mais bem avaliadas
SELECT * 
FROM series_de_tv 
WHERE situacao = 'Finalizada' 
ORDER BY avaliacao DESC;


-- 🔹 5. Filmes com alta bilheteria
SELECT * 
FROM filmes 
WHERE bilheteria > 500000000;


-- 🔹 6. Filmes ordenados por título (A-Z)
SELECT * 
FROM filmes 
ORDER BY titulo ASC;


-- 🔹 7. Filmes lançados antes de 2000
SELECT * 
FROM filmes 
WHERE ano < 2000;


-- =========================================
-- 🔥 QUERIES INTERMEDIÁRIAS
-- =========================================


-- 🔹 8. Lucro médio por gênero
SELECT 
  genero,
  ROUND(AVG(bilheteria - custo), 2) AS lucro_medio
FROM filmes
GROUP BY genero
ORDER BY lucro_medio DESC;


-- 🔹 9. Filme mais lucrativo
SELECT 
  titulo,
  (bilheteria - custo) AS lucro
FROM filmes
ORDER BY lucro DESC
LIMIT 1;


-- 🔹 10. Quantidade de filmes por gênero
SELECT 
  genero,
  COUNT(*) AS quantidade
FROM filmes
GROUP BY genero
ORDER BY quantidade DESC;


-- 🔹 11. Média de avaliação por canal (séries)
SELECT 
  canal,
  ROUND(AVG(avaliacao), 2) AS media_avaliacao
FROM series_de_tv
GROUP BY canal
ORDER BY media_avaliacao DESC;


-- 🔹 12. Filmes acima da média de avaliação
SELECT 
  titulo,
  avaliacao
FROM filmes
WHERE avaliacao > (
  SELECT AVG(avaliacao) FROM filmes
);


-- =========================================
-- 🔗 JOIN ENTRE TABELAS
-- =========================================


-- 🔹 13. Filmes e séries do mesmo gênero
SELECT 
  f.titulo AS filme,
  s.titulo AS serie,
  f.genero
FROM filmes f
JOIN series_de_tv s 
  ON f.genero = s.genero;


-- 🔹 14. Quantidade de filmes e séries por gênero
SELECT 
  s.genero,
  COUNT(DISTINCT f.id) AS qtd_filmes,
  COUNT(DISTINCT s.id) AS qtd_series
FROM filmes f
JOIN series_de_tv s 
  ON f.genero = s.genero
GROUP BY s.genero
ORDER BY qtd_filmes DESC;
