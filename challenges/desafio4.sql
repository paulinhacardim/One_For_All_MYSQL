SELECT usuarios.nome As pessoa_usuaria,
IF(MAX(YEAR(historico.data_reproducao)) >= 2021,
'Ativa', 'Inativa') AS status_pessoa
FROM SpotifyClone.usuario AS usuarios
INNER JOIN 
SpotifyClone.historico_reproducao AS historico ON historico.id = usuario.id
GROUP BY usuarios.nome
ORDER BY usuarios.nome;
