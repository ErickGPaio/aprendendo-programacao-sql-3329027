-- Desenvolva uma consulta para a tabela "customers" que retorne apenas 10 linhas
SELECT C.CUSTOMERID,
       C.FIRSTNAME  AS NOME,
       C.COUNTRY    AS PAIS
  FROM CUSTOMERS C
LIMIT 10;

-- Usando a consulta anterior, ordene a coluna "Country" de forma crescente e "FirstName" de forma decrescente
SELECT C.CUSTOMERID,
       C.FIRSTNAME  AS NOME,
       C.COUNTRY    AS PAIS
  FROM CUSTOMERS C
ORDER BY COUNTRY ASC, NOME DESC;

-- Continue usando a consulta anterior, dessa vez retorne 10 resultados, no entando ignore as 3 primeiras linhas
SELECT C.CUSTOMERID,
       C.FIRSTNAME  AS NOME,
       C.COUNTRY    AS PAIS
  FROM CUSTOMERS C
LIMIT 10 OFFSET 3;