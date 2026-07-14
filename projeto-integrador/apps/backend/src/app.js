import express from "express";
import cors from "cors";

import alunosRoutes from "./routes/alunosRoutes.js";

const app = express();

app.use(cors({
    origin: "http://localhost:5173"
}));

app.use(express.json());

app.use("/api/alunos", alunosRoutes);

export default app;
