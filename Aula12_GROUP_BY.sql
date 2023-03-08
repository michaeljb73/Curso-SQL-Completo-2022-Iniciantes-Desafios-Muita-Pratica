-- Aula 12 : Divide o resultado das pesquisa em grupos.
/*
select *
from Sales.SalesOrderDetail;
*/

select SpecialOfferID, sum(UnitPrice) as "Soma"
from Sales.SalesOrderDetail
group by SpecialOfferID;

-- Quanto de cada produto foi vendido at� hoje?
select ProductID,count(ProductID) as "Total de produtos"
from Sales.SalesOrderDetail
group by ProductID;

-- Quantos nomes de cada nome temos cadastrados em nosso banco de dados ?]
select FirstName, count(FirstName) as "Total de nomes"
from Person.Person
group by FirstName;

-- Qual a m�dia de pre�os para o produtos que s�o prata(silver) em Production.Product ?
-- Obs.: Filtrar(where) e agrupar(group by).
select Color, avg(ListPrice) "M�dia de pre�os"
from Production.Product
where Color='Silver'
group by Color;

-- Defasio 1: Saber quentas pessoas tem o mesmo MiddleName agrupadas por MiddleName.
select MiddleName, count(MiddleName)
from Person.Person
group by MiddleName;

-- Desafio 2: Qual a m�dia da quantidade de ordens de pedido(campo OrderQty) de cada produto vendido na loja?
select  ProductID, avg(OrderQty) "M�dia de produtos"
from Sales.SalesOrderDetail
group by ProductID;

-- Desafio 3: Qual foram as 10 vendas que no total tiveram os maior valor de 
-- vendas( LineTotal ) por produto do maior para o menor(desc).
select top 10 ProductID, sum(LineTotal) "Total"
from Sales.SalesOrderDetail
group by ProductID
order by Total desc;

-- Outra forma
/*
select top 10 ProductID, sum(LineTotal)
from Sales.SalesOrderDetail
group by ProductID
order by sum(LineTotal) desc;
*/

-- Quantos produtos e qual a quantidade m�dia de produtos temos cadastrados
-- nas nosas ordens de servi�o(WorkOrder), agrupados por ProductID.
select ProductID, count(ProductID) as "Total de produtos", avg(OrderQty) as "M�dia das OS's"
from Production.WorkOrder
group by ProductID;