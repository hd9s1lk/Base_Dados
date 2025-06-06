-- CRIACAO DA BASE DE DADOS (a)
USE master
GO

CREATE DATABASE Editor
GO

-- CRIACAO DAS TABELAS (b)
USE Editor
GO

CREATE TABLE Livro(
	isbn			VARCHAR(20)	NOT NULL,
	titulo 			VARCHAR(50)	NOT NULL,
	ed_numero		TINYINT		NOT NULL,
	ed_data			DATE		NOT NULL,
	ed_exemplares	INTEGER		NOT NULL,
	preco_venda		MONEY		NOT NULL,
	CHECK (ed_numero > 0),
	CHECK (ed_exemplares > 0),
	CHECK (preco_venda >= 0),
	PRIMARY KEY (isbn)
)

CREATE TABLE Livreiro(
	cod_livreiro	INTEGER		NOT NULL IDENTITY(1,1),
	nome			VARCHAR(50) NOT NULL,
	endereco		VARCHAR(50) NOT NULL,
	PRIMARY KEY (cod_livreiro)
)

CREATE TABLE Autor(
	cod_autor	INTEGER		NOT NULL IDENTITY(1,1),
	nome		VARCHAR(50) NOT NULL,
	apelido		VARCHAR(50) NOT NULL,
	pseudonimo	VARCHAR(50),
	PRIMARY KEY (cod_autor)
)

CREATE TABLE Comprar(
	cod_livreiro	INTEGER		NOT NULL,
	isbn			VARCHAR(20) NOT NULL,
	quantidade		INTEGER		NOT NULL,
	CHECK (quantidade > 0),
	PRIMARY KEY (cod_livreiro, isbn),
	FOREIGN KEY (cod_livreiro) REFERENCES Livreiro(cod_livreiro),
	FOREIGN KEY (isbn) REFERENCES Livro(isbn)
)

CREATE TABLE Escrever(
	cod_autor	INTEGER		NOT NULL,
	isbn		VARCHAR(20) NOT NULL,
	royalty		INTEGER		NOT NULL,
	CHECK (royalty >= 0),
	PRIMARY KEY (cod_autor, isbn),
	FOREIGN KEY (cod_autor) REFERENCES Autor(cod_autor),
	FOREIGN KEY (isbn) REFERENCES Livro(isbn)
)
GO


--Ficha 6 - Exercício 2 - Editor
-- (a)

SELECT * FROM Autor

-- (b)

SELECT Nome, Apelido FROM Autor WHERE pseudonimo IS NOT NULL 

-- (c)

SELECT COUNT(*) AS Num_Livros FROM Livro
--ou
SELECT COUNT(isbn) AS Num_Livros FROM Livro


-- (d)
SELECT COUNT(*) AS 'Numero Livros'
FROM Autor A, Escrever E
WHERE A.cod_autor = E.cod_autor AND A.nome = 'Manuel' AND A.apelido = 'António'

-- (e)

SELECT L.isbn, L.titulo, L.ed_numero
FROM Livro L, Comprar C, Livreiro LL
WHERE L.isbn = C.isbn AND C.cod_livreiro = LL.cod_livreiro AND LL.nome = 'O Meu Livreiro'

-- (f)
SELECT DISTINCT A.nome, A.apelido, A.cod_autor
FROM Autor A, Escrever E, Livro L, Comprar C, Livreiro LL
WHERE A.cod_autor = E.cod_autor AND E.isbn = L.isbn AND L.isbn = C.isbn AND C.cod_livreiro = LL.cod_livreiro AND LL.nome = 'O Meu Livreiro'

-- (g)
SELECT SUM(E.royalty) AS soma_royalties
FROM Autor A, Escrever E
WHERE A.cod_autor = E.cod_autor AND A.nome = 'Manuel' AND A.apelido = 'José'

-- (h)
SELECT DISTINCT LL.nome
FROM Autor A, Escrever E, Livro L, Comprar C, Livreiro LL
WHERE A.cod_autor = E.cod_autor AND E.isbn = L.isbn AND L.isbn = C.isbn AND C.cod_livreiro = LL.cod_livreiro AND A.nome = 'Manuel' AND A.apelido = 'António'

-- (i)
SELECT LL.nome
FROM Livro L, Comprar C, Livreiro LL
WHERE L.isbn = C.isbn AND C.cod_livreiro = LL.cod_livreiro AND LL.nome = 'O Meu Livreiro'

-- (j)
SELECT L.isbn, L.titulo, L.ed_numero
FROM Livro L, Escrever E, Autor A
WHERE L.isbn = E.isbn AND E.cod_autor = A.cod_autor
ORDER BY L.isbn, A.nome, A.apelido

--(k)
SELECT L.isbn, L.titulo, L.ed_numero, SubQuery2.max_quantidade 
FROM Livro L,(SELECT Subquery.isbn, SUM(quantidade) AS soma_quantidade 
				FROM Comprar 
				GROUP BY isbn) Subquery 
			GROUP BY Subquery.isbn) Subquery2
WHERE L.isbn = SubQuery2.isbn

--(l)
SELECT LL.nome, L.isbn, L.titulo, L.ed_numero, C.quantidade
FROM Livro L, Comprar C, Livreiro LL
WHERE L.isbn = C.isbn AND C.cod_livreiro= LL.cod_livreiro AND C.quantidade = (SELECT max(quantidade) FROM Comprar WHERE cod_livreiro = c.cod_livreiro)
ORDER BY LL.nome, L.isbn

--(g) -- correção
SELECT SUM(E.royalty * L.preco_venda * C.quantidade) AS soma_royalties
FROM Autor A, Escrever E, Livro L, Comprar C
WHERE A.cod_autor = E.cod_autor AND E.isbn = L.isbn AND L.isbn = C.isbn AND A.nome='Manuel' AND A.apelido='José'



