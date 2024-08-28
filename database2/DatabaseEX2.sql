CREATE TABLE empregado(
codigo INT,
nome CHAR(40) NOT NULL,
setor CHAR(2),
cargo CHAR(20),
salario decimal(10,2),
PRIMARY KEY(codigo)
);


INSERT INTO empregado VALUES(1, "Edecio Muito legal","2","Designer",1000);
INSERT INTO empregado VALUES(3, "Eduardo monks","5","Dev",1500);
INSERT INTO empregado VALUES(4, "Rakell Murillo","4","Dev",1500);
INSERT INTO empregado VALUES(6, "gladimau catarino","4","Analista",2200);
INSERT INTO empregado VALUES(7, "Sergio Marquina","4","Boss",9900);
INSERT INTO empregado VALUES(9, "Alice Sierra","5","Boss",9900);
INSERT INTO empregado VALUES(10, "Angelo Light","1","Dev",1500);
INSERT INTO empregado VALUES(15, "Silene Oliveira","1","DBA",2500);
INSERT INTO empregado VALUES(25, "Darta inhame","3","Designer",1650);

--Listar todos os campos(*) de todos os registros da tabela empregado
SELECT * FROM empregado;

--Listar os campos codigo e nome de todos registros da tabela empregado.
SELECT codigo, nome 
FROM empregado;

--Listar todos os registros da tabela empregado que possuírem “Sergio Marquina” no
--campo nome.
SELECT * FROM empregado 
WHERE(nome = "Sergio Marquina");

--Procurar na tabela registros que contenham no campo nome o conteúdo “Sergio Marquina”, e substituir por
--“Salvador Martin”.

UPDATE empregado SET nome = "Salvador Martin" 
WHERE nome= "Sergio Marquina";

--Deletar, da tabela empregado, todos os registros que têm o conteúdo ‘3’ no campo setor.
DELETE FROM empregado WHERE (setor = "3");

--Listar os empregados do setor 1, em ordem alfabética de cargo
SELECT * FROM empregado WHERE (setor="1") 
ORDER BY cargo;

--Lista empregados em ordem alfábetica ascendente e cargo descendente

SELECT * FROM empregado
 ORDER BY cargo DESC, nome ASC;


 --EXERCICIOS

--1. Apresentar a listagem completa dos registros da tabela empregado;
SELECT * FROM empregado;

--2. Apresentar uma listagem dos nomes e dos cargos de todos os registros da tabela empregado;
SELECT nome, cargo 
FROM empregado;

--3. Apresentar uma listagem dos nomes dos empregados do setor 1
SELECT nome FROM empregado 
WHERE setor = '1';

--4. Listagem dos nomes e dos salários por ordem de nome (A-Z)
SELECT nome, salario 
FROM empregado 
ORDER BY nome ASC;

--5. Listagem dos nomes e dos salários por ordem de nome em formato descendente (Z-A)
SELECT nome, salario 
FROM empregado 
ORDER BY nome DESC;

--6. Listagem dos setores e nomes colocados por ordem do campo setor em formato ascendente e do campo
--nome em formato descendente.
SELECT setor, nome 
FROM empregado 
ORDER BY setor ASC, nome DESC;

--7. Listagem de nomes ordenados pelo campo nome em formato ascendente, dos empregados do setor 4.
SELECT nome 
FROM empregado 
WHERE setor = '4' 
ORDER BY nome ASC;

--8. O empregado de código 6 (o melhor de todos) teve um aumento de salário. Seu salário passa a ser 8000.
UPDATE empregado 
SET salario = 8000 
WHERE codigo = 6;

--9. Eduardo Monks foi transferido do departamento 5 para o departamento 3.
UPDATE empregado 
SET setor = '3' 
WHERE nome = 'Eduardo monks';

--10. Todos os empregados da empresa tiveram um aumento de salário de 20%.
UPDATE empregado 
SET salario = salario * 1.20;

--11. Todos os empregados do setor 3 foram demitidos , exclua-os.
DELETE FROM empregado 
WHERE setor = '3';

--12. Gladimau Catarino pediu demissão, exclua-o.
DELETE FROM empregado 
WHERE nome = 'gladimau catarino';

--13. 1. Inserir na tabela empregado o campo admissao que conterá a data de admissão dos
--empregados.
ALTER TABLE empregado ADD COLUMN admissao DATE;

--14. 2. Em seguida será necessário atualizar a tabela com as datas de admissão dos empregados
--ativos.

UPDATE empregado SET admissao = '2023-01-10' WHERE codigo = 1;
UPDATE empregado SET admissao = '2023-02-15' WHERE codigo = 3;
UPDATE empregado SET admissao = '2023-03-20' WHERE codigo = 4;
UPDATE empregado SET admissao = '2023-04-25' WHERE codigo = 6;
UPDATE empregado SET admissao = '2023-05-30' WHERE codigo = 7;
UPDATE empregado SET admissao = '2023-06-05' WHERE codigo = 9;
UPDATE empregado SET admissao = '2023-07-10' WHERE codigo = 10;
UPDATE empregado SET admissao = '2023-08-15' WHERE codigo = 15;
UPDATE empregado SET admissao = '2023-09-20' WHERE codigo = 25;

--15. Apresente a listagem dos empregados que foram admitidos em 01/06/2000
SELECT * FROM empregado 
WHERE admissao = '2000-06-01';

--16 Apresente a listagem dos funcionários que foram admitidos após 01/01/2002
SELECT * FROM empregado 
WHERE admissao > '2002-01-01';

--17 O departamento 3 foi reaberto e admitiu-se os seguintes empregados

INSERT INTO empregado (codigo, nome, setor, cargo, salario, admissao) VALUES
(16, 'Eduardo Monks', '3', 'Boss', 9900, '2020-08-19'),
(22, 'Maria Fernandes', '3', 'Dev', 1500, '2020-08-19'),
(29, 'Carlos Sousa', '3', 'Designer', 1450, '2020-08-19');


--18. Apresentar nome e salário dos empregados que ganham acima de 2500.00
SELECT nome, salario FROM empregado 
WHERE salario > 2500.00;

--19. Listar os empregados do setor 2
SELECT * FROM empregado 
WHERE setor = '2';

--20. Listar os empregados cujo cargo é Dev
SELECT * FROM empregado 
WHERE cargo = 'Dev';

--21. Listar empregados com salário até 2000
SELECT * FROM empregado 
WHERE salario <= 2000.00;

--22. Listar Dev do setor 4
SELECT * FROM empregado 
WHERE cargo = 'Dev' AND setor = '4';

--23. Listar empregados que sejam Boss ou DBA
SELECT * FROM empregado 
WHERE cargo = 'Boss' OR cargo = 'DBA';

--24. Listar empregados que não sejam Boss
SELECT * FROM empregado 
WHERE cargo != 'Boss';

--25. Listar empregados com salário entre 1700 e 2000
SELECT * FROM empregado 
WHERE salario BETWEEN 1700 AND 2000;

--26. Listar todos os Dev e Boss
SELECT * FROM empregado
 WHERE cargo = 'Dev' OR cargo = 'Boss';

--27. Média aritmética dos salários de todos os empregados
SELECT AVG(salario) AS media_salarial 
FROM empregado;

--28. Média aritmética dos salários de todos os empregados do setor 2
SELECT AVG(salario) AS media_salarial_setor_2 
FROM empregado 
WHERE setor = '2';

--29. Soma dos salários de todos os empregados
SELECT SUM(salario) AS soma_salarial 
FROM empregado;

--30. Soma dos salários de todos os empregados do setor 5
SELECT SUM(salario) AS soma_salarial_setor_5 
FROM empregado 
WHERE setor = '5';

--31. Maior salário existente entre todos os empregados
SELECT MAX(salario) AS maior_salario 
FROM empregado;

--32. Menor salário existente entre todos os empregados
SELECT MIN(salario) AS menor_salario 
FROM empregado;

--33. Numero de empregados do setor 3
SELECT COUNT(*) AS numero_empregados_setor_3 
FROM empregado 
WHERE setor = '3';

--34. Número de empregados que ganham mais que 2000,00
SELECT COUNT(*) AS numero_empregados_acima_2000 
FROM empregado 
WHERE salario > 2000.00;

--35. Número de setores existentes no cadastro de empregados.
SELECT COUNT(DISTINCT setor) AS numero_setores 
FROM empregado;


--Cria table conta

CREATE TABLE conta
(
numero CHAR(6) PRIMARY KEY,
valor DECIMAL(10,2) NOT NULL,
vencimento DATE NOT NULL,
codcli CHAR(3) NOT NULL
);

-- insere os valores na tabela conta

INSERT INTO conta (numero, valor, vencimento, codcli) VALUES
('A12345', 128447, '2016-10-21', '221'),
('A12346', 228400, '2016-10-22', '111'),
('A12347', 328450, '2015-09-23', '331'),
('B12348', 428447, '2015-10-24', '331'),
('B22349', 528429, '2016-09-10', '331'),
('B32341', 628447, '2015-10-11', '221'),
('C42340', 23322, '2015-09-10', '331'),
('C52342', 28447, '2016-10-11', '555'),
('Y17133', 1471, '2016-10-23', '555'),
('Z17144', 2, '2015-09-24', '221');

--cria table cliente

CREATE TABLE cliente
(
codigo CHAR(3) PRIMARY KEY,
nome VARCHAR(40) NOT NULL,
endereco VARCHAR(50) NOT NULL,
cidade VARCHAR(20) NOT NULL,
uf CHAR(2) NOT NULL,
cep CHAR(9) NOT NULL
);

--insere os valores na tabela cliente

INSERT INTO cliente (codigo, nome, endereco, cidade, uf, cep) VALUES
('111', 'Dedeh Andrade', 'Neves', 'Pelotas', 'RS', '90000'),
('221', 'Angelo Bento', 'Pelotas', 'Pelotas', 'RS', '91000'),
('331', 'Roberto Bento', 'Pelotas', 'Pelotas', 'RS', '91000'),
('213', 'Carlinhos Amarante', 'Campinas', 'Campinas', 'SP', '20000'),
('444', 'Gladislau Donja', 'Pelotas', 'Pelotas', 'RS', '93000'),
('555', 'Pablo Escobar', 'Laranjal', 'Pelotas', 'RS', '90000'),
('664', 'Tio da Sukita', 'Pampas', 'Herval', 'RS', '70000');

--36. Apresentação de uma listagem ordenada por nomes de clientes, mostrando a relação
--de contas que cada um possui e seus respectivos valores.
SELECT cliente.nome, conta.numero, conta.valor
FROM cliente
INNER JOIN conta ON cliente.codigo = conta.codcli
ORDER BY cliente.nome ASC;

--37. Listagem que apresente as contas existentes do cliente “Roberto”. Na listagem devem
--constar o nome do cliente, o numero da conta e seu valor correspondente.
SELECT cliente.nome, conta.numero, conta.valor
FROM cliente
INNER JOIN conta ON cliente.codigo = conta.codcli
WHERE cliente.nome LIKE '%Roberto%';

--38. Apresentar os nomes dos clientes e a data de vencimento de todas as contas do mês
--de setembro de 2016. A listagem deve ser apresentada na ordem cronológica de
--vencimento.
SELECT cliente.nome, conta.vencimento
FROM cliente
INNER JOIN conta ON cliente.codigo = conta.codcli
WHERE conta.vencimento BETWEEN '2016-09-01' AND '2016-09-30'
ORDER BY conta.vencimento ASC;

--39. Apresentação do nome dos clientes e de todas as contas que possuem vencimento no
--mês de outubro de qualquer ano.

SELECT cliente.nome, conta.numero, conta.vencimento
FROM cliente
INNER JOIN conta ON cliente.codigo = conta.codcli
WHERE MONTH(conta.vencimento) = 10
ORDER BY conta.vencimento ASC;

--41. Apresentar uma listagem identificada pelos apelidos Cliente (para representar o
--campo nome) e Vencidos (para representar o número de contas vencidas
--existente na tabela conta que será calculada pela função COUNT) de todos os
--clientes que possuem contas com vencimento anterior a 31/12/2015.

SELECT c.nome AS Cliente, COUNT(cont.numero) AS Vencidos
FROM cliente c
JOIN conta cont ON c.codigo = cont.codcli
WHERE cont.vencimento < '2015-12-31'
GROUP BY c.nome;


--42.Apresentar uma listagem de contas em atraso, anteriores à data de 31/12/2015,
--em que devem ser apresentados, além do nome do cliente, o valor da conta, o
--valor dos juros (10%) e o valor total a ser cobrado, ordenados por cliente.

SELECT 
c.nome AS Cliente, 
cont.valor AS Valor, 
cont.valor * 0.10 AS Juros, 
cont.valor * 1.10 AS Valor_Total
FROM cliente c
JOIN conta cont ON c.codigo = cont.codcli
WHERE cont.vencimento < '2015-12-31'
ORDER BY c.nome;
