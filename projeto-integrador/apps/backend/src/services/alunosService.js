import { supabase } from "../config/supabase.js";


export async function buscarTodos(busca = "") {
    let query = supabase
        .from("vw_alunos")
        .select("*")
        .order("aluno");

    if (busca) {

        query = query.or(
            `aluno.ilike.%${busca}%,turma.ilike.%${busca}%`
        );

    }

    const { data, error } = await query;

    if (error) throw error;

    return data;
}

export async function buscarPorTermo(termo) {
  const { data, error } = await supabase
    .from("vw_alunos")
    .select("*")
    .or(`aluno.ilike.%${termo}%,turma.ilike.%${termo}%`)
    .order("aluno");

  if (error) {
    throw error;
  }

  return data;
}
