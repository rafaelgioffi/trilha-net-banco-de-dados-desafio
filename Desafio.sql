Use Filmes

-- 1
SELECT Nome, Ano
From Filmes

-- 2
SELECT Nome, Ano, Duracao
From Filmes
ORDER BY Ano

-- 3
SELECT Nome, Ano, Duracao
From Filmes
WHERE Nome LIKE 'De Volta%'

-- 4
SELECT Nome, Ano, Duracao
From Filmes
WHERE Ano = 1997

-- 5
SELECT Nome, Ano, Duracao
From Filmes
WHERE Ano >= 2000

-- 6
SELECT Nome, Ano, Duracao
From Filmes
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao ASC

-- 7
SELECT Ano, COUNT(*) As Quantidade
From Filmes
GROUP BY Ano
ORDER BY Quantidade DESC, Ano

-- 8
SELECT *
From Atores
WHERE Genero = 'M'

-- 9
SELECT *
From Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

-- 10
SELECT Filmes.Nome, Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11
SELECT Filmes.Nome, Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

-- 12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
From ElencoFilme
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id