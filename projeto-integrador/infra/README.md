# Infraestrutura — Grupo 03

## Banco de dados
- Provedor: **Supabase** (PostgreSQL gerenciado)
- Projeto: `TODO: nome/URL do projeto no Supabase`
- Região: `TODO: ex. South America (São Paulo)`
- Acesso: backend conecta via `@supabase/supabase-js`, usando `Project URL`
  + chave pública (`anon key`), lidas do `.env` (ver
  `apps/backend/.env.example`)

## Backend (API)
- Stack: Node.js + Express
- Local: `http://localhost:3000` (`npm run dev` dentro de `apps/backend`)
- Deploy: `TODO: preencher se publicado (ex. Render, Railway) — se rodar só
  local para a demo, anotar isso aqui`

## Frontend
- Stack: React + Vite
- Local: `http://localhost:5173` (`npm run dev` dentro de `apps/frontend`)
- Deploy: `TODO: preencher se publicado (ex. Vercel, Netlify) — se rodar só
  local para a demo, anotar isso aqui`

## Fluxo

```
Frontend (React, :5173)
   → GET /api/alunos?busca=...
Backend (Express, :3000)
   → supabase.from("vw_alunos").select("*")
Supabase (PostgreSQL gerenciado)
   → retorna os dados já prontos (view faz os JOINs)
```

O CORS do backend libera `http://localhost:5173` — se o frontend for
publicado em outro domínio, atualizar a origem liberada em
`apps/backend/src/app.js`.
