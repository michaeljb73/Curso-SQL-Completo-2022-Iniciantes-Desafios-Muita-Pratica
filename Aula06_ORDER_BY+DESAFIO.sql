-- ORDER BY: Ordenação crescente ou decrescente.
/*
SELECT FirstName, LastName
FROM Person.Person
ORDER BY FirstName ASC, LastName DESC;
*/

/* Este tipo de seleção não é recomendado 
SELECT FirstName, LastName
FROM Person.Person
ORDER BY MiddleName ASC;*/

-- DESAFIO 1
/*
Obter o ProductID dos 10 produtos mais caros cadastrados no sistema, listando
do mais caro para o mais barato.
*/
/*
SELECT TOP 10 ProductID, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;
*/

-- DESAFIO 2
/*
Obter o nome e o número dos produtos que tem o ProductID entre 1 e 4.
*/

SELECT TOP 4 ProductID,Name, ProductNumber
FROM Production.Product
ORDER BY ProductID ASC;
