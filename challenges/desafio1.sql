-- Descomente e altere as linhas abaixo:

-- DROP DATABASE IF EXISTS SpotifyClone;
-- CREATE DATABASE IF NOT EXISTS SpotifyClone;
-- CREATE TABLE SpotifyClone.tabela1(
--     coluna1 tipo restricoes,
--     coluna2 tipo restricoes,
--     colunaN tipo restricoes,
-- ) engine = InnoDB;
-- CREATE TABLE SpotifyClone.tabela2(
--     coluna1 tipo restricoes,
--     coluna2 tipo restricoes,
--     colunaN tipo restricoes,
-- ) engine = InnoDB;
-- INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
-- VALUES
--   ('exemplo de dados 1', 'exemplo de dados A'),
--   ('exemplo de dados 2', 'exemplo de dados B'),
--   ('exemplo de dados 3', 'exemplo de dados C');
-- INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
-- VALUES
--   ('exemplo de dados 1', 'exemplo de dados X'),
--   ('exemplo de dados 2', 'exemplo de dados Y');

DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano(
    plano_id INT PRIMARY KEY auto_increment,
    plano VARCHAR(45) NOT NULL,
    valor_plano DECIMAL(5,3) NOT NULL
) engine = InnoDB;

CREATE TABLE artista(
    id INT PRIMARY KEY auto_increment,
    nome VARCHAR(45) NOT NULL
) engine = InnoDB;

CREATE TABLE usuario(
    id INT PRIMARY KEY auto_increment,
    nome VARCHAR(45) NOT NULL,
    idade INT NOT NULL,
    data_assinatura DATE NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES plano_id
    ) engine = InnoDB;


CREATE TABLE cancoes(
    id INT PRIMARY KEY auto_increment,
    nome VARCHAR(75) NOT NULL,
    tempo_duracao DECIMAL(5, 2) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album(id)
) engine = InnoDB;


CREATE TABLE album(
    id INT PRIMARY KEY auto_increment,
    nome VARCHAR(45) NOT NULL,
    artista INT NOT NULL,
    data_assinatura DATE NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES plano_id
    ) engine = InnoDB;



-- CREATE TABLE SpotifyClone.tabela2(
--     coluna1 tipo restricoes,
--     coluna2 tipo restricoes,
--     colunaN tipo restricoes,
-- ) engine = InnoDB;















INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados A'),
  ('exemplo de dados 2', 'exemplo de dados B'),
  ('exemplo de dados 3', 'exemplo de dados C');
INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');