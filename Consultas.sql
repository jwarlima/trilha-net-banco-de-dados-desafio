-- 1
SELECT Nome, Ano FROM Filmes
-- 2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC
-- 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'de volta para o futuro'
-- 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997
-- 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000
-- 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC
-- 7
SELECT Ano, COUNT(Ano) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC
-- 8
SELECT * FROM Atores WHERE Genero='M'
-- 9
SELECT * FROM Atores WHERE Genero='F'
-- 10
SELECT
	F.Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.Id = G.Id
-- 11
SELECT
	F.Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'
-- 12
SELECT 
	F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel
FROM Filmes F
INNER JOIN Atores A ON F.Id = A.Id
INNER JOIN ElencoFilme E ON F.Id = E.IdFilme