SELECT
    cancoes.nome AS cancao,
    COUNT(historico_reproducao.cancao_id) AS historico_reproducao
FROM
   SpotifyClone.cancoes
    INNER JOIN SpotifyClone.historico_reproducao ON historico_reproducao.cancao_id = cancoes.id
GROUP BY
    cancao
ORDER BY
    historico_reproducao DESC,
    cancao
LIMIT
    2;