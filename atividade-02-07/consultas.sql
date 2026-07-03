-- Atividade 02/07 — Parte 1: WHERE e ORDER BY
-- Base: base_escola_db_humana.sql (execute esse script primeiro para criar e popular o banco)

-- 1. Todos os alunos em ordem alfabética pelo nome
SELECT * FROM alunos
ORDER BY nome ASC;

-- 2. Alunos da cidade de Boa Vista, em ordem alfabética
SELECT * FROM alunos
WHERE cidade = 'Boa Vista'
ORDER BY nome ASC;

-- 3. Turmas do período 2026.1, ordenadas pelo turno
SELECT * FROM turmas
WHERE periodo = '2026.1'
ORDER BY turno ASC;

-- 4. Cursos da área de Desenvolvimento Web, em ordem crescente de nome
SELECT * FROM cursos
WHERE area = 'Desenvolvimento Web'
ORDER BY nome ASC;

-- 5. Professores da área Banco de Dados
SELECT * FROM professores
WHERE area = 'Banco de Dados';


-- Atividade 02/07 — Parte 2: GROUP BY e funções agregadas

-- 1. Quantidade de alunos matriculados em cada turma
SELECT t.id_turma, t.nome_turma, COUNT(m.id_aluno) AS qtd_alunos
FROM turmas t
JOIN matriculas m ON m.id_turma = t.id_turma
GROUP BY t.id_turma, t.nome_turma
ORDER BY t.id_turma;

-- 2. Quantidade de matrículas por curso
SELECT c.id_curso, c.nome AS curso, COUNT(m.id_matricula) AS qtd_matriculas
FROM cursos c
JOIN turmas t ON t.id_curso = c.id_curso
JOIN matriculas m ON m.id_turma = t.id_turma
GROUP BY c.id_curso, c.nome
ORDER BY c.id_curso;

-- 3. Média das notas por turma
SELECT t.id_turma, t.nome_turma, AVG(n.media) AS media_turma
FROM turmas t
JOIN matriculas m ON m.id_turma = t.id_turma
JOIN notas n ON n.id_matricula = m.id_matricula
GROUP BY t.id_turma, t.nome_turma
ORDER BY t.id_turma;

-- 4. Soma das notas por turma
SELECT t.id_turma, t.nome_turma, SUM(n.media) AS soma_notas
FROM turmas t
JOIN matriculas m ON m.id_turma = t.id_turma
JOIN notas n ON n.id_matricula = m.id_matricula
GROUP BY t.id_turma, t.nome_turma
ORDER BY t.id_turma;

-- 5. Maior e menor nota por turma
SELECT t.id_turma, t.nome_turma, MAX(n.media) AS maior_nota, MIN(n.media) AS menor_nota
FROM turmas t
JOIN matriculas m ON m.id_turma = t.id_turma
JOIN notas n ON n.id_matricula = m.id_matricula
GROUP BY t.id_turma, t.nome_turma
ORDER BY t.id_turma;

-- 6. Quantidade de alunos por cidade
SELECT cidade, COUNT(*) AS qtd_alunos
FROM alunos
GROUP BY cidade
ORDER BY qtd_alunos DESC;

-- 7. Média de notas por aluno
SELECT a.id_aluno, a.nome, AVG(n.media) AS media_aluno
FROM alunos a
JOIN matriculas m ON m.id_aluno = a.id_aluno
JOIN notas n ON n.id_matricula = m.id_matricula
GROUP BY a.id_aluno, a.nome
ORDER BY a.nome;
