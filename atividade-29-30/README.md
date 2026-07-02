# Atividade 29 e 30 — Modelagem de Banco de Dados: DER Clínica

| | |
|---|---|
| 📚 Disciplina | Bancos de Dados e SQL |
| 👨‍🏫 Professora | Janei Vieira |
| 🏫 Instituição | ITEAM |
| 🎓 Aluno | Kelvin Araújo Ferreira |
| 🌙 Turno | Noturno |
| 📅 Status | ✅ Concluída |

## O que a atividade pede

Trabalho que reúne os conteúdos das aulas dos dias 29 e 30/06/2026 (chaves primárias e estrangeiras, integridade referencial, normalização e SQL DDL), dividido em três exercícios:

- **Atividade 1** — a partir do cenário de uma clínica (Pacientes e Médicos que se relacionam por Consultas), identificar as chaves primárias, desenhar o DER em uma notação à escolha, justificar essa escolha e explicar como a entidade Consultas garante a integridade referencial.
- **Atividade 2** — normalizar uma tabela de biblioteca não normalizada (`Emprestimos`), demonstrando passo a passo a aplicação da 1FN, 2FN e 3FN.
- **Atividade 3** — traduzir o modelo da Atividade 1 em SQL DDL real (`CREATE TABLE`, `ALTER TABLE`, `DROP TABLE`), incluindo as `FOREIGN KEY` entre as tabelas.

## O que foi implementado

- **DER da clínica** em notação Pé de Galinha (Crow's Foot), com as entidades `pacientes`, `medicos` e `consultas` (esta última resolvendo o relacionamento N:N entre as duas primeiras) — ver [`der_clinica_pe_de_galinha.png`](./der_clinica_pe_de_galinha.png).
- **Normalização completa** da tabela `Emprestimos` até a 3FN, resultando em 4 tabelas (`Emprestimos`, `Leitores`, `Livros`, `Telefones_Leitor`), eliminando atributo multivalorado, dependência parcial e dependência transitiva.
- **Scripts DDL** para `pacientes`, `medicos` e `consultas` (com PKs e FKs), além do `ALTER TABLE` para adicionar `data_nascimento` e o `DROP TABLE` com a ressalva sobre dependências de chave estrangeira.

Toda a resolução, com o texto completo das quatro tarefas de cada atividade, está em [`noturno_kelvin_araujo_ferreira_atividade_29_e_30.md`](./noturno_kelvin_araujo_ferreira_atividade_29_e_30.md) (mesmo conteúdo, gerado também em [PDF](./noturno_kelvin_araujo_ferreira_atividade_29_e_30.pdf) para entrega).

## Ferramentas utilizadas

- **[dbdiagram.io](https://dbdiagram.io)** — modelagem e geração do DER em notação Pé de Galinha a partir de um schema em DBML (código incluído no `.md` como referência).
- **[DB Fiddle](https://www.db-fiddle.com/)** — execução e teste dos comandos DDL/DML em um MySQL real, sem precisar instalar nada localmente.

## Como visualizar/executar

- **Ler a resolução:** abra [`noturno_kelvin_araujo_ferreira_atividade_29_e_30.md`](./noturno_kelvin_araujo_ferreira_atividade_29_e_30.md) (Markdown, com o DER embutido) ou o [PDF](./noturno_kelvin_araujo_ferreira_atividade_29_e_30.pdf) equivalente.
- **Testar o DDL:** copie os blocos SQL do arquivo `.md` (Atividade 3) e cole no [DB Fiddle](https://www.db-fiddle.com/) com o motor MySQL selecionado para criar as tabelas e rodar consultas de teste.
- **Ver/editar o DER:** o modelo DBML está no próprio `.md`; cole em [dbdiagram.io](https://dbdiagram.io) para reabrir o diagrama editável.
