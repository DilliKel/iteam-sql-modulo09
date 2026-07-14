# Grupo 03 — Noturno

Projeto Integrador da disciplina de **Banco de Dados e SQL**: aplicação
web full-stack que consulta um banco acadêmico (PostgreSQL/Supabase) e
exibe, com busca por nome do aluno ou turma: nome, e-mail, turma, data de
matrícula, notas e média final de cada aluno.

## Stack

- **Frontend:** React + Vite
- **Backend:** Node.js + Express
- **Banco de dados:** PostgreSQL via Supabase, usando a view `vw_alunos`

## Estrutura

```
grupo-03/
├── apps/
│   ├── backend/     # API Express — conecta no Supabase e expõe /api/alunos
│   └── frontend/    # React — tela de busca/listagem
├── sql/
│   ├── schema.sql        # criação das tabelas + dados de exemplo
│   ├── consulta.sql       # query principal e query com filtro
│   └── views.sql          # view vw_alunos consumida pelo backend
├── der/              # diagrama entidade-relacionamento
├── docs/              # integrantes e funções da equipe
└── infra/             # onde banco e app estão hospedados
```

## Como rodar localmente

**1. Banco:** rodar `sql/schema.sql` e depois `sql/views.sql` no SQL Editor
do Supabase.

**2. Backend:**
```bash
cd apps/backend
npm install
# criar um .env com base em .env.example (URL e chave do Supabase)
npm run dev
```
Sobe em `http://localhost:3000`.

**3. Frontend** (em outro terminal):
```bash
cd apps/frontend
npm install
npm run dev
```
Sobe em `http://localhost:5173` e já consome a API do backend.

## Equipe

Ver [`docs/integrantes-e-funcoes.md`](docs/integrantes-e-funcoes.md).

## Status geral

- [x] Banco de dados pronto (`sql/`)
- [x] Aplicação pronta (`apps/backend` + `apps/frontend`)
- [x] DER pronto (`der/`)
- [x] Docs da equipe prontos (`docs/`)
- [x] Infra documentada (`infra/`)
- [x] Apresentação feita
