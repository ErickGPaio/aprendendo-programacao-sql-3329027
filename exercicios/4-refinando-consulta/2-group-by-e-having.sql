-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente
SELECT C.CUSTOMERID,
       C.FIRSTNAME AS NOME,
       SUM(I.TOTAL) AS TOTAL_GASTO
FROM INVOICES AS I
INNER JOIN CUSTOMERS AS C ON I.CUSTOMERID = C.CUSTOMERID
GROUP BY C.CUSTOMERID;

-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30
SELECT C.CUSTOMERID,
       C.FIRSTNAME AS NOME,
       SUM(I.TOTAL) AS TOTAL_GASTO
FROM INVOICES AS I
INNER JOIN CUSTOMERS AS C ON I.CUSTOMERID = C.CUSTOMERID
GROUP BY C.CUSTOMERID
HAVING SUM(I.TOTAL) >= 30;

-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente
SELECT C.CUSTOMERID,
       C.FIRSTNAME  AS NOME,
       SUM(I.TOTAL) AS TOTAL_GASTO,
       MAX(I.TOTAL) AS MAIOR_GASTO
FROM INVOICES AS I
INNER JOIN CUSTOMERS AS C ON I.CUSTOMERID = C.CUSTOMERID
GROUP BY C.CUSTOMERID;