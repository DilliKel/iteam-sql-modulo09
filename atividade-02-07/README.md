# Atividade 02/07 — Consultas com WHERE, ORDER BY, GROUP BY e Funções Agregadas

| | |
|---|---|
| 📚 Disciplina | Bancos de Dados e SQL |
| 👨‍🏫 Professora | Janei Vieira |
| 🏫 Instituição | ITEAM |
| 🎓 Aluno | Kelvin Araújo Ferreira |
| 🌙 Turno | Noturno |
| 📅 Status | ✅ Concluída |

## O que a atividade pede

A partir da base `escola_db` (alunos, professores, cursos, turmas, matrículas e notas de uma escola), escrever consultas SQL em duas partes:

**Parte 1 — WHERE e ORDER BY**
1. Todos os alunos em ordem alfabética pelo nome.
2. Alunos da cidade de Boa Vista em ordem alfabética.
3. Turmas do período 2026.1 ordenadas pelo turno.
4. Cursos da área de Desenvolvimento Web em ordem crescente de nome.
5. Professores da área Banco de Dados.

**Parte 2 — GROUP BY e funções agregadas**
1. Quantidade de alunos matriculados em cada turma.
2. Quantidade de matrículas por curso.
3. Média das notas por turma.
4. Soma das notas por turma.
5. Maior e menor nota por turma.
6. Quantidade de alunos por cidade.
7. Média de notas por aluno.

## O que foi implementado

- [`base_escola_db_humana.sql`](./base_escola_db_humana.sql) — script fornecido que cria o banco `escola_db` (tabelas `professores`, `cursos`, `turmas`, `alunos`, `matriculas`, `notas`) e popula com dados de exemplo.
- [`consultas.sql`](./consultas.sql) — as 12 queries pedidas:
  - Parte 1 usa `WHERE` para filtrar por cidade/período/área e `ORDER BY` para ordenar por nome ou turno.
  - Parte 2 usa `JOIN` para atravessar `turmas`/`matriculas`/`notas`/`cursos`, `GROUP BY` para agrupar por turma, curso, cidade ou aluno, e as funções `COUNT`, `AVG`, `SUM`, `MAX` e `MIN`. A "nota" de cada aluno em uma matrícula é tratada como a coluna `media` (já calculada a partir de `nota1`, `nota2` e `nota3`).

## Ferramentas utilizadas

- **[DB Fiddle](https://www.db-fiddle.com/)** — MySQL real na nuvem, sem precisar instalar nada.

## Como visualizar/executar

1. Abra o [DB Fiddle](https://www.db-fiddle.com/) e selecione **MySQL** no dropdown do topo.
2. Copie todo o conteúdo de [`base_escola_db_humana.sql`](./base_escola_db_humana.sql) e cole no painel **Schema SQL** (esquerda). Clique em **Run** para criar e popular o banco.
3. Copie as queries de [`consultas.sql`](./consultas.sql) (uma por vez, ou várias juntas separadas por `;`) e cole no painel **Query SQL** (direita) para ver os resultados.
