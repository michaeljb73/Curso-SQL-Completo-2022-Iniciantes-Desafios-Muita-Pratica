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
--FROM Production.Product
--WHERE color='Blue' or color='Black';

/* SELECT *
FROM Production.Product
WHERE ListPrice > 1500 AND ListPrice < 5000;
*/

SELECT *
FROM Production.Product
WHERE color<>'Red';