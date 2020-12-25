CREATE TABLE IF NOT EXISTS projetos (
	codigo SMALLSERIAL,
	titulo VARCHAR(100) NOT NULL,
	data_inicio DATE NOT NULL,
	data_fim DATE NOT NULL,
	cod_departamento INTEGER,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cod_departamento) REFERENCES departamentos(codigo)
);

INSERT INTO projetos (titulo, data_inicio, data_fim, cod_departamento) VALUES 
	('Planejamento da Força de Venda 2021', DATE '2020-07-01', DATE '2020-11-01', 1),
	('Lançamento do Produto X', DATE '2020-07-01', DATE '2020-12-23', 2),
	('Lançamento do Produto Y', DATE '2021-01-01', DATE '2021-06-30', 2);
	
SELECT * FROM projetos;

UPDATE projetos
SET titulo = 'Lançamento do Produto Carteira Digital'
WHERE codigo = 2;

DROP TABLE projetos;