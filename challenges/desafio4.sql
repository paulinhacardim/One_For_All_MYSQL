SELECT
    usuario.nome AS pessoa_usuaria,
    IF(
        YEAR(MAX(historico_reproducao.data_reproducao)) >= 2021,
        'Ativa',
        'Inativa'
    ) AS status_pessoa_usuaria
FROM
    SpotifyClone.usuario AS usuario
    INNER JOIN SpotifyClone.historico_reproducao ON historico_reproducao.usuario_id = usuario.id
GROUP BY
    pessoa_usuaria
ORDER BY
    pessoa_usuaria;