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
