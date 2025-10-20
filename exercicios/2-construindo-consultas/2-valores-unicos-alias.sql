-- Para a tabela "customers" crie uma consulta que retorne apenas os valores únicos da coluna Country
SELECT DISTINCT COUNTRY
FROM CUSTOMERS
ORDER BY COUNTRY;

-- Na consulta anterior, adicione a coluna Company para verificar as combinações únicas entre empresas e países
SELECT DISTINCT COUNTRY,
                COMPANY
FROM CUSTOMERS
ORDER BY COUNTRY;

-- Nesta mesma consulta, atribua um alias com título em português para cada coluna
SELECT DISTINCT COUNTRY AS PAIS,
                COMPANY AS EMPRESA
FROM CUSTOMERS
ORDER BY COUNTRY;