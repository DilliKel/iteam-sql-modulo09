-- ============================================================================
-- VIEW: vw_alunos
--
-- Objetivo:
-- Centralizar todas as informações necessárias para a aplicação.
--
-- A aplicação consulta apenas esta View.
-- ============================================================================

CREATE OR REPLACE VIEW vw_alunos AS
SELECT
    a.id_aluno,
    a.nome               AS aluno,
    a.email,
    t.nome_turma         AS turma,
    m.data_matricula,
    n.nota1,
    n.nota2,
    n.nota3,
    n.media              AS media
FROM alunos a

INNER JOIN matriculas m
    ON a.id_aluno = m.id_aluno

INNER JOIN turmas t
    ON t.id_turma = m.id_turma

LEFT JOIN notas n
    ON n.id_matricula = m.id_matricula;
    
