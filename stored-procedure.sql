/* STORED PROCEDURES */

SELECT 'MAFRA';

DELIMITER $

CREATE PROCEDURE NOME()
BEGIN

	QUALQUER PROGRAMACAO;

END
$

DELIMITER $

CREATE PROCEDURE NOME_EMPRESA()
BEGIN
	
	SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA;

END
$

DELIMITER ;

/* CHAMANDO UMA PROCEDURE */


CALL NOME_EMPRESA()$

DELIMITER ;

CALL NOME_EMPRESA();

/* PROCEDURES COM PARAMETROS */

SELECT 10 + 10 AS CONTA;

DELIMITER $

CREATE PROCEDURE CONTA()
BEGIN
	
	SELECT 10 + 10 AS CONTA;

END
$

CALL CONTA();

DROP PROCEDURE CONTA;

DELIMITER $

CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT)
BEGIN
	
	SELECT (NUMERO1 + NUMERO2) AS CONTA;

END
$

CALL CONTA(100,50)$
CALL CONTA(345634,4354)$
CALL CONTA(55654,56760)$
CALL CONTA(45646,6766)$