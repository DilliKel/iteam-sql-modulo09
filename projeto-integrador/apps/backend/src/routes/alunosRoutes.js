import { Router } from "express";
import { listarAlunos } from "../controllers/alunosController.js";

const router = Router();

router.get("/", listarAlunos);

export default router;
