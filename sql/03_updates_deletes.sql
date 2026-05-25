USE novamente_learning;

-- Atualiza o progresso de uma matricula ativa.
UPDATE matriculas
SET progresso_percentual = 80.00
WHERE id_aluno = 1
  AND id_curso = 1
  AND status = 'Ativa';

-- Marca uma matricula como concluida quando o progresso chega a 100%.
UPDATE matriculas
SET status = 'Concluida'
WHERE progresso_percentual = 100.00
  AND status <> 'Concluida';

-- Aplica desconto em cursos basicos ativos.
UPDATE cursos
SET preco = ROUND(preco * 0.90, 2)
WHERE nivel = 'Basico'
  AND ativo = TRUE;

-- Remove uma matricula cancelada sem avaliacao vinculada.
DELETE FROM matriculas
WHERE id_matricula = 6
  AND status = 'Cancelada'
  AND NOT EXISTS (
    SELECT 1
    FROM avaliacoes
    WHERE avaliacoes.id_matricula = matriculas.id_matricula
  );

-- Desativa aluno sem excluir seu historico.
UPDATE alunos
SET ativo = FALSE
WHERE email = 'diego.alves@email.com';
