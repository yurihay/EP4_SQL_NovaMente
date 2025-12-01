-- =============================================
-- 03_update_delete.sql
-- Comandos UPDATE e DELETE da NovaMente Learning
-- =============================================

USE novamente_learning;

-- ========== UPDATE ==========

-- 1) Atualizar status de matrícula
UPDATE MATRICULA
SET status = 'Concluída'
WHERE id_matricula = 1;

-- 2) Corrigir nota após revisão
UPDATE RESPOSTA_QUIZ
SET nota = 10
WHERE id_resposta = 3;

-- 3) Ajustar categoria de curso
UPDATE CURSO
SET categoria = 'Tecnologia Avançada'
WHERE id_curso = 1;

-- ========== DELETE ==========

-- 1) Remover comentário indesejado
DELETE FROM COMENTARIO
WHERE id_comentario = 2;

-- 2) Excluir recomendação antiga
DELETE FROM RECOMENDACAO
WHERE id_recomendacao = 2;

-- 3) Remover logs muito antigos
DELETE FROM LOG_ACESSO
WHERE data_hora < '2025-03-12 00:00:00';
