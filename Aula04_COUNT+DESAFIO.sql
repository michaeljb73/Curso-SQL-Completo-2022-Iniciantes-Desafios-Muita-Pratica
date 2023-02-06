-- AULA 04 - COUNT : Retorn o número de linhas de acordo com condição.
/*
SELECT COUNT(*)
FROM Person.Person;
*/

-- SELECT COUNT(Title)
-- FROM Person.Person;

-- SELECT COUNT(DISTINCT Title)
-- FROM Person.Person;

-- DESAFIO 1: Quantos produtos temos cadastrados em nossa tabela de produtos ( Production.Product )

-- SELECT 'Total de produtos: ' AS TOTAL,COUNT(*)
SELECT COUNT(*) AS 'Total de produtos'
FROM Production.Product;

-- DESAFIO 2: Quantos tamanhos de produtos temos cadastrados  em nossa tabela.
SELECT COUNT(Size) AS 'Total de Tamanhos cadastrados'
FROM Production.Product;