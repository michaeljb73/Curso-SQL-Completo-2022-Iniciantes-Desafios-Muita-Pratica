-- WHERE : Seleciona parte ou partes dos dados.
-- ################################
/*
- OPERADOR	-	DESCRI��O
=				IGUAL
>				MAIOR QUE
<				MENOR QUE
>=				MAIOR QUE OU IGUAL
<=				MENOR QUE OU IGUAL
<>				DIFERENTE DE
AND(E)			OPERADOR L�GICO E
OR(OU)			OPERADOR L�GICO OU
**/
-- ################################

--SELECT *
--FROM Person.Person
--WHERE LastName='Miller';

--SELECT *
--FROM Person.Person
--WHERE FirstName='Anna' AND LastName='Miller';

--SELECT *
--FROM Production.Product
--WHERE color='Blue' or color='Black';

/* SELECT *
FROM Production.Product
WHERE ListPrice > 1500 AND ListPrice < 5000;
*/

--SELECT *
--FROM Production.Product
--WHERE color<>'Red';

-- DESAFIO 1: A equipe de produ��o de produtos precisa do nome de todas as pe�as que pesam mais de 500Kg, mas n�o
-- mais que 700Kg para inspe��o

SELECT Name, Weight 
FROM Production.Product
WHERE Weight > 500 AND Weight <= 700;


-- DESAFIO 2: Foi pedido pelo marketing uma rela��o de todos os empregados(employes) que s�o casados
-- ( single = Solteiro, Married = casado ) e s�o asalariados( salaried )
SELECT * 
FROM HumanResources.Employee
-- WHERE MaritalStatus = 'M' AND SalariedFlag = 'true';
WHERE MaritalStatus = 'M' AND SalariedFlag = 1;

-- DESAFIO 3: Um uu�rio chamado Peter Krebs est� devendo um pagamento, consiga o e-mail dele para
-- que possamos eniar uma cobran�a. ( Ser� preciso usra a tabela Person.Person e depois a tabela 
-- Person.Emailaddress. Localizar em Person.Person o BusinessEntityId e em seguid localizar o
-- BusinessEntityId na tabela Person.Emailaddress )

/* Selects the user Peter Krebs and your BusinessEntityID */
SELECT FirstName, LastName, BusinessEntityId
FROM Person.Person
WHERE FirstName = 'Peter' AND LastName = 'Krebs';

/* Selects Peter's e-mail adress using his BusinessEntityID */
SELECT BusinessEntityID, EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = 26;