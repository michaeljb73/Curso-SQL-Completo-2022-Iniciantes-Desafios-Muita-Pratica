-- LIKE: Faz pesquisa em campos de acordo com o valor a ser pesquizado. N�o � case sensitive.
/*
SELECT *
FROM Person.Person
WHERE FirstName LIKE 'Ovi%'; -- Nomes que come�am com 'Ovi'.
*/
/*
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%to';  -- Nomes de terminam em 'to'.
*/
/*
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ess%';  -- Nomes que possuem 'ess' entre seu in�cio e fim.
*/

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ro_';  -- Nomes que possuem 'ro' entre seu in�cio at� um caractere ap�s o 'ro'.