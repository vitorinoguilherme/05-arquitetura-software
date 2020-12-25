CREATE TABLE departamentos (
	codigo SMALLSERIAL,
  nome VARCHAR(100) NOT NULL,
	sigla VARCHAR(5) NOT NULL,
	PRIMARY KEY (codigo)
);

INSERT INTO departamentos (nome, sigla) VALUES ('Vendas', 'VND');
INSERT INTO departamentos (nome, sigla) VALUES ('Marketing', 'MKT');

SELECT * FROM departamentos;

UPDATE departamentos
SET nome = 'Venda', sigla = 'VED'
WHERE codigo = 1;

DELETE FROM departamentos
WHERE codigo = 1;

DROP TABLE departamentos;