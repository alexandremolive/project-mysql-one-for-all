USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARBINARY(100))
BEGIN
SELECT
A.NOME_DO_ARTISTA AS `artista`,
B.NOME_DO_ALBUM AS `album`
FROM SpotifyClone.ARTISTAS AS A
INNER JOIN SpotifyClone.ALBUNS AS B
ON A.ARTISTA_ID = B.ARTISTA_ID
WHERE A.NOME_DO_ARTISTA = nome
ORDER BY `album` ASC;
END $$
DELIMITER ;