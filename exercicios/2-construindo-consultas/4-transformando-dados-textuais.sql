-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT CUSTOMERID AS ID,
FIRSTNAME AS NOME,
LASTNAME  AS SOBRENOME,
ADDRESS   AS "ENDEREÇO"
FROM CUSTOMERS
WHERE COUNTRY LIKE 'Bra%';

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT CUSTOMERID AS ID,
FIRSTNAME AS NOME,
UPPER(LASTNAME)  AS SOBRENOME,
ADDRESS   AS "ENDEREÇO"
FROM CUSTOMERS
WHERE COUNTRY LIKE 'Bra%';


-- Na consulta anterior, converta o nome para letras minúsculas
SELECT CUSTOMERID AS ID,
LOWER(FIRSTNAME) AS NOME,
UPPER(LASTNAME)  AS SOBRENOME,
ADDRESS   AS "ENDEREÇO"
FROM CUSTOMERS
WHERE COUNTRY LIKE 'Bra%';


-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT CUSTOMERID AS ID,
LOWER(FIRSTNAME) AS NOME,
UPPER(LASTNAME)  AS SOBRENOME,
CONCAT(FIRSTNAME || ' ' || LASTNAME) AS "NOME COMPLETO",
ADDRESS   AS "ENDEREÇO"
FROM CUSTOMERS
WHERE COUNTRY LIKE 'Bra%';

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT CUSTOMERID AS ID,
LOWER(FIRSTNAME) AS NOME,
UPPER(LASTNAME)  AS SOBRENOME,
CONCAT(FIRSTNAME || ' ' || LASTNAME) AS "NOME COMPLETO",
REPLACE(ADDRESS, 'Av', 'AVENIDA')   AS "ENDEREÇO"
FROM CUSTOMERS
WHERE COUNTRY LIKE 'Bra%';


-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
