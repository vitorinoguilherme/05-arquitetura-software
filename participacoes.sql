CREATE TABLE IF NOT EXISTS participacoes (
	codigo SMALLSERIAL,
	codigo_projeto INTEGER,
	cpf_funcionario VARCHAR(11),
	data_entrada DATE NOT NULL,
	data_saida DATE,
	PRIMARY KEY (codigo, codigo_projeto, cpf_funcionario),
	FOREIGN KEY (codigo_projeto) REFERENCES projetos(codigo),
	FOREIGN KEY (cpf_funcionario) REFERENCES funcionarios(CPF),
);

INSERT INTO participacoes (codigo_projeto, cpf_funcionario, data_entrada) VALUES
	(1, '70384986064', DATE '2020-07-01'),
	(1, '99848184031', DATE '2020-07-01'),
	(1, '32541752040', DATE '2020-07-01'),
	(2, '32541752040', DATE '2020-07-01'),
	(2, '73963114037', DATE '2020-07-01'),
	(2, '73963114037', DATE '2020-07-01'),

SELECT * FROM participacoes;

UPDATE participacoes
SET codigo_projeto = 2
WHERE codigo = 3;

DROP TABLE participacoes;