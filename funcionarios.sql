CREATE TABLE IF NOT EXISTS funcionarios (
	CPF VARCHAR(11) NOT NULL,
	nome VARCHAR(100) NOT NULL,
	email VARCHAR(100),
	cod_departamento INTEGER,
	PRIMARY KEY (CPF),
	FOREIGN KEY (cod_departamento) REFERENCES departamentos(codigo)
);

INSERT INTO funcionarios VALUES ('70384986064', 'Joao da Silva', 'joao@email.com', 1),
																('99848184031', 'Maria Santos', 'maria@email.com', 1),
																('32541752040', 'Pedro Gomes', 'pedro@email.com', 2),
																('73963114037', 'Carlos Alves', 'carlos@email.com', 2);

SELECT * FROM funcionarios;

UPDATE funcionarios
SET nome = 'Alice', email = 'alice@gmail.com'
WHERE CPF = '73963114037';

DROP TABLE funcionarios;