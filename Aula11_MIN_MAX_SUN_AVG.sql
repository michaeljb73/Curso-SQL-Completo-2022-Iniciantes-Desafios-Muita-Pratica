-- Aula 11 : MIN, MAX, SUN e AVG ( FUNÇÕES DE AGREGAÇÃO ). Funções de aregação, agragam ou combinam
-- dados de uma tabela em um só resultado.

/* select top 10 *
from Sales.SalesOrderDetail;
*/

-- Ex.: Calcular o total geral de todas as vendas
select top 10 sum(LineTotal) as "Total Geral"
from Sales.SalesOrderDetail;

-- Ex.: Menor valor total de vendas.
select top 10 min(LineTotal) as "Menor total de vendas"
from Sales.SalesOrderDetail;

-- Ex.: Maior valor total de vendas.
select top 10 max(LineTotal) as "Maior total de vendas"
from Sales.SalesOrderDetail;

-- Ex.: Media de vendas.
select top 10 avg(LineTotal) as "Média das vendas"
from Sales.SalesOrderDetail;