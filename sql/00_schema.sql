DROP DATABASE IF EXISTS novamente_learning;
CREATE DATABASE novamente_learning
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE novamente_learning;

CREATE TABLE alunos (
  id_aluno INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(120) NOT NULL UNIQUE,
  data_nascimento DATE NOT NULL,
  cidade VARCHAR(80) NOT NULL,
  data_cadastro DATE NOT NULL DEFAULT (CURRENT_DATE),
  ativo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE instrutores (
  id_instrutor INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(120) NOT NULL UNIQUE,
  especialidade VARCHAR(100) NOT NULL,
  ativo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE categorias (
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(80) NOT NULL UNIQUE,
  descricao VARCHAR(255)
);

CREATE TABLE cursos (
  id_curso INT AUTO_INCREMENT PRIMARY KEY,
  id_categoria INT NOT NULL,
  id_instrutor INT NOT NULL,
  titulo VARCHAR(120) NOT NULL,
  descricao VARCHAR(255),
  carga_horaria INT NOT NULL,
  nivel ENUM('Basico', 'Intermediario', 'Avancado') NOT NULL DEFAULT 'Basico',
  preco DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  ativo BOOLEAN NOT NULL DEFAULT TRUE,
  CONSTRAINT fk_cursos_categorias
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
  CONSTRAINT fk_cursos_instrutores
    FOREIGN KEY (id_instrutor) REFERENCES instrutores(id_instrutor),
  CONSTRAINT chk_cursos_carga_horaria
    CHECK (carga_horaria > 0),
  CONSTRAINT chk_cursos_preco
    CHECK (preco >= 0)
);

CREATE TABLE aulas (
  id_aula INT AUTO_INCREMENT PRIMARY KEY,
  id_curso INT NOT NULL,
  titulo VARCHAR(120) NOT NULL,
  duracao_minutos INT NOT NULL,
  ordem INT NOT NULL,
  CONSTRAINT fk_aulas_cursos
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
    ON DELETE CASCADE,
  CONSTRAINT uk_aulas_ordem_por_curso
    UNIQUE (id_curso, ordem),
  CONSTRAINT chk_aulas_duracao
    CHECK (duracao_minutos > 0)
);

CREATE TABLE matriculas (
  id_matricula INT AUTO_INCREMENT PRIMARY KEY,
  id_aluno INT NOT NULL,
  id_curso INT NOT NULL,
  data_matricula DATE NOT NULL DEFAULT (CURRENT_DATE),
  status ENUM('Ativa', 'Concluida', 'Cancelada') NOT NULL DEFAULT 'Ativa',
  progresso_percentual DECIMAL(5,2) NOT NULL DEFAULT 0.00,
  CONSTRAINT fk_matriculas_alunos
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
  CONSTRAINT fk_matriculas_cursos
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso),
  CONSTRAINT uk_matriculas_aluno_curso
    UNIQUE (id_aluno, id_curso),
  CONSTRAINT chk_matriculas_progresso
    CHECK (progresso_percentual BETWEEN 0 AND 100)
);

CREATE TABLE avaliacoes (
  id_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
  id_matricula INT NOT NULL UNIQUE,
  nota DECIMAL(3,1) NOT NULL,
  comentario VARCHAR(255),
  data_avaliacao DATE NOT NULL DEFAULT (CURRENT_DATE),
  CONSTRAINT fk_avaliacoes_matriculas
    FOREIGN KEY (id_matricula) REFERENCES matriculas(id_matricula)
    ON DELETE CASCADE,
  CONSTRAINT chk_avaliacoes_nota
    CHECK (nota BETWEEN 0 AND 10)
);
