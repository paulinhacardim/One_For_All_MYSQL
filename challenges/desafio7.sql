SELECT
    artista.nome AS artista,
    album.nome AS album,
    COUNT(seguidores.id) AS pessoas_seguidoras
FROM
    SpotifyClone.artista AS artista
    INNER JOIN SpotifyClone.album AS album ON album.id = artista.id
    INNER JOIN SpotifyClone.seguidores AS seguidores ON seguidores.id = artista.id
GROUP BY
    artista,
    album
ORDER BY
    pessoas_seguidoras DESC,
    artista,
    album;