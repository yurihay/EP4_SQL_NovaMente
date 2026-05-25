USE novamente_learning;

SELECT 'alunos' AS tabela, COUNT(*) AS total FROM alunos
UNION ALL
SELECT 'instrutores', COUNT(*) FROM instrutores
UNION ALL
SELECT 'categorias', COUNT(*) FROM categorias
UNION ALL
SELECT 'cursos', COUNT(*) FROM cursos
UNION ALL
SELECT 'aulas', COUNT(*) FROM aulas
UNION ALL
SELECT 'matriculas', COUNT(*) FROM matriculas
UNION ALL
SELECT 'avaliacoes', COUNT(*) FROM avaliacoes;

SELECT
  c.titulo AS curso,
  COUNT(m.id_matricula) AS total_matriculas
FROM cursos c
LEFT JOIN matriculas m ON m.id_curso = c.id_curso
GROUP BY c.id_curso, c.titulo
ORDER BY total_matriculas DESC, c.titulo;
