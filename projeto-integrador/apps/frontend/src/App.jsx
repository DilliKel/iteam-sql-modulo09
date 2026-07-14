import "./styles/App.css";

import Header from "./components/Header";
import SearchBar from "./components/SearchBar";
import StudentsTable from "./components/StudentsTable";
import Footer from "./components/Footer";
import { useEffect, useState } from "react";

function App() {
  const [busca, setBusca] = useState("");
  const [alunos, setAlunos] = useState([]);

  useEffect(() => {
    async function carregarAlunos() {
      const resposta = await fetch(
        `http://localhost:3000/api/alunos?busca=${busca}`
      );

      const dados = await resposta.json();

      setAlunos(dados);
    }

    carregarAlunos();
  }, [busca]);

  return (
    <>
      <Header />

      <main>
        <SearchBar
          busca={busca}
          setBusca={setBusca}
          quantidade={alunos.length}
        />

        <StudentsTable alunos={alunos} />
      </main>

      <Footer />
    </>
  );
}

export default App;
