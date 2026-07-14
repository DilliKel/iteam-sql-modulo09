const API_URL = "http://localhost:3000/api";

export async function buscarAlunos() {
    const response = await fetch(`${API_URL}/alunos`);

    if (!response.ok) {
        throw new Error("Erro ao buscar alunos");
    }

    return response.json();
}
