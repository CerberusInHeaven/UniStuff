

---Create user exemplo
CREATE USER 'novousuario'@'localhost' IDENTIFIED BY 'senha';
---Create user exemplo
CREATE USER 'joao'@'localhost' IDENTIFIED BY 'senha123'
---Check users 
SELECT user FROM mysql.user;


--grant revoke 
GRANT SELECT, INSERT ON banco.clientes TO 'joao'@'localhost'

REVOKE INSERT ON banco.clientes FROM 'joao'@'localhost';

--exemplos

GRANT SELECT ON loja.produtos TO 'angelo'@'localhost';
GRANT SELECT, INSERT ON loja.produtos TO 'maria'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'tiago'@'localhost';

REVOKE SELECT ON loja.produtos
FROM 'maria'@'localhost';
SHOW GRANTS FOR 'maria'@'localhost';
SHOW GRANTS FOR 'joao'@'localhost';
