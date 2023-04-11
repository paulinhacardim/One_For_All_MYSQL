SELECT
    COUNT(*) AS musicas_no_historico
FROM
    SpotifyClone.historico_reproducao AS historico_reproducao
    INNER JOIN SpotifyClone.usuario 
    AS usuario ON usuario.id = historico_reproducao.usuario_id
WHERE
    usuario.nome = 'Barbara Liskov';