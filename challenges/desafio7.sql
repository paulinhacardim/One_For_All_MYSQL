SELECT
  artista.nome AS artista,
  album.nome AS album,
  COUNT(seguidores.artista_id) AS pessoas_seguidoras
FROM
  SpotifyClone.artista AS artista
  INNER JOIN SpotifyClone.album ON album.artista_id = artista.artista_id
  INNER JOIN SpotifyClone.seguidores ON seguidores.artista_id = artista.artista_id
GROUP BY
  artista,
  album
ORDER BY
  pessoas_seguidoras DESC,
  artista,
  album;