-- =============================================
-- 02_select.sql
-- Consultas SQL do projeto NovaMente Learning
-- =============================================

USE novamente_learning;

-- 1) Lista alunos e seus cursos (JOIN + ORDER BY)
SELECT 
    a.nome AS aluno,
    c.titulo AS curso,
    m.data_matricula
FROM MATRICULA m
JOIN ALUNO a ON a.id_aluno = m.id_aluno
JOIN CURSO c ON c.id_curso = m.id_curso
ORDER BY a.nome;

-- 2) Notas dos quizzes (JOIN + ORDER BY)
SELECT
    a.nome AS aluno,
    q.titulo AS quiz,
    r.nota,
    r.data_resposta
FROM RESPOSTA_QUIZ r
JOIN ALUNO a ON a.id_aluno = r.id_aluno
JOIN QUIZ q ON q.id_quiz = r.id_quiz
ORDER BY r.data_resposta DESC;

-- 3) Aulas e seus materiais (LEFT JOIN)
SELECT
    au.titulo AS aula,
    ma.tipo AS material_tipo,
    ma.descricao
FROM AULA au
LEFT JOIN MATERIAL ma ON ma.id_aula = au.id_aula
ORDER BY au.id_aula;

-- 4) Recomendações feitas pela IA (JOIN + WHERE)
SELECT
    a.nome AS aluno,
    c.titulo AS curso_recomendado,
    r.data_recomendacao
FROM RECOMENDACAO r
JOIN ALUNO a ON a.id_aluno = r.id_aluno
JOIN CURSO c ON c.id_curso = r.id_curso
WHERE r.origem = 'IA'
ORDER BY r.data_recomendacao DESC;

-- 5) Cursos mais matriculados (GROUP BY + ORDER BY + LIMIT)
SELECT
    c.titulo AS curso,
    COUNT(m.id_matricula) AS total_matriculas
FROM CURSO c
LEFT JOIN MATRICULA m ON m.id_curso = c.id_curso
GROUP BY c.id_curso
ORDER BY total_matriculas DESC
LIMIT 3;
