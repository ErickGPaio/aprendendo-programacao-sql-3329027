-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
SELECT T.TRACKID,
       T.NAME   AS MUSICA,
       AB.TITLE AS ALBUM,
       A.NAME   AS ARTISTA
FROM TRACKS        AS T
INNER JOIN ALBUMS  AS AB ON T.ALBUMID = AB.ALBUMID
INNER JOIN ARTISTS AS A  ON A.ARTISTID = AB.ARTISTID;


-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
WITH MUSICA AS (

SELECT T.TRACKID,
       T.NAME   AS MUSICA,
       AB.TITLE AS ALBUM,
       A.NAME   AS ARTISTA
FROM TRACKS        AS T
INNER JOIN ALBUMS  AS AB ON T.ALBUMID = AB.ALBUMID
INNER JOIN ARTISTS AS A  ON A.ARTISTID = AB.ARTISTID)

SELECT ARTISTA,
       COUNT(MUSICA) AS QTD_MUSICA
  FROM MUSICA
WHERE UPPER(ARTISTA) LIKE 'CAETANO%';