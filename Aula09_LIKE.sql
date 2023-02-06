-- LIKE: Faz pesquisa em campos de acordo com o valor a ser pesquizado. Não é case sensitive.
/*
SELECT *
FROM Person.Person
WHERE FirstName LIKE 'Ovi%'; -- Nomes que começam com 'Ovi'.
*/
/*
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%to';  -- Nomes de terminam em 'to'.
*/
/*
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ess%';  -- Nomes que possuem 'ess' entre seu início e fim.
*/

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ro_';  -- Nomes que possuem 'ro' entre seu início até um caractere após o 'ro'.