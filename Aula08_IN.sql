-- IN: Usamos o operador IN juntamente com o WHERE para verificar se um valor
--     corresponde a qualquer valor passado na lista de valores.
/* FORMAS
campo [NOT] IN (valor1,valor2)
campo [NOT] IN (SELECT campo FROM tabela) -> Entre parenteses está uma subselect.
*/

SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13);

-- EQUIVALE
SELECT *
FROM  Person.Person
WHERE BusinessEntityID = 2 OR
      BusinessEntityID = 7 OR
      BusinessEntityID = 13;