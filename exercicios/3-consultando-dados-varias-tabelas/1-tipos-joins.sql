-- Crie uma consulta para realizar um left join com as tabelas "albums" e "artists"
SELECT * 
FROM ALBUMS A
LEFT JOIN ARTISTS B ON A.ARTISTID = B.ARTISTID;

