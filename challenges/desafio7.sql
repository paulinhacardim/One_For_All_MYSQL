SELECT
    artista.nome AS artista,
    album.nome AS album,
    COUNT(seguidores.artista_id) AS pessoas_seguidoras
FROM
    SpotifyClone.artista AS artista
    INNER JOIN SpotifyClone.album AS album ON album.id_artista = artista.id
    INNER JOIN SpotifyClone.seguidores AS seguidores ON seguidores.artista_id = artista.id
GROUP BY
    artista,
    album
ORDER BY
    pessoas_seguidoras DESC,
    artista,
    album;