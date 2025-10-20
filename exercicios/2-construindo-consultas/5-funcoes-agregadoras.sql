-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
SELECT 
       BILLINGCOUNTRY    AS PAIS,
       SUM(TOTAL)        AS SOMA_COMPRAS,
       COUNT(TOTAL)      AS COMPRAS_REALIZADAS,
       MIN(TOTAL)        AS MENOR_COMPRA,
       MAX(TOTAL)        AS MAIOR_COMPRA,
       ROUND(AVG(TOTAL),2)  AS TICKET_MEDIO
  FROM INVOICES
  GROUP BY BILLINGCOUNTRY;