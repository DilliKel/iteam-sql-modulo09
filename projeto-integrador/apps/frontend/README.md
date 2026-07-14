# Frontend — Escola DB

Tela de busca/listagem de alunos, feita em React + Vite. Consome a API do
backend (`apps/backend`), que por sua vez consulta a view `vw_alunos` no
Supabase.

Ver a visão geral do projeto (arquitetura, stack completa, como rodar tudo)
no [README raiz do grupo-03](../../README.md).

## Estrutura

```
frontend/
├── index.html
├── vite.config.js
└── src/
    ├── App.jsx                     # estado da busca + fetch na API
    ├── main.jsx
    ├── components/
    │   ├── Header.jsx
    │   ├── SearchBar.jsx           # campo de busca por nome/turma
    │   ├── StudentsTable.jsx       # tabela com os alunos
    │   ├── StudentRow.jsx          # linha da tabela
    │   └── Footer.jsx
    └── styles/App.css
```

## Rodando só o frontend

```bash
npm install
npm run dev
```

Abre em `http://localhost:5173`. Precisa do backend rodando em
`http://localhost:3000` (URL fixa em `App.jsx`) para os dados aparecerem.

## Campos exibidos

Nome, e-mail, turma, data de matrícula, nota1, nota2, nota3 e média final —
vindos direto da view `vw_alunos` (ver [`../../sql/views.sql`](../../sql/views.sql)).
