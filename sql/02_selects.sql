USE novamente_learning;

-- Lista cursos ativos com categoria e instrutor.
SELECT
  c.titulo AS curso,
  cat.nome AS categoria,
  i.nome AS instrutor,
  c.nivel,
  c.preco
FROM cursos c
INNER JOIN categorias cat ON cat.id_categoria = c.id_categoria
INNER JOIN instrutores i ON i.id_instrutor = c.id_instrutor
WHERE c.ativo = TRUE
ORDER BY c.preco DESC;

-- Mostra as matriculas de alunos ativos.
SELECT
  a.nome AS aluno,
  c.titulo AS curso,
  m.status,
  m.progresso_percentual,
  m.data_matricula
FROM matriculas m
INNER JOIN alunos a ON a.id_aluno = m.id_aluno
INNER JOIN cursos c ON c.id_curso = m.id_curso
WHERE a.ativo = TRUE
ORDER BY m.data_matricula DESC;

-- Busca cursos de tecnologia com carga horaria maior ou igual a 24 horas.
SELECT
  c.titulo,
  c.carga_horaria,
  c.nivel
FROM cursos c
INNER JOIN categorias cat ON cat.id_categoria = c.id_categoria
WHERE cat.nome = 'Tecnologia'
  AND c.carga_horaria >= 24
ORDER BY c.carga_horaria DESC;

-- Exibe os tres alunos com maior progresso em matriculas ativas.
SELECT
  a.nome AS aluno,
  c.titulo AS curso,
  m.progresso_percentual
FROM matriculas m
INNER JOIN alunos a ON a.id_aluno = m.id_aluno
INNER JOIN cursos c ON c.id_curso = m.id_curso
WHERE m.status = 'Ativa'
ORDER BY m.progresso_percentual DESC
LIMIT 3;

-- Calcula a media das avaliacoes por curso.
SELECT
  c.titulo AS curso,
  COUNT(av.id_avaliacao) AS total_avaliacoes,
  ROUND(AVG(av.nota), 2) AS media_nota
FROM cursos c
INNER JOIN matriculas m ON m.id_curso = c.id_curso
LEFT JOIN avaliacoes av ON av.id_matricula = m.id_matricula
GROUP BY c.id_curso, c.titulo
HAVING total_avaliacoes > 0
ORDER BY media_nota DESC;
