CREATE DATABASE escola;

CREATE TABLE aluno (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL
);

INSERT INTO aluno (nome, idade) VALUES ('João', 20);
INSERT INTO aluno (nome, idade) VALUES ('Maria', 22);

CREATE TABLE curso (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    professor VARCHAR(50) NOT NULL
);


INSERT INTO curso (nome, professor) VALUES ('Matemática', 'Carlos');
INSERT INTO curso (nome, professor) VALUES ('História', 'Ana');


-- Right Join
SELECT aluno.nome, curso.nome
FROM aluno
RIGHT JOIN curso ON aluno.id = curso.id;

-- Inner Join
SELECT aluno.nome, curso.nome
FROM aluno
INNER JOIN curso ON aluno.id = curso.id;

--Left Join

SELECT aluno.nome, curso.nome
FROM aluno
LEFT JOIN curso ON aluno.id = curso.id;