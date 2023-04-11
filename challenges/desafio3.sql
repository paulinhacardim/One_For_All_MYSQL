SELECT
    u.nome AS pessoa_usuaria,
    COUNT(h.cancao_id) AS musicas_ouvidas,
    ROUND(SUM(c.tempo_duracao / 60), 2) AS total_minutos
FROM
    SpotifyClone.usuario AS u
    INNER JOIN SpotifyClone.historico_reproducao AS h ON h.usuario_id = u.id
    INNER JOIN SpotifyClone.cancoes AS c ON c.id = h.cancao_id
GROUP BY
    u.nome
ORDER BY
    u.nome;