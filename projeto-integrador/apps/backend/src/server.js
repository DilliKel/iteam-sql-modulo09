import express from "express";
import cors from "cors";

import alunosRoutes from "./routes/alunosRoutes.js";

const app = express();

app.use(cors());
app.use(express.json());

app.use("/api/alunos", alunosRoutes);

app.listen(3000, () => {
  console.log("Servidor rodando na porta 3000");
});
