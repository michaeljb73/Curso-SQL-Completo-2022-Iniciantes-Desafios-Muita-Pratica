-- 1 : Quantos prudutos temos cadastrados no sistema que custam mais que 1500 dolares?
/*SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500;
*/

-- 2 : Quantas pessoas temos com o sobrenome que inicia com a letra P?
/*select count(LastName)
from   Person.Person
where  LastName like('p%');
*/

-- 3 : Em quantas cidades únicas estão cadastrados nossos clientes? 
/*select count (distinct city)
from Person.Address
*/

-- 4 : Quais são as cidades únicas que temos cadastradas em nosso sistema ?
/*select distinct(City)
from Person.Address
*/

-- 5 : Quantos produtos vermelhos tem preco entre 500 e 1000 dolares ?
/*select    count(*)
from      Production.Product
where     Color = 'red' and
ListPrice between 500 and 1000
*/

-- 6 : Quantos produtos cadastrados tem a palavra 'road' no nome deles ? 
select  count(*)
from    Production.Product
where   Name like '%road%'