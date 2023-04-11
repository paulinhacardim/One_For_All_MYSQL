SELECT
    artista.nome AS artista,
    album.nome AS album
FROM
    SpotifyClone.artista AS artista
    INNER JOIN SpotifyClone.album AS album ON album.id = artista.id
WHERE
    artista.nome = 'Elis Regina';
