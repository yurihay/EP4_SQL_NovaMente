-- =============================================
-- 01_insert.sql
-- Inserts do projeto NovaMente Learning (EP4)
-- =============================================

USE novamente_learning;

-- ========== INSTRUTOR ==========
INSERT INTO INSTRUTOR VALUES
(1, 'Ana Souza', 'ana.souza@novamente.com', 'Data Science'),
(2, 'Bruno Lima', 'bruno.lima@novamente.com', 'Front-end'),
(3, 'Carlos Nogueira', 'carlos.nogueira@novamente.com', 'Banco de Dados');

-- ========== ALUNO ==========
INSERT INTO ALUNO VALUES
(1, 'João Silva', 'joao@email.com', '2025-03-01'),
(2, 'Maria Oliveira','maria@email.com','2025-03-02'),
(3, 'Yuri Hayashida','yuri@email.com','2025-03-03');

-- ========== CURSO ==========
INSERT INTO CURSO VALUES
(1, 1, 'Python Iniciante', 'Programação', 'Iniciante', 40),
(2, 2, 'HTML e CSS', 'Front-end', 'Iniciante', 30),
(3, 3, 'Banco de Dados', 'Tecnologia', 'Intermediário', 50);

-- ========== MODULO ==========
INSERT INTO MODULO VALUES
(1, 1, 'Fundamentos Python', 1),
(2, 2, 'HTML Básico', 1),
(3, 3, 'Modelagem de Dados', 1);

-- ========== AULA ==========
INSERT INTO AULA VALUES
(1, 1, 'Variáveis em Python', 1, 25),
(2, 1, 'IF/ELSE', 2, 30),
(3, 2, 'Estrutura HTML', 1, 20),
(4, 3, 'Conceitos de DER', 1, 40);

-- ========== QUIZ ==========
INSERT INTO QUIZ VALUES
(1, 2, 'Quiz de Condicionais', 5),
(2, 3, 'Quiz de HTML', 4),
(3, 4, 'Quiz de Modelagem', 5);

-- ========== MATRICULA ==========
INSERT INTO MATRICULA VALUES
(1, 1, 1, '2025-03-05', 'Ativa'),
(2, 2, 2, '2025-03-06', 'Ativa'),
(3, 3, 3, '2025-03-08', 'Ativa');

-- ========== RESPOSTA_QUIZ ==========
INSERT INTO RESPOSTA_QUIZ VALUES
(1, 1, 1, 8.0, '2025-03-11 10:00:00'),
(2, 2, 2, 7.0, '2025-03-12 09:00:00'),
(3, 3, 3, 9.0, '2025-03-13 20:00:00');

-- ========== MATERIAL ==========
INSERT INTO MATERIAL VALUES
(1, 1, 'PDF', 'link1', 'Material de variáveis'),
(2, 3, 'PDF', 'link2', 'Material de HTML');

-- ========== COMENTARIO ==========
INSERT INTO COMENTARIO VALUES
(1, 1, 1, '2025-03-11 11:00:00', 'Ótima aula!'),
(2, 2, 3, '2025-03-12 10:00:00', 'Gostei!');

-- ========== LOG_ACESSO ==========
INSERT INTO LOG_ACESSO VALUES
(1, 1, '2025-03-11 09:50:00', 'login', 'web'),
(2, 3, '2025-03-16 19:50:00', 'abrir_quiz', 'mobile');

-- ========== PREFERENCIA_ALUNO ==========
INSERT INTO PREFERENCIA_ALUNO VALUES
(1, 1, 'Programação', 5),
(2, 3, 'Banco de Dados', 5);

-- ========== RECOMENDACAO ==========
INSERT INTO RECOMENDACAO VALUES
(1, 1, 3, '2025-03-15', 'IA'),
(2, 2, 1, '2025-03-13', 'IA');
