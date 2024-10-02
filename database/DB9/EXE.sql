
---/* 1. Crie um banco de dados chamado aula09 */


CREATE SCHEMA AULA09FORUM;
USE SCHEMA AULA09FORUM;
--- ******


----/* 2. No banco aula09, crie as tabelas conforme o diagrama


Create table usuario(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(70) NOT NULL,
    fone VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
)ENGINE=InnoDB;


Create table forum(
    id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(45) NOT NULL,
    dataHora_criacao DATE,
    PRIMARY KEY(id)
)ENGINE=innoDB;

Create table postagem(
    usuario_id INT,
    forum_id INT,
    mensagem TEXT, 
    data_postagem DATE,

    FOREIGN KEY(usuario_id) REFERENCES usuario(id),
    FOREIGN KEY(Forum_id) REFERENCES forum(id)
)ENGINE=innoDB;

----*****


--/* 3. Crie um usuário chamado moderador, 
---com a senha 123teste.



