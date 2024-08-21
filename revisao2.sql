CREATE TABLE teste (
    codigo int,
    nome CHAR(15),
    email VARCHAR(30),
    PRIMARY KEY(codigo)
);

--Alterações 

ALTER TABLE teste 
ADD endereco CHAR(50)
AFTER nome;

-- joga lá pra cima uwu
ALTER TABLE teste
ADD endereco2 CHAR(50) FIRST;
--add data de nascimento
ALTER TABLE teste ADD nascimento DATE;
--Aumenta o limite numero de caracteres do campo email
ALTER TABLE  teste MODIFY email CHAR(40);

--Troca o nome do campo email apra e_mail
ALTER TABLE teste CHANGE email e_mail CHAR(40);

--exclui o campo codigo 

ALTER TABLE teste DROP codigo;


-- exclui o campo codigo 
ALTER TABLE teste DROP codigo;

--Definir o campo nome como chave da tabela Teste:
ALTER TABLE teste ADD PRIMARY KEY (nome);

-- Alterar o nome da tabela teste para teste2
ALTER TABLE teste RENAME TO teste2; 

--Excluir a chave primária, mas não a coluna
ALTER TABLE teste DROP PRIMARY KEY;
