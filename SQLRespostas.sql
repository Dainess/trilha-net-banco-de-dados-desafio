-- 1
SELECT 
	Nome, 
	Ano 
FROM Filmes

-- 2
SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano

-- 2 Imagem
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano

-- 3
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'

-- 4
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

-- 6
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7
SELECT
	Ano,
	COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano, Duracao
ORDER BY Duracao DESC

-- 7 Imagem
SELECT
	Ano,
	COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'M'

-- 8 Imagem
SELECT
	*
FROM Atores
WHERE Genero = 'M'

-- 9
SELECT
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 9 Imagem
SELECT
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT
	F.Nome,
	G.Genero
FROM FILMES F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero

-- 11
SELECT
	F.Nome,
	G.Genero
FROM FILMES F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE Genero = 'Mistério'

-- 12
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM FILMES F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON A.Id = EF.IdAtor