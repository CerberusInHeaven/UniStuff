/* CRIAÇÃO DE SCHEMA / DEFINIÇÃO*/

DROP 
  SCHEMA IF EXISTS aula06;
CREATE SCHEMA aula06;
USE aula06;

-- PAIS
CREATE TABLE pais (
  id INT NOT NULL AUTO_INCREMENT, 
  nome VARCHAR(45) NOT NULL, 
  PRIMARY KEY (id)
);

-- CIDADE
CREATE TABLE cidade (
  id INT NOT NULL AUTO_INCREMENT, 
  nome VARCHAR(45) NULL, 
  uf CHAR(2) NULL, 
  PRIMARY KEY (id)
);

-- CINEMA
CREATE TABLE cinema (
  id INT NOT NULL AUTO_INCREMENT, 
  nomeFantasia VARCHAR(45) NOT NULL, 
  endereco VARCHAR(45) NOT NULL, 
  bairro VARCHAR(45) NOT NULL, 
  idCidade INT NOT NULL, 
  capacidade INT NOT NULL, 
  PRIMARY KEY (id),
  CONSTRAINT fk_cinema_cidade FOREIGN KEY (idCidade) REFERENCES cidade (id)
);

-- GENERO
CREATE TABLE genero (
  id INT NOT NULL AUTO_INCREMENT, 
  nome VARCHAR(45) NOT NULL, 
  PRIMARY KEY (id)
);

-- ATOR (contém atores e diretores)
CREATE TABLE ator (
  id INT NOT NULL AUTO_INCREMENT, 
  nome VARCHAR(45) NOT NULL, 
  PRIMARY KEY (id)
);

-- FILME
CREATE TABLE filme (
  id INT NOT NULL AUTO_INCREMENT, 
  idGenero INT NOT NULL, 
  idPais INT NOT NULL, 
  idDiretor INT NOT NULL, 
  tituloOriginal VARCHAR(45) NOT NULL, 
  tituloPortugues VARCHAR(45) NULL, 
  duracao INT NULL, 
  PRIMARY KEY (id), 
  CONSTRAINT fk_filme_genero FOREIGN KEY (idGenero) REFERENCES genero (id), 
  CONSTRAINT fk_filme_pais FOREIGN KEY (idPais) REFERENCES pais (id), 
  CONSTRAINT fk_filme_ator FOREIGN KEY (idDiretor) REFERENCES ator (id)
);

-- ELENCO
CREATE TABLE elenco (
  idFilme INT NOT NULL, 
  idAtor INT NOT NULL, 
  PRIMARY KEY (idFilme, idAtor), 
  CONSTRAINT fk_elenco_filme FOREIGN KEY (idFilme) REFERENCES filme (id), 
  CONSTRAINT fk_elenco_ator FOREIGN KEY (idAtor) REFERENCES ator (id)
);

-- SESSAO
CREATE TABLE sessao (
  id INT NOT NULL AUTO_INCREMENT, 
  idCinema INT NOT NULL, 
  idFilme INT NOT NULL, 
  data DATE NOT NULL, 
  horaInicio TIME NOT NULL, 
  publico INT NOT NULL, 
  PRIMARY KEY (id), 
  CONSTRAINT fk_sessao_cinema FOREIGN KEY (idCinema) REFERENCES cinema (id), 
  CONSTRAINT fk_sessao_filme FOREIGN KEY (idFilme) REFERENCES filme (id)
);

-- USUARIO
CREATE TABLE usuario (
  id INT NOT NULL AUTO_INCREMENT, 
  idCidade INT NOT NULL, 
  nome VARCHAR(45) NULL, 
  email VARCHAR(100) NULL, 
  PRIMARY KEY (id), 
  CONSTRAINT fk_usuario_cidade FOREIGN KEY (idCidade) REFERENCES cidade (id)
);

-- TIPO PAGAMENTO
CREATE table tipoPagto (
  id INT NOT NULL AUTO_INCREMENT, 
  nome VARCHAR(45) NOT NULL, 
  PRIMARY KEY (id)
);

-- VENDA
CREATE TABLE venda (
  id INT NOT NULL AUTO_INCREMENT, 
  idSessao INT NOT NULL, 
  idTipoPagto INT NOT NULL, 
  idUsuario INT NOT NULL, 
  data DATE NULL, 
  hora TIME NULL, 
  valorIngresso DOUBLE NULL, 
  PRIMARY KEY (id), 
  CONSTRAINT fk_venda_sessao FOREIGN KEY (idSessao) REFERENCES sessao (id), 
  CONSTRAINT fk_venda_usuario FOREIGN KEY (idUsuario) REFERENCES usuario (id), 
  CONSTRAINT fk_venda_tipoPagto FOREIGN KEY (idTipoPagto) REFERENCES tipoPagto (id)
);

-- PARCELA
CREATE table parcela (
  id INT NOT NULL AUTO_INCREMENT, 
  idVenda INT NOT NULL, 
  valor DOUBLE, 
  vencimento DATE, 
  situacao VARCHAR(45), 
  PRIMARY KEY (id), 
  CONSTRAINT fk_venda_parcela FOREIGN KEY (idVenda) REFERENCES venda (id)
);

-- -------

USE aula06;
-- -------

-- Inserts

-- Ator

INSERT INTO ator (nome) VALUES('Adam Sandler');
INSERT INTO ator (nome) VALUES('Al Pacino');
INSERT INTO ator (nome) VALUES('Angelina Jolie');
INSERT INTO ator (nome) VALUES('Anne Hathaway');
INSERT INTO ator (nome) VALUES('Ben Stiller');
INSERT INTO ator (nome) VALUES('Brad Pitt');
INSERT INTO ator (nome) VALUES('Charlize Theron');
INSERT INTO ator (nome) VALUES('Chris Hemsworth');
INSERT INTO ator (nome) VALUES('Chris Pratt');
INSERT INTO ator (nome) VALUES('Christian Bale');
INSERT INTO ator (nome) VALUES('Denzel Washington');
INSERT INTO ator (nome) VALUES('Dwayne Johnson');
INSERT INTO ator (nome) VALUES('Emily Blunt');
INSERT INTO ator (nome) VALUES('Emma Stone');
INSERT INTO ator (nome) VALUES('Emmanuelle Riva');
INSERT INTO ator (nome) VALUES('Ewan McGregor');
INSERT INTO ator (nome) VALUES('Gal Gadot');
INSERT INTO ator (nome) VALUES('Gladimau Ceroni');
INSERT INTO ator (nome) VALUES('Helen Hunt');
INSERT INTO ator (nome) VALUES('Hugh Jackman');
INSERT INTO ator (nome) VALUES('Jamie Foxx');
INSERT INTO ator (nome) VALUES('Jason Clarke');
INSERT INTO ator (nome) VALUES('Jennifer Aniston');
INSERT INTO ator (nome) VALUES('Joaquin Phoenix');
INSERT INTO ator (nome) VALUES('John Hawkes');
INSERT INTO ator (nome) VALUES('Jude Law');
INSERT INTO ator (nome) VALUES('Keanu Reeves');
INSERT INTO ator (nome) VALUES('Keira Knightley');
INSERT INTO ator (nome) VALUES('Kristen Connolly');
INSERT INTO ator (nome) VALUES('Kristen Stewart');
INSERT INTO ator (nome) VALUES('Leonardo DiCaprio');
INSERT INTO ator (nome) VALUES('Margot Robbie');
INSERT INTO ator (nome) VALUES('Mark Ruffalo');
INSERT INTO ator (nome) VALUES('Matthew McConaughey');
INSERT INTO ator (nome) VALUES('Meryl Streep');
INSERT INTO ator (nome) VALUES('Michael Douglas');
INSERT INTO ator (nome) VALUES('Morgan Freeman');
INSERT INTO ator (nome) VALUES('Natalie Portman');
INSERT INTO ator (nome) VALUES('Paul Rudd');
INSERT INTO ator (nome) VALUES('Robert De Niro');
INSERT INTO ator (nome) VALUES('Robert Downey Jr.');
INSERT INTO ator (nome) VALUES('Ryan Gosling');
INSERT INTO ator (nome) VALUES('Ryan Reynolds');
INSERT INTO ator (nome) VALUES('Samuel L. Jackson');
INSERT INTO ator (nome) VALUES('Scarlett Johansson');
INSERT INTO ator (nome) VALUES('Tom Cruise');
INSERT INTO ator (nome) VALUES('Tom Hanks');
INSERT INTO ator (nome) VALUES('Tom Hardy');
INSERT INTO ator (nome) VALUES('Viola Davis');
INSERT INTO ator (nome) VALUES('Will Smith');
INSERT INTO ator (nome) VALUES('Zendaya');

-- Diretor
INSERT INTO ator (nome) VALUES('Martin Scorsese');
INSERT INTO ator (nome) VALUES('Quentin Tarantino');
INSERT INTO ator (nome) VALUES('Roman Polanski');
INSERT INTO ator (nome) VALUES('Steven Spilberg');
INSERT INTO ator (nome) VALUES('Robert Zemeckis');
INSERT INTO ator (nome) VALUES('Joe Wright');
INSERT INTO ator (nome) VALUES('Ben Lewin');
INSERT INTO ator (nome) VALUES('Paul Thomas Anderson');
INSERT INTO ator (nome) VALUES('William Friedkin');
INSERT INTO ator (nome) VALUES('Kathryn Bigelow');
INSERT INTO ator (nome) VALUES('Michael Haneke');
INSERT INTO ator (nome) VALUES('Drew Goddard');
	
-- País
INSERT INTO pais (nome) VALUES ('Brasil');
INSERT INTO pais (nome) VALUES ('Estados Unidos');
INSERT INTO pais (nome) VALUES ('Inglaterra');
INSERT INTO pais (nome) VALUES ('França');
INSERT INTO pais (nome) VALUES ('Argentina');


-- cidade
INSERT INTO cidade (nome, uf) VALUES ('Pelotas', 'RS');
INSERT INTO cidade (nome, uf) VALUES ('Arroio Grande', 'RS');
INSERT INTO cidade (nome, uf) VALUES ('Campinas', 'SP');
INSERT INTO cidade (nome, uf) VALUES ('Herval', 'RS');
INSERT INTO cidade (nome, uf) VALUES ('Jaguarão', 'RS');
INSERT INTO cidade (nome, uf) VALUES ('São Paulo', 'SP');

-- Gênero
INSERT INTO genero (nome) VALUES ('Comédia');
INSERT INTO genero (nome) VALUES ('Ficção');
INSERT INTO genero (nome) VALUES ('Drama');
INSERT INTO genero (nome) VALUES ('Aventura');
INSERT INTO genero (nome) VALUES ('Suspense');
INSERT INTO genero (nome) VALUES ('Terror');
INSERT INTO genero (nome) VALUES ('Policial');
INSERT INTO genero (nome) VALUES ('Faroeste');

-- Filme
INSERT INTO filme (tituloOriginal, tituloPortugues, duracao, idDiretor, idGenero, idPais) 
VALUES ('Flight', 'O Voo', 138, 5, 3, 2);

INSERT INTO filme (tituloOriginal, tituloPortugues, duracao, idDiretor, idGenero, idPais) 
VALUES ('Anna Karenina', 'Anna Karenina', 131, 6, 3, 3);

INSERT INTO filme (tituloOriginal, tituloPortugues, duracao, idDiretor, idGenero, idPais) 
VALUES ('The Sessions', 'As Sessões', 98, 7, 1, 2);

INSERT INTO filme (tituloOriginal, tituloPortugues, duracao, idDiretor, idGenero, idPais) 
VALUES ('Django Unchained', 'Django Livre', 164, 2, 8, 2);

INSERT INTO filme (tituloOriginal, tituloPortugues, duracao, idDiretor, idGenero, idPais) 
VALUES ('The Master', 'O Mestre', 144, 8, 3, 2);

INSERT INTO filme (tituloOriginal, tituloPortugues, duracao, idDiretor, idGenero, idPais) 
VALUES ('Killer Joe', 'Killer Joe - Matador de Aluguel', 102, 9, 5, 2);

INSERT INTO filme (tituloOriginal, tituloPortugues, duracao, idDiretor, idGenero, idPais) 
VALUES ('Zero Dark Thirty', 'A Hora Mais Escura', 157, 10, 5, 2);

INSERT INTO filme (tituloOriginal, tituloPortugues, duracao, idDiretor, idGenero, idPais) 
VALUES ('Amour', 'Amor', 127, 11, 3, 4);

INSERT INTO filme (tituloOriginal, tituloPortugues, duracao, idDiretor, idGenero, idPais) 
VALUES ('The Cabin in The Woods', 'O Segredo da Cabana', 105, 12, 6, 2);

INSERT INTO filme (tituloOriginal, tituloPortugues, duracao, idDiretor, idGenero, idPais) 
VALUES ('La Murga Loca', 'Don Angelus Pax de volta ao lar', 90, 28, 1, 5);

INSERT INTO filme (tituloOriginal, tituloPortugues, duracao, idDiretor, idGenero, idPais) 
VALUES ('Cucarachas Assassinas', 'Hey! Hey! Hey! Hey Decio é nosso... Rei', 90, 29, 1, 5);

INSERT INTO filme (tituloOriginal, tituloPortugues, duracao, idDiretor, idGenero, idPais) 
VALUES ('O incrível caso do DELETE sem WHERE', 'The Incredible Case of the DELETE Without WHERE', 120, 7, 1, 2);

-- Elenco
INSERT INTO elenco (idFilme, idAtor) VALUES (1,12);
INSERT INTO elenco (idFilme, idAtor) VALUES (1,26);
INSERT INTO elenco (idFilme, idAtor) VALUES (2,13);
INSERT INTO elenco (idFilme, idAtor) VALUES (2,14);
INSERT INTO elenco (idFilme, idAtor) VALUES (3,15);
INSERT INTO elenco (idFilme, idAtor) VALUES (3,16);
INSERT INTO elenco (idFilme, idAtor) VALUES (4, 4);
INSERT INTO elenco (idFilme, idAtor) VALUES (4,17);
INSERT INTO elenco (idFilme, idAtor) VALUES (5,18);
INSERT INTO elenco (idFilme, idAtor) VALUES (6,19);
INSERT INTO elenco (idFilme, idAtor) VALUES (7,20);
INSERT INTO elenco (idFilme, idAtor) VALUES (7,21);
INSERT INTO elenco (idFilme, idAtor) VALUES (8,22);
INSERT INTO elenco (idFilme, idAtor) VALUES (8,23);
INSERT INTO elenco (idFilme, idAtor) VALUES (9,24);
INSERT INTO elenco (idFilme, idAtor) VALUES (9,25);

-- cinema
INSERT INTO cinema (nomeFantasia, endereco, bairro, idCidade, capacidade) 
VALUES ('Cine Art Pelotas', 'Rua Andrade Neves, 1510', 'Centro', 1, 400);

INSERT INTO cinema (nomeFantasia, endereco, bairro, idCidade, capacidade) 
VALUES ('Cine Mart Pelotas', 'Rua Andrade Neves, 1511', 'Centro', 1, 300);

INSERT INTO cinema (nomeFantasia, endereco, bairro, idCidade, capacidade) 
VALUES ('Cine Part Pelotas', 'Rua Andrade Neves, 1512', 'Centro', 1, 250);

INSERT INTO cinema (nomeFantasia, endereco, bairro, idCidade, capacidade) 
VALUES ('Cineart', 'Avenida Edméia Matos Lazzarotti, 1655', 'Centro', 2, 400);

INSERT INTO cinema (nomeFantasia, endereco, bairro, idCidade, capacidade) 
VALUES ('Cine Art RG', 'Av Oswaldo Barros, 251', 'Centro', 3, 400);

INSERT INTO cinema (nomeFantasia, endereco, bairro, idCidade, capacidade) 
VALUES ('Cine Art PoA', 'Av das Nações, 665', 'Centro', 4, 700);

INSERT INTO cinema (nomeFantasia, endereco, bairro, idCidade, capacidade) 
VALUES ('Cine Freak PoA', 'Av das Monções, 667', 'Centro', 4, 500);

INSERT INTO cinema (nomeFantasia, endereco, bairro, idCidade, capacidade) VALUES ('Cine SP Center', 'Av Paulista, 1000', 'Paulista', 6, 500);

-- sessao
INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (1, 2, '2024-08-01', '16:00:00', 45);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (1, 2, '2024-08-01', '19:00:00', 80);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (1, 9, '2024-08-01', '21:30:00', 95);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (2, 1, '2024-08-01', '16:00:00', 38);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (2, 1, '2024-08-01', '19:00:00', 55);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (2, 8, '2024-08-01', '21:30:00', 110);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (3, 6, '2024-08-01', '16:00:00', 60);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (3, 6, '2024-08-01', '19:00:00', 75);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (4, 7, '2024-08-01', '18:00:00', 185);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (5, 1, '2024-08-01', '16:00:00', 145);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (5, 1, '2024-08-01', '20:00:00', 249);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (6, 6, '2024-08-01', '15:00:00', 314);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (6, 2, '2024-08-01', '19:40:00', 489);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (6, 9, '2024-08-01', '21:45:00', 548);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (1, 2, '2024-08-02', '16:00:00', 64);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (1, 2, '2024-08-02', '19:00:00', 98);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (1, 9, '2024-08-02', '21:30:00', 114);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (2, 1, '2024-08-02', '16:00:00', 57);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (2, 1, '2024-08-02', '19:00:00', 78);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (2, 8, '2024-08-02', '21:30:00', 134);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (3, 6, '2024-08-02', '16:00:00', 48);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (3, 6, '2024-08-02', '19:00:00', 75);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (4, 7, '2024-08-02', '18:00:00', 158);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (5, 1, '2024-08-02', '16:00:00', 105);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (5, 1, '2024-08-02', '20:00:00', 214);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (6, 6, '2024-08-02', '15:00:00', 289);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (6, 2, '2024-08-02', '19:40:00', 425);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (6, 9, '2024-08-02', '21:45:00', 502);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (1, 2, '2024-08-03', '16:00:00', 95);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (1, 2, '2024-08-03', '19:00:00', 124);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (1, 9, '2024-08-03', '21:30:00', 158);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (2, 1, '2024-08-03', '16:00:00', 46);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (2, 1, '2024-08-03', '19:00:00', 97);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (2, 8, '2024-08-03', '21:30:00', 187);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (3, 6, '2024-08-03', '16:00:00', 87);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (3, 6, '2024-08-03', '19:00:00', 105);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (4, 7, '2024-08-03', '18:00:00', 198);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (5, 1, '2024-08-03', '16:00:00', 97);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (5, 1, '2024-08-03', '20:00:00', 248);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (6, 6, '2024-08-03', '15:00:00', 314);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (6, 2, '2024-08-03', '19:40:00', 499);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (6, 9, '2024-08-03', '21:45:00', 587);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (1, 2, '2024-08-04', '16:00:00', 55);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (1, 2, '2024-08-04', '19:00:00', 108);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (1, 9, '2024-08-04', '21:30:00', 187);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (2, 1, '2024-08-04', '16:00:00', 67);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (2, 1, '2024-08-04', '19:00:00', 89);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (2, 8, '2024-08-04', '21:30:00', 144);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (3, 6, '2024-08-04', '16:00:00', 75);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (3, 6, '2024-08-04', '19:00:00', 101);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (4, 7, '2024-08-04', '18:00:00', 149);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (5, 1, '2024-08-04', '16:00:00', 115);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (5, 1, '2024-08-04', '20:00:00', 268);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (6, 6, '2024-08-04', '15:00:00', 387);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (6, 2, '2024-08-04', '19:40:00', 455);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (6, 9, '2024-08-04', '21:45:00', 608);

INSERT INTO sessao (idCinema, idFilme, data, horaInicio, publico) 
VALUES (2, 6, '2024-08-05', '20:00:00', 150);

-- usuario
INSERT INTO usuario (idCidade, nome, email) 
VALUES (3, 'Edecius', 'compreolivro@javascript.com');

INSERT INTO usuario (idCidade, nome, email) 
VALUES (3, 'Mussum', 'cacildis@senacrs.com.br');

INSERT INTO usuario (idCidade, nome, email) 
VALUES (2, 'Angelis', 'angel@hotwheels.com');

INSERT INTO usuario (idCidade, nome, email) 
VALUES (1, 'Satolepis', 'pelotis@docis.com');

INSERT INTO usuario (idCidade, nome, email) 
VALUES (5, 'Senaquius', 'senaquinho@meuprecioso.com');

INSERT INTO usuario (idCidade, nome, email) 
VALUES (4, 'Gladimiris', 'ouniconormal@minecraft.com');
INSERT INTO tipoPagto (nome) VALUES ('A Vista');
INSERT INTO tipoPagto (nome) VALUES ('Parcelado');

-- venda
INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (2, 1, '2024-08-01', '16:00:00', 15.00, 1);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (4, 2, '2024-08-01', '16:00:00', 10.00, 2);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (4, 3, '2024-04-01', '16:00:00', 10.00, 2);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (4, 2, '2024-04-01', '16:00:00', 12.00, 2);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (4, 4, '2024-04-01', '16:00:00', 10.00, 2);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (4, 1, '2024-04-01', '16:00:00', 10.00, 2);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (13, 3, '2024-08-01', '16:00:00', 12.00, 2);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (14, 4, '2024-08-01', '20:00:00', 12.00, 2);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (17, 5, '2024-08-01', '21:45:00', 18.00, 1);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (17, 1, '2024-04-01', '21:45:00', 18.00, 2);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (17, 2, '2024-04-01', '21:45:00', 18.00, 2);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (17, 3, '2024-04-01', '21:45:00', 18.00, 2);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (19, 6, '2024-08-01', '18:50:00', 18.00, 1);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (22, 1, '2024-08-02', '19:00:00', 15.00, 1);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (23, 2, '2024-08-02', '21:30:00', 15.00, 1);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (14, 3, '2024-08-01', '20:00:00', 12.00, 1);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (20, 6, '2024-08-01', '21:40:00', 18.00, 1);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (15, 5, '2024-08-01', '15:00:00', 18.00, 1);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (6, 3, '2024-08-05', '20:00:00', 20.00, 1);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (4, 4, '2024-08-05', '16:00:00', 18.00, 2);

INSERT INTO venda (idSessao, idUsuario, data, hora, valorIngresso, idTipoPagto) 
VALUES (5, 5, '2024-08-05', '15:30:00', 15.00, 1);

-- INSERIR NA PARCELA
INSERT INTO parcela (idVenda, valor, vencimento, situacao) 
VALUES (2, 5.00, '2024-08-01', 'ABERTO');

INSERT INTO parcela (idVenda, valor, vencimento, situacao) 
VALUES (2, 5.00, '2024-08-02', 'ABERTO');

INSERT INTO parcela (idVenda, valor, vencimento, situacao) 
VALUES (2, 5.00, '2024-08-03', 'ABERTO');

INSERT INTO parcela (idVenda, valor, vencimento, situacao) 
VALUES (3, 5.00, '2024-08-01', 'ABERTO');

INSERT INTO parcela (idVenda, valor, vencimento, situacao) 
VALUES (3, 5.00, '2024-08-02', 'ABERTO');

INSERT INTO parcela (idVenda, valor, vencimento, situacao) 
VALUES (4, 12.00, '2024-08-03', 'ABERTO');


/*
1) Crie uma consulta que liste o nome do filme e o somatório do valor dos ingressos vendidos, 
considerando apenas as vendas com pagamento parcelado. Agrupe os resultados por filme.
*/

/*
2) Modifique a consulta anterior para listar apenas os filmes com mais de 3 ingressos vendidos. 
Utilize a cláusula HAVING para realizar o filtro.
*/

/*
3) Crie uma consulta para listar a quantidade de usuários que efetuaram compras à vista.
*/

/*
4) Modifique a consulta anterior para exibir o nome dos usuários 
e a quantidade total de compras à vista feitas por cada um.
*/

/*
5) Crie uma stored procedure chamada alteraValorIngresso(valor) 
que altere o valor de todos os ingressos vendidos para o valor fornecido como parâmetro. 
Após a atualização, a procedure deve listar os ingressos afetados.
*/

/*
6) Crie uma stored procedure alteraSituacaoParcelas(idUsuario) 
que atualize a situação de todas as parcelas de um determinado usuário para "pagas". 
O id do usuário será recebido como parâmetro.
*/

/*
7) Crie uma stored procedure relVendas(idUsuario) que receba o id de um usuário 
e liste todas as parcelas associadas, juntamente com a situação de pagamento de cada uma.
*/

/*
8) Crie uma stored procedure visualizaVendas(tipoVenda) 
que receba um parâmetro (1 para à vista, 2 para parcelado) 
e retorne o somatório do valor das vendas para o tipo de pagamento selecionado.
*/

/*
9) Crie uma procedure que receba o nome de um ator 
e liste todos os filmes em que ele participou.
*/

/*
10) Crie uma procedure que liste o nome dos atores 
que ainda não participaram de nenhum filme.
*/

/*
11) Crie uma procedure que liste o título e o gênero de todos os filmes 
que ainda não foram exibidos em nenhuma sessão de cinema.
*/

/*
12) Crie uma procedure que receba o nome de uma cidade como parâmetro 
e liste todos os cinemas localizados nesta cidade.
*/

/*
13) Crie uma procedure que receba dois parâmetros (gênero atual e gênero novo) 
e altere o gênero de todos os filmes que correspondam ao gênero atual para o novo gênero informado.
*/

/*
14) Crie uma consulta para listar o título e a duração dos filmes 
de um determinado gênero lançados após uma data específica. 
Receba o nome do gênero e a data como parâmetros.
*/

/*
15) Crie uma consulta que liste todas as sessões 
onde a ocupação do público foi superior a 80% da capacidade do cinema.
*/


-- Obs.: Se for necessário crie os registros de inserção para testar as consultas solicitadas.

