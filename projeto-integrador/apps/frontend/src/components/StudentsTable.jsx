import StudentRow from "./StudentRow";

function StudentsTable({ alunos }) {
  return (
    <div className="card">
      <h2>{alunos.length}</h2>
      <table>
        <thead>
          <tr>
            <th>Aluno</th>
            <th>E-mail</th>
            <th>Turma</th>
            <th>Data de Matrícula</th>
            <th>Nota 1</th>
            <th>Nota 2</th>
            <th>Nota 3</th>
            <th>Média Final</th>
          </tr>
        </thead>

        <tbody>
          {alunos.map((aluno) => (
            <StudentRow
              key={aluno.email}
              aluno={aluno}
            />
          ))}
        </tbody>

      </table>
    </div>
  );
}

export default StudentsTable;
