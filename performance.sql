/* exercicio */

/* Considerando o que vc aprendeu sobre performance, resolva os exercicios abaixo */

SELECT COUNT(*) FROM FUNCIONARIOS;

--Traga os funcionarios que trabalhem
--no departamento de filmes OU no
--departamento de roupas

-- 21 | Filmes   53 | Roupas

--Como estamos trabalhando com OR e a segunda condicao é opcional
--colocamos na primeira condicao quem tem mais chances de uma saida
--verdadeira, pois a segunda condicao nao será checada nesse caso.

SELECT * FROM funcionarios
WHERE departamento = 'Roupas'
OR
departamento = 'Filmes';

SELECT COUNT(*), departamento
FROM FUNCIONARIOS
GROUP BY departamento;

SELECT COUNT(*), departamento
FROM FUNCIONARIOS
GROUP BY departamento
ORDER BY 1;

WHERE DEPARTAMENTO = 'Filmes' OR DEPARTAMENTO = 'Roupas'

--O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
--de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
--desses dois setores. OR +  AND *

--Feminino 491 ocorrencias
SELECT count(*), sexo
FROM funcionarios
GROUP BY sexo;

--52 | Lar  21 Filmes
SELECT count(*), departamento
FROM funcionarios
GROUP BY departamento;

SELECT * FROM FUNCIONARIOS
WHERE
( DEPARTAMENTO = 'Lar' AND SEXO = 'Feminino' )
OR
( DEPARTAMENTO = 'Filmes' AND SEXO = 'Feminino' );

--Traga os funcionarios do sexo masculino
--ou os funcionarios que trabalhem no setor Jardim

SELECT * FROM FUNCIONARIOS
WHERE
SEXO = 'Masculino' OR
DEPARTAMENTO = 'Jardim';