-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"
WITH MUSICA AS (

SELECT T.TRACKID,
       T.NAME   AS MUSICA,
       AB.TITLE AS ALBUM,
       A.NAME   AS ARTISTA
FROM TRACKS        AS T
INNER JOIN ALBUMS  AS AB ON T.ALBUMID = AB.ALBUMID
INNER JOIN ARTISTS AS A  ON A.ARTISTID = AB.ARTISTID)

SELECT MUSICA,
       ALBUM
       ARTISTA
       
  FROM MUSICA
WHERE UPPER(ARTISTA) LIKE '%Nação%'
AND UPPER(ALBUM) NOT LIKE 'DA LAMA AO CAOS';

