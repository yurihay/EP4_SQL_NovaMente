USE novamente_learning;

INSERT INTO categorias (nome, descricao) VALUES
  ('Tecnologia', 'Cursos ligados a programacao, dados e ferramentas digitais'),
  ('Gestao', 'Cursos de lideranca, produtividade e negocios'),
  ('Design', 'Cursos de experiencia do usuario e criacao visual');

INSERT INTO instrutores (nome, email, especialidade) VALUES
  ('Marina Lopes', 'marina.lopes@novamente.com', 'Banco de Dados'),
  ('Rafael Souza', 'rafael.souza@novamente.com', 'Gestao de Projetos'),
  ('Camila Rocha', 'camila.rocha@novamente.com', 'UX Design');

INSERT INTO alunos (nome, email, data_nascimento, cidade, data_cadastro) VALUES
  ('Ana Pereira', 'ana.pereira@email.com', '2001-04-12', 'Sao Paulo', '2026-03-01'),
  ('Bruno Lima', 'bruno.lima@email.com', '1998-09-20', 'Campinas', '2026-03-02'),
  ('Carla Mendes', 'carla.mendes@email.com', '2003-01-15', 'Santos', '2026-03-03'),
  ('Diego Alves', 'diego.alves@email.com', '1996-11-08', 'Rio de Janeiro', '2026-03-04'),
  ('Fernanda Costa', 'fernanda.costa@email.com', '2000-06-25', 'Curitiba', '2026-03-05');

INSERT INTO cursos (id_categoria, id_instrutor, titulo, descricao, carga_horaria, nivel, preco) VALUES
  (1, 1, 'SQL para Iniciantes', 'Fundamentos de SQL com foco em consultas e manipulacao de dados', 24, 'Basico', 149.90),
  (1, 1, 'Modelagem de Banco de Dados', 'Entidades, relacionamentos e normalizacao', 30, 'Intermediario', 199.90),
  (2, 2, 'Gestao Agil de Projetos', 'Praticas ageis para equipes pequenas e medias', 20, 'Basico', 129.90),
  (3, 3, 'UX Design Essencial', 'Pesquisa, prototipacao e validacao de interfaces', 28, 'Basico', 179.90);

INSERT INTO aulas (id_curso, titulo, duracao_minutos, ordem) VALUES
  (1, 'Introducao ao SQL', 45, 1),
  (1, 'Consultas com SELECT', 60, 2),
  (1, 'Filtros com WHERE', 50, 3),
  (2, 'Modelo conceitual e logico', 55, 1),
  (2, 'Normalizacao de dados', 70, 2),
  (3, 'Fundamentos de agilidade', 40, 1),
  (3, 'Planejamento de sprints', 65, 2),
  (4, 'Principios de UX', 50, 1),
  (4, 'Prototipos e testes', 75, 2);

INSERT INTO matriculas (id_aluno, id_curso, data_matricula, status, progresso_percentual) VALUES
  (1, 1, '2026-03-10', 'Ativa', 65.00),
  (1, 2, '2026-03-11', 'Ativa', 20.00),
  (2, 1, '2026-03-12', 'Concluida', 100.00),
  (3, 3, '2026-03-13', 'Ativa', 45.00),
  (4, 4, '2026-03-14', 'Concluida', 100.00),
  (5, 2, '2026-03-15', 'Cancelada', 10.00),
  (5, 4, '2026-03-16', 'Ativa', 35.00);

INSERT INTO avaliacoes (id_matricula, nota, comentario, data_avaliacao) VALUES
  (3, 9.5, 'Curso objetivo e facil de acompanhar', '2026-04-02'),
  (5, 8.8, 'Conteudo pratico e bem explicado', '2026-04-05');
