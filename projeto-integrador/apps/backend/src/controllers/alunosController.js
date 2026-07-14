import {
  buscarTodos,
  buscarPorTermo,
} from "../services/alunosService.js";

export async function listarAlunos(req, res) {
    try {

        const busca = req.query.busca || "";

        const alunos = await buscarTodos(busca);

        res.json(alunos);

    } catch (error) {

        res.status(500).json({
            erro: error.message
        });

    }
}
