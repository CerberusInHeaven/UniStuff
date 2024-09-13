DROP SCHEMA IF EXISTS aula04;

CREATE SCHEMA IF NOT EXISTS aula04;
USE aula04;

DROP TABLE IF EXISTS produtop;

CREATE TABLE IF NOT EXISTS produto (

codigo CHAR(3),
descricao VARCHAR(50) NOT NULL,
qtd_estoque INT(11) NOT NULL,
CHECK(qtd_estoque > 0),
PRIMARY KEY(codigo)

);

INSERT INTO produto(codigo, descricao,qtd_estoque) VALUES('001','Feijão', 10);
INSERT INTO produto(codigo, descricao,qtd_estoque) VALUES('002','Arroz', 5);
INSERT INTO produto(codigo, descricao,qtd_estoque) VALUES('003','Farinha', 15);
SELECT * FROM produto ;

CREATE TABLE IF NOT EXISTS  itensVenda(
id  INT,
venda INT,
produto_codigo CHAR(3) NOT NULL,
qtd_vendida INT(11) NOT NULL,
PRIMARY KEY(id),
CONSTRAINT fk_itensVenda_produto
FOREIGN KEY(produto_codigo) REFERENCES produto(codigo)
);

-- trigger de inclusão

DELIMITER  ##

CREATE TRIGGER trg_itensvenda_AfterInsert AFTER INSERT
ON itensVenda
FOR EACH ROW 
BEGIN
     UPDATE produto SET produto.qtd_estoque = produto.qtd_estoque - NEW.qtd_vendida
     WHERE produto.codigo = NEW.produto_codigo;

END ##

-- trigger de ação após exclusão

DELIMITER ##

CREATE TRIGGER trg_itensvendas_AfterDelete AFTER DELETE
ON itensVenda
FOR EACH ROW 
BEGIN 
   UPDATE produto SET produto.qtd_estoque = produto.qtd_estoque + OLD.qtd_vendida
   WHERE produto.codigo = OLD.produto_codigo;

END ##



/* 1 – Criar um gatilho/trigger para atualizar o campo qtd_estoque na
tabela produto sempre que for feita uma atualização/update na tabela
itensvenda. */


DELIMITER ##

CREATE TRIGGER trg_update_estoque
AFTER UPDATE ON itensVenda
FOR EACH ROW
BEGIN
    DECLARE diferenca INT;
    SET diferenca = NEW.qtd_vendida - OLD.qtd_vendida;
    UPDATE produto
    SET qtd_estoque = qtd_estoque - diferenca
    WHERE codigo = NEW.produto_codigo;
END ##



/* 2 – Criar uma tabela chamada log.
Esta tabela deve ter os campos: produto_cod, nomeAnterior, nomeNovo e
dataHora.
A tabela log deverá armazenar as alterações que forem feitas
no campo descricao da tabela produto. */


CREATE TABLE IF NOT EXISTS logitem(
produto_cod CHAR(3),
nomeAnterior VARCHAR(50),
nomeNovo VARCHAR(50),
DataHora DATETIME,
CONSTRAINT fk_log_tensVenda_produto
FOREIGN KEY(produto_cod) REFERENCES produto (codigo)
);

DELIMITER ## 

CREATE TRIGGER trg_itensModificados_AfterUpdate AFTER UPDATE
ON produto
FOR EACH ROW 
  IF NEW.descricao != OLD.descricao THEN
        INSERT INTO logitem (produto_cod, nomeAnterior, nomeNovo, DataHora)
        VALUES (OLD.codigo, OLD.descricao, NEW.descricao, NOW());
    END IF;

END ##
